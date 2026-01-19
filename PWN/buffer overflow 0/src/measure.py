import sys

# Tạo chuỗi pattern: AAAA BBBB CCCC ... ZZZZ
payload = b""
for i in range(65, 150): # ASCII từ 65 (A) đến 90 (Z)
    payload += bytes([i]) * 4

# Gửi ra ngoài
sys.stdout.buffer.write(payload)