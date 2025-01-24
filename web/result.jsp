<%-- 
    Document   : result
    Created on : Jan 24, 2025, 12:28:16 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kết quả</title>
    <link rel="stylesheet" href="styles.scss">
</head>
<body>
    <h1>Kết quả chi tiết khoản vay</h1>
    <table>
        <thead>
            <tr>
                <th>Kỳ</th>
                <th>Dư nợ đầu kỳ</th>
                <th>Trả gốc</th>
                <th>Trả lãi</th>
                <th>Tổng trả</th>
                <th>Dư nợ còn lại</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="detail" items="${details}">
                <tr>
                    <td>${detail[0]}</td>
                    <td>${detail[1]}</td>
                    <td>${detail[2]}</td>
                    <td>${detail[3]}</td>
                    <td>${detail[4]}</td>
                    <td>${detail[5]}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <p>Tổng số lãi phải trả: ${totalInterest}</p>
    <p>Tổng số tiền phải trả: ${totalPayment}</p>
</body>
</html>
