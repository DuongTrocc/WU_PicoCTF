# picoCTF 2022 - Includes

**Category** Web Exploitation

> Đề bài : Can you get the flag?
> Go to this website and see what you can discover.
> http://saturn.picoctf.net:52012/

Trang Web text cơ bản có nút button `Say hello`. Nhấn vào đó ta nhận được thông báo.

`This code is in a separate file!`

Mở `DevTools` kiểm tra source code.

Đây là file `style.css` : 

``` css
body {
  background-color: lightblue;
}

/*  picoCTF{1nclu51v17y_1of2_  */
```
Dòng comment ở cuối chính là phần đầu của `flag` mà ta cần tìm.

Đây là file `script.js` : 

``` js
function greetings()
{
  alert("This code is in a separate file!");
}

//  f7w_2of2_6edef411}

```
Dòng comment cuối cùng có lẽ là nửa sau của `flag`.

Đây là 1 bài easy nên ta có thể dễ dàng tìm thấy `flag` ngay trong source code.

**Flag:** picoCTF{1nclu51v17y_1of2_f7w_2of2_6edef411}