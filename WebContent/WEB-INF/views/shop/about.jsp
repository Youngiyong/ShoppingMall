<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>



<head>
   <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BUA About Us</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/ShoppingMall/shop/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/ShoppingMall/shop/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/ShoppingMall/shop/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/ShoppingMall/shop/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="/ShoppingMall/shop/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/ShoppingMall/shop/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/ShoppingMall/shop/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/ShoppingMall/shop/css/style.css" type="text/css">

<title>About us</title>
</head>


<body>

    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__option">
            <div class="offcanvas__links">
                <a href="#">SIGN IN</a>
                <a href="#">FAQs</a>
            </div>
        </div>
     
        <div class="offcanvas__nav__option">
            <a href="#" class="search-switch"><img src="/ShoppingMall/shop/img/icon/search.png" alt=""></a>
            <a href="#"><img src="/ShoppingMall/shop/img/icon/heart.png" alt=""></a>
            <a href="#"><img src="/ShoppingMall/shop/img/icon/cart.png" alt=""> <span>0</span></a>
            <div class="price">0원</div>
        </div>
        <div id="mobile-menu-wrap"></div>
       
    </div>
    
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-7">
                        <div class="header__top__left">
                            <p>Men's Wear</p>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-5">
                        <div class="header__top__right">
                            <div class="header__top__links">
                                <a href="/ShoppingMall/member/login.do">Sign in</a>
                                <a href="#">FAQs</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="header__logo">
                        <a href="/ShoppingMall/index.jsp"><img src="/ShoppingMall/shop/img/bua.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li class="active"><a href="/ShoppingMall/index.jsp">Home</a></li>
                            <li><a href="/ShoppingMall/shop/shop.do">Shop</a></li>
                            <li><a href="#">Pages</a>
                                <ul class="dropdown">
                                    <li><a href="/ShoppingMall/shop/about.do">About Us</a></li>
                                    <li><a href="/ShoppingMall/shop/shop-details.do">세부사항</a></li>
                                    <li><a href="/ShoppingMall/shop/shopping-cart.do">장바구니</a></li>
                                    <li><a href="/ShoppingMall/shop/checkout.do">결제하기</a></li>
                                    <li><a href="/ShoppingMall/board/getBoardList.do">게시판</a></li>
                                
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3 col-md-3">
                    <div class="header__nav__option">
                        <a href="#" class="search-switch"><img src="/ShoppingMall/shop/img/icon/search.png" alt=""></a>
                        <a href="#"><img src="/ShoppingMall/shop/img/icon/heart.png" alt=""></a>
                        <a href="#"><img src="/ShoppingMall/shop/img/icon/cart.png" alt=""> <span>0</span></a>
                        <div class="price">0원</div>
                    </div>
                </div>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </header>
    <!-- Header Section End -->



    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>About Us</h4>
                        <div class="breadcrumb__links">
                            <a href="/ShoppingMall/index.jsp">Home</a>
                            <span>About Us</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->


    <!-- Counter Section Begin -->
    <section class="counter spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="counter__item">
                        <div class="counter__item__number">
                            <h2 class="cn_num">9726</h2>
                        </div>
                        <span>일일<br />동시 접속 수</span>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="counter__item">
                        <div class="counter__item__number">
                            <h2 class="cn_num">392</h2>
                        </div>
                        <span>전국<br />가맹지점 수</span>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="counter__item">
                        <div class="counter__item__number">
                            <h2 class="cn_num">1980</h2>
                        </div>
                        <span>Since <br />Year</span>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="counter__item">
                        <div class="counter__item__number">
                            <h2 class="cn_num">100</h2>
                            <strong>%</strong>
                        </div>
                        <span>고객<br />만족도</span>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Counter Section End -->



    <!-- Client Section Begin -->
    <section class="clients spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <span>PartnerShip Brand</span>
                        <h2>with BUA</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                 <div class="col-lg-3 col-md-4 col-sm-4 col-6">
                     <a href="#" class="client__item"><img src="img/clients/logos.jpg" alt=""></a>
                 </div>
                 <div class="col-lg-3 col-md-4 col-sm-4 col-6">
                     <a href="#" class="client__item"><img src="img/clients/logos2.jpg" alt=""></a>
                 </div>       
                  <div class="col-lg-3 col-md-4 col-sm-4 col-6">
                     <a href="#" class="client__item"><img src="img/clients/logos3.jpg" alt=""></a>
                 </div>
				 <div class="col-lg-3 col-md-4 col-sm-4 col-6">
                     <a href="#" class="client__item"><img src="img/clients/logos4.jpg" alt=""></a>
                 </div>              
            </div>
        </div>
    </section>
    <!-- Client Section End -->



  <!-- Team Section Begin -->
    <section class="team spad" >
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <span>BUA</span>
                        <h2>Creaters</h2>
                    </div>
                </div>
            </div>
            <div class="row" >
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="team__item">
                        <img src="img/about/team-1.jpg" alt="">
                        <h4>Lee Jang Woo</h4>
                        <span>C.E.O(대표이사)</span>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="team__item">
                        <img src="img/about/team-2.jpg" alt="">
                        <h4>Min Jae Ho</h4>
                        <span>Fashion Designer(패션 디자이너)</span>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="team__item">
                        <img src="img/about/pinkbin.jpg" alt="">
                        <h4>Youn Ki Yong</h4>
                        <span>Programmer(프로그래머)</span>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="team__item">
                        <img src="img/about/team-4.jpg" alt="">
                        <h4>Kim Ji Won</h4>
                        <span>Supervisor(슈퍼바이저)</span>
                    </div>
                </div>
                  <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="team__item">
                        <img src="img/about/team-3.jpg" alt="">
                        <h4>Na Young Joong</h4>
                        <span>Staff(스태프)</span>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Team Section End -->

  




    <!-- About Section Begin -->
    <section class="about spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="about__pic">
                        <img src="img/about/about-us.jpg" alt="">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="about__item">
                        <h4>BUA (Since 1980)</h4>
                        <p>버려진 아이들(BUA) 이라는 이름으로 처음 작은 옷가게 에서부터 시작된 지금의 세계적인 쇼핑 브랜드. </p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="about__item">
                        <h4>Who We Do ?</h4>
					<p>자체적인 브랜드 BUA 에서 명품,악세서리,패션 등의 쇼핑을 위한 여러가지 서비스를 연구하고 있습니다.</p> 
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="about__item">
                        <h4>Why Choose Us</h4>
						<p>BUA는 세계최대 규모의 쇼핑몰이며, 고객서비스에 대한 최선의 노력으로 인정받아 지금 현재까지도 엄청난 사랑을 받고 있습니다. </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- About Section End -->


    <!-- Footer Section Begin -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__logo">
                            <a href="#"><img src="/ShoppingMall/shop/img/footer_bua.png" alt=""></a>
                        </div>
							 <p>BUA 스토어에서 판매되는 모든 브랜드 제품은 정식 제조 , 수입원을 통해 유통되는 100% 정품임을 보증하지 않습니다.</p>
                        <a href="#"><img src="/ShoppingMall/shop/img/payment.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
                    <div class="footer__widget">
                        <h6>Shopping</h6>
                        <ul>
                            <li><a href="#">Clothing Store</a></li>
                            <li><a href="#">Trending Shoes</a></li>
                            <li><a href="#">Accessories</a></li>
                            <li><a href="#">Sale</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6">
                    <div class="footer__widget">
                        <h6>Shopping</h6>
                        <ul>
                            <li><a href="#">Contact Us</a></li>
                            <li><a href="#">결제수단</a></li>
                            <li><a href="#">배송</a></li>
                            <li><a href="#">교환 & 환불</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1 col-md-6 col-sm-6">
                    <div class="footer__widget">
                        <h6>ABOUT</h6>
                        <div class="footer__newslatter">
                          	<p>주식회사 버아(BUA Co.Ltd)</p>
								<p>서울특별시 강남구 신사동 640-2 로빈명품관 지하 1층 
								사업자등록번호 : 123-45-67890 | 통신판매업:2020-서울가산-181818
								대표 :이장우 | 전체관리책임자 :윤기용(youn9354@naver.com) <p/>  
                            <form action="#">
                                <input type="text" placeholder="Your email">
                                <button type="submit"><span class="icon_mail_alt"></span></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="footer__copyright__text">
                        <p>Copyright ©
                            <script>
                                document.write(new Date().getFullYear());
                            </script>
                            FASHION WEB MAGJANG | LIFE STYLE SHIT SHOP WWW.BUA.COM <i class="fa fa-heart-o"
                            aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Search Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch">+</div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>