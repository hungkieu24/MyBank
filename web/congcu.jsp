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
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .header {
            display: flex;
            justify-content: space-between;
            border-bottom: 1px solid #ccc;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }
        .header a {
            text-decoration: none;
            color: #333;
            font-weight: bold;
            padding: 10px;
        }
        .header a.active {
            color: #d4af37;
            border-bottom: 2px solid #d4af37;
        }
        .title {
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .description {
            text-align: center;
            margin-bottom: 20px;
            color: #666;
        }
        .form-container {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }
        .form-container input {
            padding: 10px;
            margin-right: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .form-container button {
            padding: 10px 20px;
            background-color: #16e15e;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .result-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        .result-table th, .result-table td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }
        .result-table th {
            background-color: #f2f2f2;
        }
        .result-table td {
            background-color: #f9f9f9;
        }
        .result-table .highlight {
            color: #d9534f;
            font-weight: bold;
        }
        .formula {
            margin-top: 20px;
        }
        .formula p {
            margin: 0;
            color: #666;
        }
        .formula .highlight {
            color: #d9534f;
        }
        @media (max-width: 768px) {
            .container {
                width: 95%;
            }
            .form-container {
                flex-direction: column;
                align-items: center;
            }
            .form-container input, .form-container button {
                margin-bottom: 10px;
                width: 100%;
            }
        }
    </style>
    <body>
     <div class="container">
    <div class="header">
        <a href="#" class="active">LÃI SUẤT TIẾT KIỆM</a>
        <a href="#">LÃI VAY NGÂN HÀNG</a>
    </div>
    <div class="title">CÔNG CỤ TÍNH LÃI SUẤT TIẾT KIỆM NGÂN HÀNG</div>
    <div class="description">
        Công cụ tính lãi suất tiết kiệm ngân hàng của LuatVietnam giúp bạn dễ dàng biết được số tiền lãi trong tương lai. 
        Từ đó có thể so sánh các mức lãi suất ngân hàng, kỳ hạn gửi và đưa ra quyết định có lợi nhất cho mình.
    </div>
    <form action="congcu" method="post" class="form-container">
        <input type="number" id="amount" name="amount" placeholder="Số tiền gửi/vay (VNĐ)" required>
        <input type="number" step="0.01" id="rate" name="rate" placeholder="Lãi suất (%/năm)" required>
        <input type="number" id="months" name="months" placeholder="Kỳ hạn (tháng)" required>
        <button type="submit">THỰC HIỆN</button>
    </form>
    <table class="result-table">
        <tr>
            <th>Số tiền gửi/vay</th>
            <td>${amount} VND</td>
        </tr>
        <tr>
            <th>Tiền lãi 1 tháng</th>
            <td>${monthlyInterest} VND</td>
        </tr>
        <tr>
            <th>Tiền lãi ${months} tháng</th>
            <td>${totalInterest} VND</td>
        </tr>
        <tr>
            <th>Tổng số tiền nhận được khi đến hạn</th>
            <td class="highlight">${totalAmount} VND</td>
        </tr>
    </table>
</div>
<!--       <h2>Công cụ tính lãi suất tiết kiệm/ngân hàng</h2>
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
    <p>${result}</p>-->
    </body>
</html>
