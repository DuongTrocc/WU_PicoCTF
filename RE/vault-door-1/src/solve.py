import re

# Dán 32 dòng code Java vào giữa 3 dấu nháy kép
raw_code = """
password.charAt(0)  == 'd' &&
               password.charAt(29) == '8' &&
               password.charAt(4)  == 'r' &&
               password.charAt(2)  == '5' &&
               password.charAt(23) == 'r' &&
               password.charAt(3)  == 'c' &&
               password.charAt(17) == '4' &&
               password.charAt(1)  == '3' &&
               password.charAt(7)  == 'b' &&
               password.charAt(10) == '_' &&
               password.charAt(5)  == '4' &&
               password.charAt(9)  == '3' &&
               password.charAt(11) == 't' &&
               password.charAt(15) == 'c' &&
               password.charAt(8)  == 'l' &&
               password.charAt(12) == 'H' &&
               password.charAt(20) == 'c' &&
               password.charAt(14) == '_' &&
               password.charAt(6)  == 'm' &&
               password.charAt(24) == '5' &&
               password.charAt(18) == 'r' &&
               password.charAt(13) == '3' &&
               password.charAt(19) == '4' &&
               password.charAt(21) == 'T' &&
               password.charAt(16) == 'H' &&
               password.charAt(27) == '9' &&
               password.charAt(30) == 'd' &&
               password.charAt(25) == '_' &&
               password.charAt(22) == '3' &&
               password.charAt(28) == 'e' &&
               password.charAt(26) == '2' &&
               password.charAt(31) == '8';
"""

# Tìm tất cả các con số (index) và ký tự nằm trong dấu nháy đơn
matches = re.findall(r"charAt\((\d+)\)\s*==\s*'(.)'", raw_code)

# Tạo một danh sách gồm 32 khoảng trống
password = [''] * 32

# Lắp ráp từng ký tự vào đúng vị trí index
for index, char in matches:
    password[int(index)] = char

# Ghép lại và in kết quả
print("picoCTF{" + "".join(password) + "}")
