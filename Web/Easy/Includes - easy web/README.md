# picoCTF 2022 - Includes

**Category** Web Exploitation

> Description: Can you get the flag?
> Go to this website and see what you can discover.
> http://saturn.picoctf.net:52012/

Trang Web text cơ bản có nút button `Say hello`. Nhấn vào đó ta nhận được thông báo.

`This code is in a separate file!`

Thông báo này là một gợi ý quan trọng, kết hợp với tên bài là **Includes**, ta có thể suy đoán rằng logic xử lý và giao diện được tách ra thành các file riêng biệt (thường là `.js` và `.css`) và được nhúng vào file HTML chính.

Mở `DevTools` kiểm tra source code.

Đây là file `style.css` : 

``` css
body {
  background-color: lightblue;
}

/*  picoCTF{1nclu51v17y_1of2_  */
```
Dòng comment ở cuối chính là phần đầu của `flag`. => Part 1 : `picoCTF{1nclu51v17y_1of2_`

Đây là file `script.js` : 

``` js
function greetings()
{
  alert("This code is in a separate file!");
}

//  f7w_2of2_6edef411}

```
Đúng như dự đoán, dòng comment cuối cùng chứa nửa sau của `flag`. => Part 2 : `f7w_2of2_6edef411}`

Ghép 2 phần lại ta được `flag` hoàn chỉnh.

**Flag:** picoCTF{1nclu51v17y_1of2_f7w_2of2_6edef411}

>Trong thực tế, lập trình viên thường để lại các comment (ghi chú) trong code để tiện theo dõi. Nếu không xóa các comment này trước khi deploy lên môi trường production, kẻ tấn công có thể thu thập được các thông tin nhạy cảm hoặc logic hoạt động của hệ thống. Đây là một ví dụ cơ bản của lỗi Information Disclosure (Tiết lộ thông tin).