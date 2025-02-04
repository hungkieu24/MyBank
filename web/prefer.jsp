<%-- 
    Document   : prefer
    Created on : Feb 2, 2025, 11:31:56 PM
    Author     : hungk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <style>
   body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
        }
        .title {
            font-size: 24px;
            font-weight: bold;
            color: #333;
            margin-bottom: 10px;
        }
        .date {
            display: flex;
            align-items: center;
            color: #666;
            margin-bottom: 20px;
        }
        .date i {
            margin-right: 5px;
        }
        .content {
            font-size: 16px;
            color: #333;
            line-height: 1.5;
            margin-bottom: 20px;
        }
        .content a {
            color: #007bff;
            text-decoration: none;
        }
        .content a:hover {
            text-decoration: underline;
        }
        .highlight {
            font-weight: bold;
            color: #007bff;
        }
        .banner {
            text-align: center;
            margin-bottom: 20px;
        }
        .banner img {
            max-width: 100%;
            height: auto;
        }
        .offers {
            text-align: center;
            margin-bottom: 20px;
        }
        .offers img {
            max-width: 100%;
            height: auto;
        }
        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(100px, 1fr));
            gap: 10px;
        }
        .grid-item {
            background-color: #fff;
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }
        .grid-item img {
            max-width: 100%;
            height: auto;
            margin-bottom: 10px;
        }
        .grid-item p {
            margin: 0;
            font-size: 14px;
            color: #333;
        }
        .grid-item .discount {
            font-size: 16px;
            font-weight: bold;
            color: #007bff;
        }
  </style>
    <body>
        <div class="container">
   <div class="title">
    THẺ MB - CHI TIÊU GIẢM GIÁ HÀNG ĐẦU VIỆT NAM THÁNG 12
   </div>
   <div class="date">
    <i class="fas fa-calendar-alt">
    </i>
    <span>
     01.12.2024
    </span>
   </div>
   <div class="content">
    Biết tin gì chưa? Sở hữu thẻ MB là sở hữu ngay kho deal chi tiêu giảm giá siêu khủng!
   </div>
   <div class="content">
    Lưu ngay toàn bộ ưu đãi thẻ MB - chi tiêu giảm giá hàng đầu Việt Nam
    <a href="#">
     tại đây
    </a>
    <br/>
    Đặc biệt, bật mí cho chủ thẻ
    <span class="highlight">
     Top 30 ưu đãi nổi bật
    </span>
    cùng loạt deal giảm giá đến 50% và nhiều voucher tiền triệu khi chi tiêu mua sắm những thương hiệu uy tín nhất với thẻ MB:
   </div>
   <div class="banner">
    <img alt="Banner Image" height="100" src="https://storage.googleapis.com/a1aa/image/8EUAQyG0hZlbAHmezktr4WAWNZMCHw6Sfwio4fe-kiA.jpg" width="800"/>
   </div>
   <div class="offers">
    <img alt="Top 30 Ưu Đãi" height="200" src="https://storage.googleapis.com/a1aa/image/wyESDRmfTTyoZGx5qNA-fbyCNAUVt5EwX-8_8YhxUf0.jpg" width="800"/>
   </div>
    </body>
</html>
