# picoCTF 2025 - Cookie Monster Secret Recipe

**Category** Web Exploitaion

> Đề bài: Cookie Monster has hidden his top-secret cookie recipe somewhere on his website. As an aspiring cookie detective, your mission is to uncover this delectable secret. Can you outsmart Cookie Monster and find the hidden recipe?
>You can access the Cookie Monster here and good luck
> Link: http://verbal-sleep.picoctf.net:53631/

Trang web hiện ra 1 trang login cơ bản.

Thử nhập `test/test` vào ô `Username` và `Password`.
🙃 Access Denied!
Tuy nhiên tác sau khi nhấn `login` tác giả dẫn ta đến 1 trang web khác - nơi có gợi ý kiểm tra Cookies.
![alt text](images/image.png)

Vào `DevTools(F12)` -> `Application` -> `Cookies`.
Tìm thấy: `Name`  : `secret_recipe`
          `Value` : `cGljb0NURntjMDBrMWVfbTBuc3Rlcl9sMHZlc19jMDBraWVzX0E2RkEwN0Q4fQ%3D%3D`

Đây là 1 đoạn `Base64`, cần decode để tìm ra điều gì đang ẩn giấu trong `secret_recipe`.
Có thể decode bằng `CyberChef` hoặc `base64decode.org`.

🎉 **Kết quả Decode:**picoCTF{c00k1e_m0nster_l0ves_c00kies_A6FA07D8}.

**Flag:** picoCTF{c00k1e_m0nster_l0ves_c00kies_A6FA07D8}

