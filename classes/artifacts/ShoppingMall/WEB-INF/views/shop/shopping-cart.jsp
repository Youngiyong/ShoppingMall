<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ID: ${sessionScope.m_Id} 이름: ${sessionScope.m_Name}</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
    rel="stylesheet">
    <style>
    </style>
    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">

    <script type="text/javascript" src="/ShoppingMall/app/js/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="/ShoppingMall/shop/js/cart2.js"></script>

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
                <a href="#">Sign in</a>
                <a href="#">FAQs</a>
            </div>
            <div class="offcanvas__top__hover">
                <span>Usd <i class="arrow_carrot-down"></i></span>
                <ul>
                    <li>USD</li>
                    <li>EUR</li>
                    <li>USD</li>
                </ul>
            </div>
        </div>
        <div class="offcanvas__nav__option">
            <a href="#" class="search-switch"><img src="img/icon/search.png" alt=""></a>
            <a href="/ShoppingMall/shop/shopping-cart.do"><img src="img/icon/heart.png" alt=""></a>
            <a href="/ShoppingMall/shop/shopping-cart.do"><img class='cart_img'src="img/icon/cart.png" alt=""> <span>0</span></a>
            <div class="price">$0.00</div>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__text">
            <p>Free shipping, 30-day return or refund guarantee.</p>
        </div>
    </div>
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
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
                                <a href="/ShoppingMall/member/login.do">로그인</a>
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
                            <li><a href="/ShoppingMall/index.jsp">Home</a></li>
                            <li class="active"><a href="/ShoppingMall/shop/shop.do">Shop</a></li>
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
                        <h4>장바구니</h4>
                        <div class="breadcrumb__links">
                            <a href="./index.html">Home</a>
                            <a href="./shop.html">Shop</a>
                            <span>Cart</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shopping Cart Section Begin -->
    <section class="shopping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="shopping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th>상품명</th>
                                    <th>수량</th>
                                    <th>총 금액</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${list1}" var="list1" varStatus="status">
                            <tr>
                                    <td class="product__cart__item">
                                        <div class="product__cart__item__pic">
                                            <img style="width: 100px; height: 100px;" src="${list3[status.index]}" alt="">
                                        </div>
                                        <div class="product__cart__item__text">
                                            <h6 class="p_name">${list4[status.index].p_Name}</h6>
                                            <h5 class="p_count">${list1.P_COUNT}</h5>

                                        </div>
                                    </td>
                                    <td class="quantity__item">
                                        <div class="quantity">
                                            <div class="pro-qty-2">
                                                <input type="text" value="${list1.P_COUNT}">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="cart__price">${list4[status.index].p_Price}</td>
                                    <td class="cart__close"><i class="fa fa-close"></i></td>
                                </tr>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="continue__btn">

                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="continue__btn update__btn">

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">

                    </br>
                    </br>
                    </br>

                    <div class="cart__total">
                        <h6>　장바구니 총합 금액</h6>
                        <ul>
                            <c:forEach items="${list1}" var="list1" varStatus="status">
                            <li>　${list4[status.index].p_Name} <span>${list4[status.index].p_Price}원</span></li>
                            </c:forEach>
                            <hr>
                            <li>+　총합 <span id="total_price">50000원</span></li>
                        </ul>
                        <a href="#" class="primary-btn">결제 진행</a>
                    </div>


                </div>
            </div>
        </div>
    </section>
    <!-- Shopping Cart Section End -->

    <!-- Footer Section Begin -->
    <<!-- Footer Section Begin -->
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