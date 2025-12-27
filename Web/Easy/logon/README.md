# picoCTF 2019 - logon

**Category** Web Exploitation

## 1. Description

Đề bài :The factory is hiding things from all of its users.
Can you login as Joe and find what they've been looking at?

Link bài lab :http://fickle-tempest.picoctf.net:53187

## 2. Reconnaissance

Đây là giao diện ban đầu của trang web

![alt text](images/image.png)

Trang web hiện ra 1 trong login, điều đầu tiên nghĩ đến là lỗi SQL Injection.

Thử nhập `admin ' -- ` vào ô username và nhập bất kỳ vào ô password.

**Kết quả:**

Login thành công!

## 3. Vulnerability Analysis

Tuy login thành công nhưng hiện ra dòng chữ **No flag for you**.

Có lẽ login được nhưng chưa phải là admin.

## 4. Exploitation

Mở Devtools kiểm tra Cookies.

![alt text](images/image2.png)

Ở dòng `admin = false` sửa lại thành `admin = True` và reload lại trang (F5).

**Kết quả:**
![alt text](images/image3.png)

## 5. Result

**Flag:**picoCTF{th3_c0nsp1r4cy_l1v3s_4d184b0d}
