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

        <title>TIMI - Công cụ tính lãi suất</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="HandheldFriendly" content="true">
        <meta name="author" content="bslthemes" />

        <!-- switzer font css -->
        <link rel="stylesheet" href="fonts/css/switzer.css" type="text/css" media="all">
        <!-- font awesome css -->
        <link rel="stylesheet" href="fonts/css/font-awesome.min.css" type="text/css" media="all">
        <!-- bootstrap grid css -->
        <link rel="stylesheet" href="css/plugins/bootstrap-grid.css" type="text/css" media="all">
        <!-- swiper css -->
        <link rel="stylesheet" href="css/plugins/swiper.min.css" type="text/css" media="all">
        <!-- magnific popup -->
        <link rel="stylesheet" href="css/plugins/magnific-popup.css" type="text/css" media="all">
        <!-- plax css -->
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all">

        <!-- Favicon -->
        <link rel="shortcut icon" href="img/favicon.png" type="image/x-icon">
        <link rel="icon" href="img/favicon.png" type="image/x-icon">
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"/>
    </head>
    <style>
        body {
            font-family: sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
            width: 100vw;
        }

        .cal-container {
            width: calc(100% - 200px);
            margin: 130px auto 20px;
            background-color: #fff;
            padding: 20px;
            border-radius: 16px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .cal-content {
            display: flex;
            gap: 50px;
        }

        .title {
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .description {
            text-align: center;
            font-size: 18px;
            margin-bottom: 20px;
        }

        .tabs {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }
        .tab {
            text-decoration: none;
            color: #333;
            font-weight: bold;
            padding: 10px;
        }
        .tab.active {
            color: #008000;
            border-bottom: 2px solid #008000;

        }
        .form-group {
            display: flex;
            align-items: center;

        }

        .form-group + .form-group {
            margin-top: 30px;
        }

        .form-group__label {
            width: 150px;
            font-weight: bold;
            margin-right: 10px;
        }

        .form-group__input-wrap {
            display: flex;
            border: 1px solid #ccc;
            padding: 5px;
            width: 100%;
        }

        .form-group__input {
            border: none;
            outline: none;
            font-size: 18px;
        }

        .sub-text-input {
            color: #ccc;
            margin-left: auto;
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
            margin-top: 50px;
        }

        .cal-form {
            width: 50%;
        }

        .result-table {
            width: 50%;
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
         .red{
            color: red;
        }
        .congthuc{
            font-weight: bold;
            color: black;
        }
    </style>
    <body>
        <div id="smooth-wrapper" class="mil-wrapper">

            <!-- scroll progress -->
            <div class="mil-progress-track">
                <div class="mil-progress"></div>
            </div>
            <!-- scroll progress end -->

            <!-- back to top -->
            <div class="progress-wrap active-progress"></div>

            <!-- top panel end -->
            <div class="mil-top-panel" id="mil-top-panel">
                <div class="container">
                    <a href="index.jsp" class="mil-logo">
                        <img src="img/logo1.png" alt="Plax" width="200">
                    </a>
                    <nav class="mil-top-menu">
                        <ul>
                            <li class="mil-has-children">
                                <a href="#.">Home</a>
                                <ul>
                                    <li><a href="index.jsp">Mở tài khoản</a></li>
                                    <li><a href="home-2.jsp">Gửi tiết kiệm</a></li>
                                    <li><a href="home-3.jsp">Type 3</a></li>
                                    <li><a href="home-4.jsp">Type 4</a></li>
                                    <li><a href="home-5.jsp">Type 5</a></li>

                                </ul>
                            </li>
                            <li class="mil-active">
                                <a href="about.jsp">About</a>
                            </li>
                            <li>
                                <a href="services.jsp">Services</a>
                            </li>
                            <li class="mil-has-children">
                                <a href="#.">Blog</a>
                                <ul>
                                    <li><a href="blog.jsp">Blog list</a></li>
                                    <li><a href="publication.jsp">Blog details</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="contact.jsp">Contact</a>
                            </li>
                            <li class="mil-has-children">
                                <a href="#.">Pages</a>
                                <ul>
                                    <li><a href="career.jsp">Career</a></li>
                                    <li><a href="career-details.jsp">Career details</a></li>
                                    <li><a href="price.jsp">Pricing</a></li>
                                    <li><a href="register.jsp">Register</a></li>

                                </ul>
                            </li>
                        </ul>
                    </nav>
                    <div class="mil-menu-buttons">
                        <a href="login.jsp" class="mil-btn mil-sm">Log in</a>
                        <div class="mil-menu-btn">
                            <span></span>
                        </div>
                    </div>
                </div>
            </div>

            <!-- top panel end -->

            <!-- content -->
            <div id="smooth-content">
                <div class="cal-container">
                    <a href="about.jsp"><i class="fa-solid fa-arrow-left-long"></i></a>
                    <div class="tabs">
                        <a href="calSaving.jsp" class="tab active">LÃI SUẤT TIẾT KIỆM</a>
                        <a href="calLoan.jsp" class="tab">LÃI VAY NGÂN HÀNG</a>
                    </div>
                    <div class="title">CÔNG CỤ TÍNH LÃI SUẤT VAY NGÂN HÀNG</div>
                    <div class="description"><br/>
                        Công cụ tính lãi suất vay ngân hàng của LuatVietnam giúp bạn dự tính được số tiền lãi phải trả định kỳ, 
                        tổng gốc và lãi trong từng thời điểm. Từ đó dễ dàng hoạch định tài chính tốt nhất cho mình.<br/><br/>
                    </div>
                      <c:if test="${not empty error}">
                            <div class="error-message" style="color: red; font-weight: bold;">
                                ${error}
                            </div>
                        </c:if>
                    <div class="cal-content">
                        
                      
                        <form action="congcu" method="post" class="cal-form">
                            <div class="form-group">
                                <label for="loanAmount" class="form-group__label">Số tiền gửi</label>
                                <div class="form-group__input-wrap">
                                    <input type="text" class="form-group__input" id="amount" name="amount" value="${amount}" required>
                                    <span class="sub-text-input">VNĐ</span>
                                </div>
                            </div>
                            <div class="form-group" >
                                <label for="loanRate" class="form-group__label">Lãi suất</label>
                                <div class="form-group__input-wrap">
                                    <input type="number" class="form-group__input" step="0.01" id="rate" name="rate" value="${rate}" required>
                                    <span class="sub-text-input">%/năm</span>
                                </div>
                            </div>
                            <div class="form-group" >
                                <label for="loanMonths" class="form-group__label">Kỳ hạn</label>
                                <div class="form-group__input-wrap">
                                    <input type="text" class="form-group__input" value="${requestScope.months}" id="months" name="months" required>
                                    <span class="sub-text-input">Tháng</span>
                                </div>
                            </div>
                            <button type="submit" class="btn-submit">THỰC HIỆN</button>
                        </form>
                        <table class="result-table" >
                            <tr>
                                <th>Số tiền gửi</th>
                                <td>${amount} VNĐ</td>
                            </tr>
                            <tr>
                                <th>Tiền lãi 1 tháng</th>
                                <td>${monthlyInterest} VNĐ</td>
                            </tr>
                            <tr>
                                <th>Tổng số tiền nhận được khi đến hạn</th>
                                <td style="color: red;">${totalAmount} VNĐ</td>
                            </tr>
                        </table>
                       
                    </div>
                            <br/>
                            <div class="congthuc">Công thức tính lãi suất tiết kiệm có kỳ hạn:</div><br/><!-- comment -->
                        <div class="red">Số tiền lãi = Số tiền gửi x lãi suất (%năm)/12 x số tháng gửi.</div> <br/>

                        Ví dụ:<br/>

                        Gửi tiết kiệm 30.000.000 đồng với kỳ hạn 12 tháng tại ngân hàng có mức lãi suất 6,8%/năm, thì cách tính lãi suất ngân hàng cho số tiền tiết kiệm trong trường hợp này như sau:<br/>

                        * Lãi suất hàng tháng là 30.000.000 x 6,8/100/12 x 1 = 170.000 đồng<br/>

                        * Lãi suất sau 12 tháng gửi là 30.000.000 x 6,8/100/12 x 12 = 2.040.000 đồng<br/>
                </div>
                <!-- footer -->
                <footer class="mil-p-160-0 footer" id="footer">
                    <div class="container">
                        <div class="row mil-footer-top">
                            <div class="col-xl-3">
                                <a href="#." class=" mil-footer-logo mil-mb-60">
                                    <img src="img/logo1.png" alt="Plax" width="150">
                                </a>
                            </div>
                            <div class="col-xl-3 mil-mb-60">
                                <h6 class="mil-mb-60">Usefull Links</h6>
                                <ul class="mil-footer-list">
                                    <li class="mil-text-m mil-soft mil-mb-15">
                                        <a href="index.jsp">Home</a>
                                    </li>
                                    <li class="mil-text-m mil-soft mil-mb-15">
                                        <a href="about.jsp">About Us</a>
                                    </li>
                                    <li class="mil-text-m mil-soft mil-mb-15">
                                        <a href="contact.jsp">Contact Us</a>
                                    </li>
                                    <li class="mil-text-m mil-soft mil-mb-15">
                                        <a href="services.jsp">Services</a>
                                    </li>
                                    <li class="mil-text-m mil-soft mil-mb-15">
                                        <a href="price.jsp">Pricing</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-xl-3 mil-mb-60">
                                <h6 class="mil-mb-60">Help</h6>
                                <ul class="mil-footer-list">
                                    <li class="mil-text-m mil-soft mil-mb-15">
                                        999 Rue du Cherche-Midi, 7755500666 Paris, <br>France
                                    </li>
                                    <li class="mil-text-m mil-soft mil-mb-15">
                                        +001 (808) 555-0111
                                    </li>
                                    <li class="mil-text-m mil-soft mil-mb-15">
                                        support@plax.network
                                    </li>
                                </ul>
                            </div>
                            <div class="col-xl-3 mil-mb-80">
                                <h6 class="mil-mb-60">Newsletter</h6>
                                <p class="mil-text-xs mil-soft mil-mb-15">Subscribe to get the latest news form us</p>
                                <form class="mil-subscripe-form-footer">
                                    <input class="mil-input" type="email" placeholder="Email">
                                    <button type="submit"><i class="far fa-envelope-open mil-dark"></i></button>
                                    <div class="mil-checkbox-frame mil-mt-15">
                                        <div class="mil-checkbox">
                                            <input type="checkbox" id="checkbox" checked>
                                            <label for="checkbox"></label>
                                        </div>
                                        <p class="mil-text-xs mil-soft">Subscribe to get the latest news</p>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="mil-footer-bottom">
                            <div class="row">
                                <div class="col-xl-6">
                                    <p class="mil-text-s mil-soft">© 2024 Plax Finance & Fintech Design</p>
                                </div>
                                <div class="col-xl-6">
                                    <button type="button" class=" mil-btn mil-ssm btn btn-fade footer--toggle--btn" onclick="toggleFooter()">
                                        <span class="text-expand">Thu gọn chân trang</span>
                                        <span class="text-collapsed" style="display: none">Mở rộng chân trang</span>
                                        <span class="icon-arrow-right">

                                        </span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>

                <!-- footer end -->

            </div>
            <!-- content end -->
        </div>
        <!-- wrapper end -->

        <!-- jquery js -->
        <script src="js/plugins/jquery.min.js"></script>

        <!-- swiper css -->
        <script src="js/plugins/swiper.min.js"></script>
        <!-- gsap js -->
        <script src="js/plugins/gsap.min.js"></script>
        <!-- scroll smoother -->
        <script src="js/plugins/ScrollSmoother.min.js"></script>
        <!-- scroll trigger js -->
        <script src="js/plugins/ScrollTrigger.min.js"></script>
        <!-- scroll to js -->
        <script src="js/plugins/ScrollTo.min.js"></script>
        <!-- magnific -->
        <script src="js/plugins/magnific-popup.js"></script>
        <!-- plax js -->
        <script src="js/main.js"></script>

        <script src="./js/scripts.js"></script>
    </body>
</html>
