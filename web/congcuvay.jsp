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
<style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }
        .container {
            width: 100%;
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            font-size: 20px;
            text-align: center;
            margin-bottom: 20px;
        }
        .tabs {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }
        .tabs a {
            text-decoration: none;
            color: #000;
            padding: 10px 20px;
            border-bottom: 2px solid transparent;
        }
        .tabs a.active {
            color: #c00;
            border-bottom: 2px solid #c00;
        }
        .form-group {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }
        .form-group label {
            flex: 1;
            margin-right: 10px;
        }
        .form-group input {
            flex: 2;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .form-group .radio-group {
            display: flex;
            align-items: center;
        }
        .form-group .radio-group input {
            margin-right: 5px;
        }
        .form-group .radio-group label {
            margin-right: 20px;
        }
        .btn-submit {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #16e15e;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }
        .result {
            margin-top: 20px;
            padding: 10px;
            background-color: #f9f9f9;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .result p {
            margin: 5px 0;
        }
        .result p span {
            float: right;
        }
        .details {
            margin-top: 20px;
        }
        .details table {
            width: 100%;
            border-collapse: collapse;
        }
        .details table, .details th, .details td {
            border: 1px solid #ccc;
        }
        .details th, .details td {
            padding: 10px;
            text-align: center;
        }
        .details th {
            background-color: #f0f0f0;
        }
        .details .total {
            font-weight: bold;
        }
        .note {
            margin-top: 10px;
            font-size: 12px;
            color: #666;
        }
    </style>
<body>
<!--    <h2>Công cụ tính lãi suất vay ngân hàng</h2>
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
    <p>${loanResult}</p>-->
<div class="container">
    <div class="tabs">
        <div class="tab">LÃI SUẤT TIẾT KIỆM</div>
        <div class="tab active">LÃI VAY NGÂN HÀNG</div>
    </div>
    <div class="title">CÔNG CỤ TÍNH LÃI SUẤT VAY NGÂN HÀNG</div>
    <div class="description"><br/>
        Công cụ tính lãi suất vay ngân hàng của LuatVietnam giúp bạn dự tính được số tiền lãi phải trả định kỳ, 
        tổng gốc và lãi trong từng thời điểm. Từ đó dễ dàng hoạch định tài chính tốt nhất cho mình.<br/><br/>
    </div>
    <form action="congcu2" method="post">
        <div class="form-group">
            <label for="loanAmount">Số tiền vay</label>
            <input type="number" id="loanAmount" name="loanAmount" required>
            <span>VNĐ</span>
        </div>
        <div class="form-group">
            <label for="loanRate">Lãi suất vay</label>
            <input type="number" step="0.01" id="loanRate" name="loanRate" required>
            <span>%/năm</span>
        </div>
        <div class="form-group">
            <label for="loanMonths">Kỳ hạn vay</label>
            <input type="number" id="loanMonths" name="loanMonths" required>
            <span>Tháng</span>
        </div>
        <div class="form-group">
            <label>Phương pháp tính:</label>
            <div class="radio-group">
                <input type="radio" id="reducingBalance" name="calculationMethod" value="reducing" checked>
                <label for="reducingBalance" class="radio-label">Trả trên dư nợ giảm dần</label>
                <input type="radio" id="initialBalance" name="calculationMethod" value="initial">
                <label for="initialBalance" class="radio-label">Trả trên dư nợ ban đầu</label>
            </div>
        </div>
        <button type="submit" class="btn-submit">THỰC HIỆN</button>
    </form><br/>
    <table class="result-table">
        <tr>
            <th>Số tiền vay</th>
            <td>${loanAmount} VNĐ</td>
        </tr>
        <tr>
            <th>Số tiền lãi phải trả</th>
            <td>${loanResult} </td>
        </tr>
        <tr>
            <th>Tổng số gốc và lãi phải trả</th>
            <td style="color: red;">${total}</td>
        </tr>
    </table><br/>
    <div class="details-title">DIỄN GIẢI CHI TIẾT CÁCH TÍNH LÃI SUẤT VAY NGÂN HÀNG:</div>
    <br/>
    <div>
        Cách 1: Cách tính lãi suất vay theo số dư nợ gốc
    <p>Với cách tính lãi suất vay theo số dư nợ gốc, tiền lãi của mỗi kỳ trả lãi sẽ bằng nhau trong toàn bộ quá trình vay và được tính theo số tiền gốc ban đầu.

    <br/>Tiền lãi hàng tháng = Dư nợ gốc x Lãi suất vay/Thời gian vay<br/>

Ví dụ:<br/>

A vay 300 triệu đồng trong 12 tháng với mức lãi suất là 12%/năm.<br/>

Số tiền gốc phải trả ngân hàng hàng tháng là: 300 triệu/12 tháng = 25.000.000 đồng<br/>

Số lãi phải trả ngân hàng hàng tháng là: (300 triệu x 12%)/12 tháng = 3.000.000 đồng<br/>

Số tiền phải trả hàng tháng là 28.000.000 đồng </p><br/>
    </div>
    <div>
        Cách 2: Cách tính lãi suất vay theo số dư nợ giảm dần<br/>
        <p>
            Trường hợp tính lãi suất vay theo số dư nợ giảm dần thì số dư nợ dựa trên số tiền thực tế còn nợ sau khi đã trừ đi phần nợ gốc người vay đã trả trong những tháng trước đó. Số dư nợ giảm dần thì tiền lãi mà người vay phải trả cũng giảm dần.<br/>

Công thức tính lãi suất theo dư nợ giảm dần cụ thể như sau:<br/>

- Tiền gốc hàng tháng = Số tiền vay/số tháng vay<br/>

- Tiền lãi tháng đầu = Số tiền vay x Lãi suất vay theo tháng<br/>

- Tiền lãi các tháng tiếp theo = Số tiền gốc còn lại x Lãi suất vay<br/><br/>

Ví dụ:<br/>

B vay 300 triệu đồng thời hạn trong 12 tháng với mức lãi suất 12%/năm<br/>

Tiền gốc trả hàng tháng = 300triệu/12 = 25.000.000 đồng<br/>

Tiền lãi tháng đầu = (300 triệu x 12%)/12 = 3.000.000 đồng. <br/>Tổng số tiền phải trả tháng đầu là 25 triệu + 3 triệu = 28.000.000 đồng.<br/>

Tiền lãi tháng thứ 2 = (300 triệu - 25 triệu) x 12%/12 = 2.750.000 đồng. Tổng tiền phải trả tháng thứ 2 là 25 triệu + 2.750.000 = 27.750.000 đồng.<br/>

Tiền lãi tháng thứ 3 = (275 triệu - 25 triệu) x 12%/12 = 2.500.000 đồng. Tổng tiền phải trả tháng thứ 3 là 25 triệu + 2,5 triệu = 27.500.000 đồng.<br/>

Các tháng tiếp theo tính tương tự như vậy cho đến khi hết nợ.<br/>
        </p>  
    </div>
   
</div>
</body>
</html>
