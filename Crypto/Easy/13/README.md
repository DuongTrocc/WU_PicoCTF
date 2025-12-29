# picoCTF 2019 - 13

**Category:** Cryptography
**Tags:** ROT13, Caesar Cipher, Python, Substitution Cipher

## 1. Description

> Cryptography can be easy, do you know what ROT13 is?
> `cvpbPGS{abg_gbb_onq_bs_n_ceboyrz}`

## 2. Vulnerability Analysis

- **Dữ kiện bài:** Tiêu đề là "13" và gợi ý trong đề bài nhắc trực tiếp đến **ROT13**.
- **Phân tích Ciphertext:** Chuỗi `cvpbPGS` có định dạng tương tự `picoCTF` (flag format).
  - Ký tự `c` (vị trí 3) + 13 = `p` (vị trí 16).
  - Ký tự `v` (vị trí 22) + 13 = `i` (vị trí 9 - quay vòng bảng chữ cái).
- **Kết luận:** Đây là mã hóa thay thế đơn giản (Substitution Cipher) dạng ROT13. ROT13 là một trường hợp đặc biệt của mã Caesar với bước nhảy $k=13$. Đặc điểm của nó là hàm nghịch đảo của chính nó: $ROT13(ROT13(x)) = x$.

## 3. Exploitation

Tôi sử dụng 3 cách khác nhau để giải quyết bài toán này.

### Cách 1: Sử dụng công cụ trực tuyến (CyberChef)

Sử dụng CyberChef với recipe **ROT13** để giải mã nhanh chuỗi ký tự.

![alt text](images/image1.png)

### Cách 2: Sử dụng dòng lệnh Linux (Terminal)

Trong môi trường Linux, tôi sử dụng lệnh `tr` (translate) để dịch chuyển các ký tự:

```bash
echo 'cvpbPGS{abg_gbb_onq_bs_n_ceboyrz}' | tr 'A-Za-z' 'N-ZA-Mn-za-m'
```

### Cách 3: Sử dụng Python Script

Tôi nhờ AI viết 1 đoạn script nhỏ để giải mã

```python
import codecs

ciphertext = "cvpbPGS{abg_gbb_onq_bs_n_ceboyrz}"

# ROT13 là một codec được hỗ trợ sẵn trong Python

flag = codecs.decode(ciphertext, 'rot_13')

print(f"Flag: {flag}")
```

## 4. Result

**Flag:** picoCTF{not_too_bad_of_a_problem}
