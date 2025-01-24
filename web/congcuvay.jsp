<%-- 
    Document   : congcu2
    Created on : Jan 24, 2025, 10:49:03 AM
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
    <h2>Công cụ tính lãi suất vay ngân hàng</h2>
    <form action="congcu2" method="post">
        <label for="loanAmount">Số tiền vay (VNĐ):</label>
        <input type="number" id="loanAmount" name="loanAmount" required><br><br>

        <label for="loanRate">Lãi suất vay (%/năm):</label>
        <input type="number" step="0.01" id="loanRate" name="loanRate" required><br><br>

        <label for="loanMonths">Kỳ hạn vay (tháng):</label>
        <input type="number" id="loanMonths" name="loanMonths" required><br><br>

        <label>Phương pháp tính:</label><br>
        <input type="radio" id="reducingBalance" name="calculationMethod" value="reducing" checked>
        <label for="reducingBalance">Trả trên dư nợ giảm dần</label><br>
        <input type="radio" id="initialBalance" name="calculationMethod" value="initial">
        <label for="initialBalance">Trả trên dư nợ ban đầu</label><br><br>

        <button type="submit">Thực hiện</button>
    </form>

    <hr>
    <h3>Kết quả:</h3>
    <p>${loanResult}</p>
</body>
</html>
