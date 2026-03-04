# Đọc nội dung file 'enc' (đảm bảo file enc nằm cùng thư mục với script)
with open('enc', 'r') as f:
    encoded_string = f.read()

flag = ""
for char in encoded_string:
    val = ord(char)
    flag += chr(val >> 8)      # Trích xuất ký tự thứ nhất (A)
    flag += chr(val & 0xFF)    # Trích xuất ký tự thứ hai (B)

print(flag)

