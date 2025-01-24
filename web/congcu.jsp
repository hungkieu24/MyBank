<%-- 
    Document   : congcu
    Created on : Jan 24, 2025, 10:13:43 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta charset="UTF-8">
    <title>Công cụ tính lãi suất</title>
        <link rel="stylesheet" type="text/css" href="style.css">

    </head>
    <body>
       <h2>Công cụ tính lãi suất tiết kiệm/ngân hàng</h2>
    <form action="congcu" method="post">
        <label for="amount">Số tiền gửi/vay (VNĐ):</label>
        <input type="number" id="amount" name="amount" required><br><br>

        <label for="rate">Lãi suất (%/năm):</label>
        <input type="number" step="0.01" id="rate" name="rate" required><br><br>

        <label for="months">Kỳ hạn (tháng):</label>
        <input type="number" id="months" name="months" required><br><br>

        <button type="submit">Thực hiện</button>
    </form>

    <hr>
    <h3>Kết quả:</h3>
    <p>${result}</p>
    </body>
</html>
