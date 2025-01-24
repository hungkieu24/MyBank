<%-- 
    Document   : tinhvay
    Created on : Jan 24, 2025, 12:25:07 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Công cụ tính lãi suất vay</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>Công cụ tính lãi suất vay ngân hàng</h1>
    <form action="tinhvay" method="post">
        <label for="loanAmount">Số tiền vay (VND):</label>
        <input type="number" id="loanAmount" name="loanAmount" required>
        <label for="interestRate">Lãi suất (%/năm):</label>
        <input type="number" step="0.01" id="interestRate" name="interestRate" required>
        <label for="loanTerm">Kỳ hạn vay (tháng):</label>
        <input type="number" id="loanTerm" name="loanTerm" required>
        <label for="calculationMethod">Phương pháp tính:</label>
        <select id="calculationMethod" name="calculationMethod">
            <option value="reducing">Trả trên dư nợ giảm dần</option>
            <option value="fixed">Trả trên dư nợ ban đầu</option>
        </select>
        <button type="submit">Thực hiện</button>
    </form>
</body>
</html>
