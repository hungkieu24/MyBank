<%-- 
    Document   : blog
    Created on : Jan 20, 2025, 12:36:15 AM
    Author     : ADMIN
--%>

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

</head>

<body>


    <!-- wrapper -->
    <div id="smooth-wrapper" class="mil-wrapper">

        <!-- preloader -->
       <div class="mil-preloader">
           
        </div>
        <!-- preloader end -->

        <!-- scroll progress -->
        <div class="mil-progress-track">
            <div class="mil-progress"></div>
        </div>
        <!-- scroll progress end -->

        <!-- back to top -->
        <div class="progress-wrap active-progress"></div>

        <!-- top panel end -->
        <div class="mil-top-panel">
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
                        <li>
                            <a href="about.jsp">About</a>
                        </li>
                        <li>
                            <a href="services.jsp">Services</a>
                        </li>
                        <li class="mil-has-children mil-active">
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
                    <a href="register.jsp" class="mil-btn mil-sm">Log in</a>
                    <div class="mil-menu-btn">
                        <span></span>
                    </div>
                </div>
            </div>
        </div>
        <!-- top panel end -->

        <!-- content -->
        <div id="smooth-content">

            <!-- banner -->
            <div class="mil-banner mil-banner-inner mil-dissolve">
                <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-xl-8">
                            <div class="mil-banner-text mil-text-center">
                             
                                <h2 >Your Source of Financial Information</h2>
                                <ul class="mil-breadcrumbs mil-center">
                                    <li><a href="index.jsp">Home</a></li>
                                    <li><a href="blog.jsp">Blog</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- banner end -->

            <!-- blog list -->
            <div class="mil-blog-list mil-p-0-160">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-4 col-md-6">
                            <a href="publication.jsp" class="mil-blog-card mil-mb-30 mil-up">
                                <div class="mil-card-cover">
                                    <img src="img/inner-pages/blog/1.png" alt="cover" class="mil-scale-img" data-value-1="1" data-value-2="1.2">
                                </div>
                                <div class="mil-descr">
                                    <p class="mil-text-xs mil-accent mil-mb-15">Financial Advice</p>
                                    <h4>How to Send Money Safely</h4>
                                </div>
                            </a>
                        </div>
                        <div class="col-xl-4 col-md-6">
                            <a href="publication.jsp" class="mil-blog-card mil-mb-30 mil-up">
                                <div class="mil-card-cover">
                                    <img src="img/inner-pages/blog/2.png" alt="cover" class="mil-scale-img" data-value-1="1" data-value-2="1.2">
                                </div>
                                <div class="mil-descr">
                                    <p class="mil-text-xs mil-accent mil-mb-15">Personal Finance</p>
                                    <h4>The Benefits of Using Virtual Cards</h4>
                                </div>
                            </a>
                        </div>
                        <div class="col-xl-4 col-md-6">
                            <a href="publication.jsp" class="mil-blog-card mil-mb-30 mil-up">
                                <div class="mil-card-cover">
                                    <img src="img/inner-pages/blog/3.png" alt="cover" class="mil-scale-img" data-value-1="1" data-value-2="1.2">
                                </div>
                                <div class="mil-descr">
                                    <p class="mil-text-xs mil-accent mil-mb-15">Business Payments</p>
                                    <h4>How to Optimize Business Payments</h4>
                                </div>
                            </a>
                        </div>
                        <div class="col-xl-4 col-md-6">
                            <a href="publication.jsp" class="mil-blog-card mil-mb-30 mil-up">
                                <div class="mil-card-cover">
                                    <img src="img/inner-pages/blog/4.png" alt="cover" class="mil-scale-img" data-value-1="1" data-value-2="1.2">
                                </div>
                                <div class="mil-descr">
                                    <p class="mil-text-xs mil-accent mil-mb-15">Financial Inclusion</p>
                                    <h4>The Importance of Financial Inclusion in the world</h4>
                                </div>
                            </a>
                        </div>
                        <div class="col-xl-4 col-md-6">
                            <a href="publication.jsp" class="mil-blog-card mil-mb-30 mil-up">
                                <div class="mil-card-cover">
                                    <img src="img/inner-pages/blog/5.png" alt="cover" class="mil-scale-img" data-value-1="1" data-value-2="1.2">
                                </div>
                                <div class="mil-descr">
                                    <p class="mil-text-xs mil-accent mil-mb-15">Product Updates</p>
                                    <h4>New Features in Plax Enterprise: What Can You Expect?</h4>
                                </div>
                            </a>
                        </div>
                        <div class="col-xl-4 col-md-6">
                            <a href="publication.jsp" class="mil-blog-card mil-mb-30 mil-up">
                                <div class="mil-card-cover">
                                    <img src="img/inner-pages/blog/6.png" alt="cover" class="mil-scale-img" data-value-1="1" data-value-2="1.2">
                                </div>
                                <div class="mil-descr">
                                    <p class="mil-text-xs mil-accent mil-mb-15">Savings Tips</p>
                                    <h4>Tips to Save on International Transactions</h4>
                                </div>
                            </a>
                        </div>
                        <div class="col-xl-4 col-md-6">
                            <a href="publication.jsp" class="mil-blog-card mil-mb-30 mil-up">
                                <div class="mil-card-cover">
                                    <img src="img/inner-pages/blog/7.png" alt="cover" class="mil-scale-img" data-value-1="1" data-value-2="1.2">
                                </div>
                                <div class="mil-descr">
                                    <p class="mil-text-xs mil-accent mil-mb-15">Financial Advice</p>
                                    <h4>How to Send Money Safely</h4>
                                </div>
                            </a>
                        </div>
                        <div class="col-xl-4 col-md-6">
                            <a href="publication.jsp" class="mil-blog-card mil-mb-30 mil-up">
                                <div class="mil-card-cover">
                                    <img src="img/inner-pages/blog/8.png" alt="cover" class="mil-scale-img" data-value-1="1" data-value-2="1.2">
                                </div>
                                <div class="mil-descr">
                                    <p class="mil-text-xs mil-accent mil-mb-15">Personal Finance</p>
                                    <h4>The Benefits of Using Virtual Cards</h4>
                                </div>
                            </a>
                        </div>
                        <div class="col-xl-4 col-md-6">
                            <a href="publication.jsp" class="mil-blog-card mil-mb-30 mil-up">
                                <div class="mil-card-cover">
                                    <img src="img/inner-pages/blog/9.png" alt="cover" class="mil-scale-img" data-value-1="1" data-value-2="1.2">
                                </div>
                                <div class="mil-descr">
                                    <p class="mil-text-xs mil-accent mil-mb-15">Business Payments</p>
                                    <h4>How to Optimize Business Payments</h4>
                                </div>
                            </a>
                        </div>
                        <div class="col-xl-4 col-md-6">
                            <a href="publication.jsp" class="mil-blog-card mil-mb-30 mil-up">
                                <div class="mil-card-cover">
                                    <img src="img/inner-pages/blog/10.png" alt="cover" class="mil-scale-img" data-value-1="1" data-value-2="1.2">
                                </div>
                                <div class="mil-descr">
                                    <p class="mil-text-xs mil-accent mil-mb-15">Financial Inclusion</p>
                                    <h4>The Importance of Financial Inclusion in the world</h4>
                                </div>
                            </a>
                        </div>
                        <div class="col-xl-4 col-md-6">
                            <a href="publication.jsp" class="mil-blog-card mil-mb-30 mil-up">
                                <div class="mil-card-cover">
                                    <img src="img/inner-pages/blog/11.png" alt="cover" class="mil-scale-img" data-value-1="1" data-value-2="1.2">
                                </div>
                                <div class="mil-descr">
                                    <p class="mil-text-xs mil-accent mil-mb-15">Product Updates</p>
                                    <h4>New Features in Plax Enterprise: What Can You Expect?</h4>
                                </div>
                            </a>
                        </div>
                        <div class="col-xl-4 col-md-6">
                            <a href="publication.jsp" class="mil-blog-card mil-mb-30 mil-up">
                                <div class="mil-card-cover">
                                    <img src="img/inner-pages/blog/12.png" alt="cover" class="mil-scale-img" data-value-1="1" data-value-2="1.2">
                                </div>
                                <div class="mil-descr">
                                    <p class="mil-text-xs mil-accent mil-mb-15">Savings Tips</p>
                                    <h4>Tips to Save on International Transactions</h4>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="mil-text-center mil-mt-30 mil-up">
                        <a href="#" class="mil-btn mil-m mil-add-arrow">Loads more publications</a>
                    </div>
                </div>
            </div>
            <!-- blog list end -->

            <!-- footer -->
            <footer class="mil-footer-with-bg mil-p-160-0">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3">
                            <a href="#." class="mil-footer-logo mil-mb-60">
                                <img src="img/logo-2.png" alt="Plax" width="28" height="32">
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
                                <p class="mil-text-s mil-text-right mil-sm-text-left mil-soft">Developed by <a href="https://bslthemes.com" target="blank">bslthemes</a></p>
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

</body>
</html>