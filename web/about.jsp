<%-- 
    Document   : about
    Created on : Jan 20, 2025, 12:34:47 AM
    Author     : ADMIN
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>

        <title>TIMI - Finance</title>
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

        <<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"/>
    </head>
    <body>


        <!-- wrapper -->
        <div id="smooth-wrapper" class="mil-wrapper">

            <!--preloader--> 
            <!--            <div class="mil-preloader">
            
                        </div>-->
            <!-- preloader end -->

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
                <!-- Menu -->
                <div class="menu">
                    <div class="container">
                        <nav class="row row-cols-2">
                            <div class="col">
                                <div class="menu-list">
                                    <ul class="menu-item">
                                        <li class="menu-label">
                                            <a href="service.jsp">Dịch vụ</a>
                                        </li>
                                        <li class="menu-label">
                                            Công cụ
                                            <ul class="sub-menu-item">
                                                <li>

                                                    <a class="sub-menu-link" href="calSaving.jsp">Lãi suất tiết kiệm</a>
                                                </li>
                                                <li>
                                                    <a class="sub-menu-link" href="calLoan.jsp">Lãi vay ngân hàng</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="menu-label">
                                            Ưu đãi
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col">
                                <form action="#!" class="menu-form__search">
                                    <input type="text" name="search_value" class="menu-form__search-input"/>
                                    <div class="mil-menu-buttons">
                                        <input type="submit" class="mil-btn mil-ssm" value="Search" />
                                    </div>
                                </form>
                            </div>
                        </nav>
                    </div>
                </div>
                <!-- Menu end -->

                <!-- banner -->
                <div class="about-banner mil-banner mil-banner-inner mil-dissolve">
                    <div class="container">
                        <div class="row align-items-center justify-content-center">
                            <div class="col-xl-8">
                                <div class="mil-banner-text mil-text-center">

                                    <h2>More than a Platform, a Financial Revolution</h2>
                                    <ul class="mil-breadcrumbs mil-center">
                                        <li><a href="index.jsp">Home</a></li>
                                        <li><a href="about.jsp">About us</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- banner end -->

                <!-- about content -->
                <div class="mil-features mil-p-0-80 about-section">
                    <div class="container">
                        <div class="about-introduction js-tabs">
                            <ul class="about-introduction__list">
                                <li class="about-introduction__item about-introduction__item--current">
                                    Tầm nhìn & Sứ mệnh
                                </li>
                                <li class="about-introduction__item ">
                                    Giá trị cốt lõi
                                </li>
                                <li class="about-introduction__item">
                                    Bản sắc văn hóa
                                </li>
                            </ul>

                            <div class="about-introduction__contents">
                                <div class="about-introduction__content about-introduction__content--current">
                                    <h3 class="about-section__title">
                                        Tầm nhìn & Sứ mệnh
                                    </h3>
                                    <p class="about-section__desc">
                                        Ngân hàng số 1 tại Việt Nam, một trong 100 ngân hàng lớn nhất khu vực Châu Á, một trong 300 tập đoàn tài chính ngân hàng lớn nhất thế giới, một trong 1000 doanh nghiệp niêm yết lớn nhất toàn cầu, đóng góp lớn vào sự phát triển bền vững của Việt Nam
                                    </p>
                                    <div class="pagi"> 
                                        <div class="container1"></div>
                                        <div class="pagination"></div>

                                    </div>
                                </div>  
                                <div class="about-introduction__content">
                                    <h3 class="about-section__title">
                                        Giá trị cốt lõi
                                    </h3>
                                </div>  
                                <div class="about-introduction__content">
                                    <h3 class="about-section__title">
                                        Bản sắc văn hóa
                                    </h3>
                                </div>  
                            </div>

                        </div>
                    </div>
                </div>
                <!-- about content end -->

                <!-- facts -->
                <div class="mil-facts mil-p-0-130">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-4 mil-sm-text-center mil-mb-30 mil-up">
                                <p class="h1 mil-display mil-mb-15"><span class="mil-accent mil-counter" data-number="7">7</span><span class="mil-pale">M</span></p>
                                <h5>Registered Users</h5>
                            </div>
                            <div class="col-xl-4 mil-sm-text-center mil-mb-30 mil-up">
                                <p class="h1 mil-display mil-mb-15"><span class="mil-accent mil-counter" data-number="1.6">1.6</span><span class="mil-pale">M</span></p>
                                <h5>Regular Users</h5>
                            </div>
                            <div class="col-xl-4 mil-sm-text-center mil-mb-30 mil-up">
                                <p class="h1 mil-display mil-mb-15"><span class="mil-accent mil-counter" data-number="170">170</span><span class="mil-pale">+</span></p>
                                <h5>Countries with our coverage</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- facts end -->

                <!-- about - history -->
                <div class="mil-cta mil-up">
                    <div class="container">
                        <div class="mil-out-frame about-history">
                            <div class="row justify-content-center mil-text-center">
                                <div class="col-xl-8 ">
                                    <h2 class="about-section__title">Lịch sử phát triển</h2>
                                </div>
                            </div>
                            <div class="about-introduction js-tabs">
                                <ul class="about-introduction__list">
                                    <li class="about-introduction__item about-introduction__item--current">
                                        Quá trình hình thành và phát triển
                                    </li>
                                    <li class="about-introduction__item ">
                                        Các cột mốc quan trọng
                                    </li>
                                </ul>

                                <div class="about-introduction__contents">
                                    <div class="about-introduction__content about-introduction__content--current">
                                        <p class="about-introduction__desc">
                                            60 năm qua, Vietcombank đã có những đóng góp quan trọng cho sự nghiệp đấu tranh thống nhất đất nước, xây dựng chủ nghĩa xã hội ở miền Bắc; tham gia khắc phục, tháo gỡ khó khăn trong thời kỳ bao cấp; là ngân hàng tiên phong trong giai đoạn đổi mới, hội nhập và phát triển. Đặc biệt, 10 năm gần đây đánh dấu sự chuyển mình, bứt phá đầy ngoạn mục của Vietcombank với sự tăng trưởng ấn tượng về quy mô, chất lượng và hiệu quả kinh doanh, thiết lập đỉnh cao cùng những thành công tiếp nối, mở ra vận hội lớn trong giai đoạn phát triển kế tiếp, đóng góp cho sự thịnh vượng chung của Việt Nam.
                                        </p>
                                        <ul class="about-introduction__more">
                                            <li class="about-introduction__more-item">
                                                Ngân hàng Ngoại thương Việt Nam trước đây, nay là Ngân hàng TMCP Ngoại thương Việt Nam (Vietcombank) được thành lập và chính thức đi vào hoạt động ngày 01/04/1963 với tổ chức tiền thân là Sở Quản lý Ngoại hối Trung ương (thuộc Ngân hàng Quốc gia Việt Nam).
                                            </li>
                                            <li class="about-introduction__more-item">
                                                Là ngân hàng thương mại nhà nước đầu tiên được Chính phủ lựa chọn thực hiện thí điểm cổ phần hóa, Vietcombank chính thức hoạt động với tư cách là một ngân hàng thương mại cổ phần vào ngày 02/06/2008 sau khi thực hiện thành công kế hoạch cổ phần hóa thông qua việc phát hành cổ phiếu lần đầu ra công chúng. Ngày 30/6/2009, cổ phiếu Vietcombank (mã chứng khoán VCB) chính thức được niêm yết tại Sở Giao dịch chứng khoán TP.HCM.
                                            </li>
                                        </ul>
                                        <button type="button" class="about-history__btn-more mil-btn mil-ssm mil-empty history--toggle--btn" onclick="toggleHistory()">
                                            <span class="text-collapsed" style="display: none">Thu gọn</span>
                                            <span class="text-expand" >Xem thêm</span>

                                            <span class="icon-arrow-right">
                                            </span>
                                        </button>
                                    </div>  
                                    <div class="about-introduction__content">
                                        <div class="about-timeline js-tabs">
                                            <ul class="about-timeline__num-list">
                                                <li class="about-timeline__num about-timeline__num--current">
                                                    04/2023
                                                </li>
                                                <li class="about-timeline__num ">
                                                    06/2023
                                                </li>
                                                <li class="about-timeline__num">
                                                    12/2023
                                                </li>
                                                <li class="about-timeline__num ">
                                                    03/2024
                                                </li>
                                                <li class="about-timeline__num">
                                                    07/2024
                                                </li>
                                                <li class="about-timeline__num ">
                                                    11/2024
                                                </li>
                                                <li class="about-timeline__num">
                                                    01/2025
                                                </li>

                                            </ul>
                                            <div class="about-timeline__content about-timeline__content--current">
                                                <h3 class="about-timeline__heading">TIMIBANK được thành lập và chính thức đi vào hoạt động</h3>
                                                <p class="about-timeline__desc">  Tổ chức tiền thân là Sở Quản lý Ngoại hối Trung ương, trực thuộc Ngân hàng Quốc gia Việt Nam.</p>
                                            </div>

                                            <div class="about-timeline__content ">
                                                <h3 class="about-timeline__heading">Cổ phiếu của TIMIBANK (mã chứng khoán: TM)</h3>
                                                <p class="about-timeline__desc">Được niêm yết trên Sở Giao dịch Chứng khoán TP.Hà Nội (HNX), đánh dấu sự gia nhập của TIMIBANK vào thị trường chứng khoán Việt Nam.</p>
                                            </div>
                                            <div class="about-timeline__content">
                                                <h3 class="about-timeline__heading"> TIMIBANK ký kết thỏa thuận hợp tác chiến lược</h3>
                                                <p class="about-timeline__desc"> Hợp tác chiến lược với Visa và Mastercard, mở rộng mạng lưới thanh toán và phát triển các sản phẩm thẻ tín dụng ưu việt, giúp khách hàng tiếp cận các dịch vụ tài chính hiện đại theo chuẩn quốc tế.</p>
                                            </div>
                                            <div class="about-timeline__content ">
                                                <h3 class="about-timeline__heading">TIMIBANK cán mốc quan trọng</h3>
                                                <p class="about-timeline__desc"> TIMIBANK cán mốc 1 triệu khách hàng cá nhân và 10.000 doanh nghiệp sử dụng dịch vụ, khẳng định tốc độ tăng trưởng ấn tượng và sự tin tưởng của khách hàng chỉ sau chưa đầy một năm hoạt động dưới mô hình ngân hàng thương mại cổ phần.</p>
                                            </div>
                                            <div class="about-timeline__content">
                                                <h3 class="about-timeline__heading"> TIMIBANK ra mắt nền tảng ngân hàng số</h3>
                                                <p class="about-timeline__desc"> TIMIBANK ra mắt nền tảng ngân hàng số tích hợp AI mang tên "TIMISMART", cung cấp dịch vụ tài chính thông minh, tối ưu hóa trải nghiệm cá nhân hóa cho khách hàng trên toàn quốc, đánh dấu bước tiến lớn trong chiến lược chuyển đổi số.</p>
                                            </div>
                                            <div class="about-timeline__content ">
                                                <h3 class="about-timeline__heading">TIMIBANK chính thức mở rộng hoạt động quốc tế</h3>
                                                <p class="about-timeline__desc">TIMIBANK chính thức mở rộng hoạt động quốc tế với việc khai trương chi nhánh đầu tiên tại Singapore, khẳng định vị thế là ngân hàng Việt Nam tiên phong trên thị trường tài chính khu vực Đông Nam Á.</p>
                                            </div>
                                            <div class="about-timeline__content">
                                                <h3 class="about-timeline__heading">TIMIBANK ra mắt Quỹ đầu tư TIMIFUND</h3>
                                                <p class="about-timeline__desc">Cung cấp các giải pháp đầu tư đa dạng từ cổ phiếu, trái phiếu đến quỹ mở, giúp khách hàng cá nhân và doanh nghiệp tối ưu hóa nguồn vốn, khẳng định vị thế tiên phong trong lĩnh vực tài chính - đầu tư tại Việt Nam.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- call to action end -->

                <!-- features -->
                <div class="mil-features mil-p-160-80">
                    <div class="container">
                        <div class="row flex-sm-row-reverse justify-content-between align-items-center">
                            <div class="col-xl-6 mil-mb-80">
                                <h2 class="mil-mb-30 mil-up">Our Values are foundations of Trust</h2>
                                <p class="mil-text-m mil-soft mil-mb-60 mil-up">Our values, from transparency to accountability, are the foundation of our organizational culture and reflect our unwavering.</p>
                                <ul class="mil-list-2 mil-type-2">
                                    <li>
                                        <div class="mil-up">
                                            <h5 class="mil-mb-15">Absolute Transparency:</h5>
                                            <p class="mil-text-m mil-soft">Discover how transparency is ingrained in our culture, providing our users with clarity and confidence in every transaction.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="mil-up">
                                            <h5 class="mil-mb-15">Commitment to Safety:</h5>
                                            <p class="mil-text-m mil-soft">Explore our unwavering commitment to security, ensuring every transaction is conducted with the highest standards of protection.</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-xl-5 mil-mb-80">
                                <div class="mil-image-frame mil-up">
                                    <img src="img/inner-pages/2.png" alt="image" class="mil-scale-img" data-value-1="1" data-value-2="1.2">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- features end -->

                <!-- team -->
                <div class="mil-cta mil-up">
                    <div class="container">
                        <div class="mil-out-frame mil-visible mil-image mil-p-160-130">
                            <div class="row justify-content-center mil-text-center">
                                <div class="col-xl-8 mil-mb-80-adaptive-30">
                                    <h2 class="mil-light mil-up">Meet Those Who Make Plax Possible</h2>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-3 col-md-6 col-sm-6">
                                    <div class="mil-team-card mil-mb-30 mil-up">
                                        <div class="mil-portrait mil-mb-30">
                                            <img src="img/inner-pages/team/1.png" alt="portrait">
                                        </div>
                                        <h5 class="mil-light mil-mb-15">Isabella Haugen</h5>
                                        <p class="mil-text-xs mil-soft">CEO & Founder</p>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-md-6 col-sm-6">
                                    <div class="mil-team-card mil-mb-30 mil-up">
                                        <div class="mil-portrait mil-mb-30">
                                            <img src="img/inner-pages/team/2.png" alt="portrait">
                                        </div>
                                        <h5 class="mil-light mil-mb-15">Alexandr Dahl</h5>
                                        <p class="mil-text-xs mil-soft">Chief Technology Officer (CTO)</p>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-md-6 col-sm-6">
                                    <div class="mil-team-card mil-mb-30 mil-up">
                                        <div class="mil-portrait mil-mb-30">
                                            <img src="img/inner-pages/team/3.png" alt="portrait">
                                        </div>
                                        <h5 class="mil-light mil-mb-15">Lucia Knutsen</h5>
                                        <p class="mil-text-xs mil-soft">Director of Operations (COO)</p>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-md-6 col-sm-6">
                                    <div class="mil-team-card mil-mb-30 mil-up">
                                        <div class="mil-portrait mil-mb-30">
                                            <img src="img/inner-pages/team/4.png" alt="portrait">
                                        </div>
                                        <h5 class="mil-light mil-mb-15">Carlos Martinez</h5>
                                        <p class="mil-text-xs mil-soft">Chief Information Security Officer (CISO)</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- team -->

                <!-- quote -->
                <div class="mil-quote mil-p-160-130">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-xl-10">
                                <h2 class="mil-mb-30">"At Plax, transparency is not just a promise; It is the cornerstone of our relationship with you. We believe that trust is built with clear policies and coherent actions."</h2>
                                <p class="mil-text-m mil-soft mil-mb-60">- Plax Team</p>
                                <div class="row">
                                    <div class="col-xl-6">
                                        <ul class="mil-list-2 mil-type-2 mil-mb-30">
                                            <li>
                                                <div class="mil-up">
                                                    <h5 class="mil-mb-15">Privacy policies</h5>
                                                    <p class="mil-text-m mil-soft">Your privacy is our priority. We never share your information with third parties without your express consent.</p>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-xl-6">
                                        <ul class="mil-list-2 mil-type-2 mil-mb-30">
                                            <li>
                                                <div class="mil-up">
                                                    <h5 class="mil-mb-15">Data protection</h5>
                                                    <p class="mil-text-m mil-soft">We are committed to protecting your personal and financial data with the highest security measures</p>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- quote end -->

                <!-- call to action -->
                <div class="mil-cta mil-up">
                    <div class="container">
                        <div class="mil-out-frame mil-p-160-160" style="background-image: url(img/home-3/5.png)">
                            <div class="row justify-content-between align-items-center">
                                <div class="col-xl-7 mil-sm-text-center">
                                    <h2 class="mil-light mil-mb-30 mil-up">Discover the freedom <br>of Total Financial Control</h2>
                                    <p class="mil-text-m mil-mb-60 mil-dark-soft mil-up">Join Plax and take the first step towards a more <br> balanced and hassle-free financial life.</p>
                                    <div class="mil-buttons-frame mil-up">
                                        <a href="#." class="mil-btn mil-md">App Store</a>
                                        <a href="#." class="mil-btn mil-border mil-md">Google Play</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br/><br/>
                <!-- feedback -->
                <div class="mil-menu-buttons container">
                    <a href="#" class="mil-btn mil-sm">Đánh giá về TIMIBANK</a>
                    <div class="mil-menu-btn">
                        <span></span>
                    </div>



                    <!-- Form tìm feedback theo ID -->
                    <div class="about-feedback">
                        <h3 class="about-feedback__label">Find Feedback by ID: </h3>
                        <form class="form-control" action="feedback" method="post">
                            <div class="form-control__flex">
                                <input class="form-control__input input--small " type="text" name="id" id="id" required placeholder="Feedback ID"/>
                                <button class="mil-btn mil-sm" type="submit">Search</button>
                            </div>
                        </form>
                    </div>

                    <!-- Form tìm feedback theo ngày -->
                    <div class="about-feedback">
                        <h3 class="about-feedback__label">Find Feedback by Date: </h3>
                        <form class="form-control" action="feedback" method="post">
                            <div class="form-control__flex">
                                <input class="form-control__input input--small " type="date" name="date" id="date" required/>
                                <button class="mil-btn mil-sm" type="submit">Search</button>
                            </div>
                        </form>
                    </div>

                    <!-- Hiển thị danh sách feedback -->

                    <div class="about-feedback">
                        <h3 class="about-feedback__label">Feedback List</h3>
                        <div class="about-feedback__table-wrapper">
                            <table border="1" class="about-feedback__table">
                                <thead class="about-feedback__table-head">
                                    <tr >
                                        <th>ID Feedback</th>
                                        <th>ID Customer</th>
                                        <th>Message</th>
                                        <th>Response</th>
                                        <th>Status</th>
                                        <th>Date</th>
                                    </tr>
                                </thead>
                                <tbody class="about-feedback__table-body">
                                    <c:forEach items="${list}" var="c">
                                        <tr>
                                            <td>${c.getFeedbackID()}</td>
                                            <td>${c.getCustomerID()}</td>
                                            <td>${c.getMessage()}</td>
                                            <td>${c.getResponse()}</td>
                                            <td>${c.isStatus() == true ? 'Done' : 'Not'}</td>
                                            <td><fmt:formatDate value="${c.getCreatedAt()}" pattern="yyyy/MM/dd" /></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- feedback -->

                <!-- call to action end -->

                <!-- footer -->
                <footer class="mil-p-160-0 footer" id="footer">
                    <div class="container">
                        <div class="row mil-footer-top">
                            <div class="col-xl-2">
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
                            <!--                            <div class="col-xl-3 mil-mb-80">
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
                                                        </div>-->
                            <!--  gửi gmail -->
                            <div class="col-xl-4 mil-mb-80">
                                <h6 class="mil-mb-60">Newsletter</h6>
                                <p class="mil-text-xs mil-soft mil-mb-15">Subscribe to get the latest news from us</p>
                                <form action="showfb" method="post" class="mil-subscripe-form-footer">
                                    <!-- Email Input -->
                                    <div class="mb-3">
                                        <input class="form-control form-control__input mil-input" type="email" placeholder="Email" name="email" required>
                                    </div>
                                    <!-- Tiêu đề Input -->
                                    <div class="mb-3">
                                        <input  class="form-control form-control__input mil-input" type="text" placeholder="Tiêu đề" name="tieude" required>
                                    </div>
                                    <!-- Nội dung Input -->
                                    <div class="mb-3">
                                        <textarea class="form-control form-control__textarea" rows="3" placeholder="Nội dung" name="noidung" required></textarea>                                    </div>
                                    <!-- Submit Button -->
                                    <button type="submit" class="form-control__btn btn btn-dark">
                                        <i class="far fa-envelope-open mil-dark"></i> Gửi
                                    </button>
                                    <!-- Checkbox -->
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
                                    <button type="button" class=" mil-btn mil-ssm footer--toggle--btn" onclick="toggleFooter()">
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
