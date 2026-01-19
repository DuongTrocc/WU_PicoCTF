# 🚩 PicoCTF 2019: Buffer Overflow 0

**Category:** Binary Exploitation
**Level:** Medium (Thực tế: Easy)
**Date:** 2026-01-19

---

## 1. Trinh sát (Reconnaissance)

Bài này cung cấp cho ta một file thực thi (`vuln`) và mã nguồn C (`vuln.c`).
Sau khi tải về và đọc code, mình nhận thấy cấu trúc chương trình như sau:

* Chương trình nhận input từ người dùng thông qua hàm `gets()` (hoặc tương đương) và đưa vào biến global `buf1`.
* Biến `buf1` có kích thước được cấp phát là **[...]** bytes.
* Sau đó, hàm `vuln()` được gọi. Tại đây, chương trình sử dụng hàm `strcpy` để copy dữ liệu từ `buf1` sang một biến cục bộ tên là `buf2`.
* Vấn đề nằm ở chỗ: `buf2` chỉ có kích thước **[...]** bytes.

> **Nhận định:** Hàm `strcpy` không kiểm tra độ dài dữ liệu nguồn. Nếu ta nhập input dài hơn kích thước của `buf2`, dữ liệu sẽ bị ghi tràn ra ngoài vùng nhớ được cấp phát cho `buf2` trên Stack.

## 2. Phân tích Lỗ hổng (Vulnerability Analysis)

Đây là lỗi **Stack Buffer Overflow** kinh điển.

Khi `buf2` bị ghi tràn, dữ liệu dư thừa sẽ ghi đè lên các giá trị quan trọng nằm liền kề trên Stack Frame (như *Saved EBP* và *Return Address*). Việc ghi đè này sẽ làm hỏng cấu trúc Stack, dẫn đến việc chương trình bị Crash (Segmentation Fault) khi hàm cố gắng quay trở về (return).

Tuy nhiên, điều đặc biệt của bài này nằm ở hàm xử lý tín hiệu (Signal Handler).
Trong hàm `main`, mình thấy dòng code đăng ký signal:
`signal(SIGSEGV, [...]);`

Điều này có nghĩa là:
1.  Bình thường: Khi chương trình bị lỗi bộ nhớ (SIGSEGV) -> Chương trình tắt ngay lập tức.
2.  Ở bài này: Khi bị lỗi SIGSEGV -> Chương trình sẽ nhảy vào hàm **`[...]`** để xử lý.

Khi mình xem nội dung hàm handler này, mình thấy nó thực hiện lệnh:
**`[...]`**

-> **Chiến thuật:** Mục tiêu của chúng ta không phải là điều khiển dòng thực thi phức tạp (như ROP chain), mà chỉ đơn giản là **làm cho chương trình bị Crash**. Khi Crash, hàm handler sẽ tự động in ra Flag.

## 3. Khai thác (Exploitation)

Mình đã viết một script Python nhỏ để fuzzing (gửi dữ liệu độ dài lớn) nhằm kích hoạt lỗi SIGSEGV.

**Script mô phỏng (`measure.py`):**

```python
import sys

# Tạo chuỗi pattern: AAAA BBBB CCCC ... ZZZZ
# Mục đích: Gửi input dài hơn bộ nhớ đệm để gây tràn
payload = b""
for i in range(65, 150): # ASCII từ 65 (A) đến 90 (Z)...
    payload += bytes([i]) * 4

# Gửi payload ra stdout
sys.stdout.buffer.write(payload)
```

### Cách chạy:
```bash
python3 measure.py | ./vuln
```
**Kết quả**: Khi input đủ lớn (vượt quá giới hạn stack frame của vuln), chương trình bị Crash, kích hoạt signal handler và in ra flag:

`picoCTF{ov3rfl0ws_ar3nt_that_bad_ef01832d}`