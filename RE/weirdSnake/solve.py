# 1. Dữ liệu đã trích xuất từ Bytecode
input_list = [4, 54, 41, 0, 112, 32, 25, 49, 33, 3, 0, 0, 57, 32, 108, 23, 48, 4, 9, 70, 7, 110, 36, 8, 108, 7, 49, 10, 4, 86, 43, 102, 126, 92, 0, 16, 58, 41, 89, 78]

# 2. Xây dựng Key
key_str = 't_Jo3'
key_list = [ord(char) for char in key_str]

# 3. Mở rộng Key bằng chiều dài input
while len(key_list) < len(input_list):
    key_list.extend(key_list)

# 4. Giải mã bằng XOR và in ra chuỗi cờ
result = [a ^ b for a, b in zip(input_list, key_list)]
result_text = ''.join(map(chr, result))

print("Flag của bạn là:", result_text)
