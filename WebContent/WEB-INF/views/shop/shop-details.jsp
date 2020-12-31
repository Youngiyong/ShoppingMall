<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BUA-FashionMall</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/additional.css" type="text/css">
   
    
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
        </div>
        <div class="offcanvas__nav__option">
            <a href="#" class="search-switch"><img src="img/icon/search.png" alt=""></a>
            <a href="#"><img src="img/icon/heart.png" alt=""></a>
            <a href="#"><img src="img/icon/cart.png" alt=""> <span>0</span></a>
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
                                <!-- 로그인 start-->
                            <c:set var="data" value="null" />
                        
                              <c:choose>
                             	 <c:when test="${empty sessionScope.m_Id }"> 
                              	  <a href="/ShoppingMall/member/login.do">Sign in</a>
                             	 </c:when>
                             	 
                             	 <c:otherwise>  
                                <a href="#">${sessionScope.m_Name} 님</a>
                                <a href="/ShoppingMall/member/logout.do">log out</a>
                              	</c:otherwise>
                              </c:choose>
                                <a href="/ShoppingMall/shop/faq.do">FAQs</a>
                            <!-- 로그인 end -->                            </div>
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

    <!-- Shop Details Section Begin -->
    <section class="shop-details">
        <div class="product__details__pic">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="product__details__breadcrumb">
                            <a href="/ShoppingMall/shop/shop.do">Home</a>
                            <a href="./shop.html">Shop</a>
                            <span>Product Details</span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-3">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">
                                    <div class="product__thumb__pic set-bg" data-setbg="/ShoppingMall/resources/upload/${product.i_fname }">
                                    </div>
                                </a>
                            </li>
<!--                             <li class="nav-item"> -->
<!--                                 <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"> -->
<!--                                     <div class="product__thumb__pic set-bg" data-setbg="img/shop-details/thumb-2.png"> -->
<!--                                     </div> -->
<!--                                 </a> -->
<!--                             </li> -->
<!--                             <li class="nav-item"> -->
<!--                                 <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"> -->
<!--                                     <div class="product__thumb__pic set-bg" data-setbg="img/shop-details/thumb-3.png"> -->
<!--                                     </div> -->
<!--                                 </a> -->
<!--                             </li> -->
<!--                             <li class="nav-item"> -->
<!--                                 <a class="nav-link" data-toggle="tab" href="#tabs-4" role="tab"> -->
<!--                                     <div class="product__thumb__pic set-bg" data-setbg="img/shop-details/thumb-4.png"> -->
<!--                                         <i class="fa fa-play"></i> -->
<!--                                     </div> -->
<!--                                 </a> -->
<!--                             </li> -->
                        </ul>
                    </div>
                    <div class="col-lg-6 col-md-9">
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__pic__item">
                                    <img src="/ShoppingMall/resources/upload/${product.i_fname }" alt="">
                                </div>
                            </div>
<!--                             <div class="tab-pane" id="tabs-2" role="tabpanel"> -->
<!--                                 <div class="product__details__pic__item"> -->
<!--                                     <img src="img/shop-details/product-big-3.png" alt=""> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             <div class="tab-pane" id="tabs-3" role="tabpanel"> -->
<!--                                 <div class="product__details__pic__item"> -->
<!--                                     <img src="img/shop-details/product-big.png" alt=""> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             <div class="tab-pane" id="tabs-4" role="tabpanel"> -->
<!--                                 <div class="product__details__pic__item"> -->
<!--                                     <img src="img/shop-details/product-big-4.png" alt=""> -->
<!--                                     <a href="https://www.youtube.com/watch?v=8PJ3_p7VqHw&list=RD8PJ3_p7VqHw&start_radio=1" class="video-popup"><i class="fa fa-play"></i></a> -->
<!--                                 </div> -->
<!--                             </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product__details__content">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-8">
                        <div class="product__details__text">
                            <h4>${product.p_name }</h4>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-o"></i>
                                <span> - 5 Reviews</span>
                            </div>
                            <h3>${product.p_price } <span>${product.p_price }</span></h3>
<!--                             <p>퀼팅 안감과 조절 가능한 후드가있는 코트. 조정 가능한 커프 탭이있는 긴 소매, 신축성있는 측면 탭이있는 조정 가능한 비대칭 밑단, 플래 킷이있는 앞면 지퍼 여밈.</p> -->
                            <div class="product__details__option">
                                <div class="product__details__option__size">
                                    <span>사이즈:</span>
                                    <label for="xxl">xxl
                                        <input type="radio" id="xxl">
                                    </label>
                                    <label class="active" for="xl">xl
                                        <input type="radio" id="xl">
                                    </label>
                                    <label for="l">l
                                        <input type="radio" id="l">
                                    </label>
                                    <label for="sm">s
                                        <input type="radio" id="sm">
                                    </label>
                                </div>
                                <div class="product__details__option__color">
                                    <span>색상:</span>
                                    <label class="c-1" for="sp-1">
                                        <input type="radio" id="sp-1">
                                    </label>
<!--                                     <label class="c-2" for="sp-2"> -->
<!--                                         <input type="radio" id="sp-2"> -->
<!--                                     </label> -->
                                    <label class="c-3" for="sp-3">
                                        <input type="radio" id="sp-3">
                                    </label>
                                    <label class="c-4" for="sp-4">
                                        <input type="radio" id="sp-4">
                                    </label>
<!--                                     <label class="c-9" for="sp-9"> -->
<!--                                         <input type="radio" id="sp-9"> -->
<!--                                     </label> -->
                                </div>
                            </div>
                            <form action="/ShoppingMall/shop/cart.do?p_id=${product.p_id }&m_id=${sessionScope.m_Id}">
                            <input type="hidden" name="p_id" value="${product.p_id }">
                            <input type="hidden" name="m_id" value="${sessionScope.m_Id}">
                            <div class="product__details__cart__option">
                                <div class="quantity">
                                    <div class="pro-qty">
                                        <input type="text" value="1" name="p_count">
                                    </div>
                                </div>
                                <button type="submit" class="primary-btn">+ 장바구니에 담기</button>
<%--                                 <a href="/ShoppingMall/shop/cart.do?p_id=${product.p_id }&m_id=${sessionScope.m_Id}" class="primary-btn">+ 장바구니에 담기</a> --%>
<!--                                 <a href="/ShoppingMall/shop/cart.do" class="primary-btn">+ 장바구니에 담기</a> -->
                            </div>
                            </form>
<!--                             <div class="product__details__btns__option"> -->
<!--                                 <a href="#"><i class="fa fa-heart"></i> 찜</a> -->
<!--                                 <a href="#"><i class="fa fa-exchange"></i> 비교하기에 담기(없앨 수 있음) </a> -->
<!--                             </div> -->
                            <div class="product__details__last__option">
                                <h5><span>Guaranteed Safe Checkout</span></h5>
                                <img src="img/shop-details/details-payment.png" alt="">
                                <ul>
                                    <li><span>SKU(재고 관리코드):</span> ${product.p_id }</li>
                                    <li><span>카테고리:</span> ${product.p_cate }</li>
<!--                                     <li><span>태그:</span> Clothes, Skin, Body</li> -->
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="product__details__tab">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#tabs-5"
                                    role="tab">상품 설명</a>
                                </li>
<!--                                 <li class="nav-item"> -->
<!--                                     <a class="nav-link" data-toggle="tab" href="#tabs-6" role="tab">상품 후기(5)</a> -->
<!--                                 </li> -->
<!--                                 <li class="nav-item"> -->
<!--                                     <a class="nav-link" data-toggle="tab" href="#tabs-7" role="tab">추가 정보(지우거나 제목 수정할 수 있음)</a> -->
<!--                                 </li> -->
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="tabs-5" role="tabpanel">
                                    <div class="product__details__tab__content">
<!--                                         <p class="note">Nam tempus turpis at metus scelerisque placerat nulla deumantos -->
<!--                                             solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis -->
<!--                                             ut risus. Sedcus faucibus an sullamcorper mattis drostique des commodo -->
<!--                                         pharetras loremos.</p> -->
                                        <div class="product__details__tab__content__item">
                                            <h5>정보</h5>
                                            <p>목을 여유 있게 감싸는 네크라인이 특징인 깔끔한 베이직 티셔츠 디자인으로 편리한 사이드 트임 및 심플하면서 포인트가 되는 소매 트임 디테일이 특징입니다. 고급스럽고 부드러운 질감이 잦은 세탁에도 변형 없는 프리미엄 소재를 사용한 제품으로 다양한 스타일의 코디에 오랜 기간 범용성 높게 활용하실 수 있습니다.</p>
                                            <p>The clean basic T-shirt design features a neckline that wraps around the neck comfortably, and features convenient side openings and simple, pointed sleeve openings. It is a product that uses premium materials that are not deformed even in frequent washing with a luxurious and soft texture, and can be used with high versatility for a long time in coordination of various styles.</p>
                                        </div>
                                        <div class="product__details__tab__content__item">
                                            <h5>재질</h5>
                                            <p>폴리 에스테르는 천연 품질이 아니기 때문에 품질이 낮은 것으로 간주됩니다. 양모와 같은 천연 소재가 아닌 합성 소재로 제작되었습니다. 폴리 에스테르 수트는 쉽게 구겨지고 통기성이없는 것으로 알려져 있습니다. 폴리 에스테르 수트는 울과면 수트에 비해 빛을 발하는 경향이있어 수트가 저렴 해 보일 수 있습니다. 벨벳의 질감은 고급스럽고 통기성이 있습니다. 벨벳은 디너 파티 재킷에 좋은 선택이며 일년 내내 입을 수 있습니다.</p>
                                            <p>Polyester is deemed lower quality due to its none natural quality’s. Made 
                                                from synthetic materials, not natural like wool. Polyester suits become
                                                creased easily and are known for not being breathable. Polyester suits
                                                tend to have a shine to them compared to wool and cotton suits, this can
                                                make the suit look cheap. The texture of velvet is luxurious and
                                                breathable. Velvet is a great choice for dinner party jacket and can be
                                           worn all year round.</p>
                                        </div>
                                    </div>
                                </div>
<!--                                 <div class="tab-pane" id="tabs-6" role="tabpanel"> -->
<!--                                     <div class="product__details__tab__content"> -->
<!--                                         <div class="product__details__tab__content__item"> -->
<!--                                             <h5>Products Infomation</h5> -->
<!--                                             <p>A Pocket PC is a handheld computer, which features many of the same -->
<!--                                                 capabilities as a modern PC. These handy little devices allow -->
<!--                                                 individuals to retrieve and store e-mail messages, create a contact -->
<!--                                                 file, coordinate appointments, surf the internet, exchange text messages -->
<!--                                                 and more. Every product that is labeled as a Pocket PC must be -->
<!--                                                 accompanied with specific software to operate the unit and must feature -->
<!--                                             a touchscreen and touchpad.</p> -->
<!--                                             <p>As is the case with any new technology product, the cost of a Pocket PC -->
<!--                                                 was substantial during it’s early release. For approximately $700.00, -->
<!--                                                 consumers could purchase one of top-of-the-line Pocket PCs in 2003. -->
<!--                                                 These days, customers are finding that prices have become much more -->
<!--                                                 reasonable now that the newness is wearing off. For approximately -->
<!--                                             $350.00, a new Pocket PC can now be purchased.</p> -->
<!--                                         </div> -->
<!--                                         <div class="product__details__tab__content__item"> -->
<!--                                             <h5>Material used</h5> -->
<!--                                             <p>Polyester is deemed lower quality due to its none natural quality’s. Made -->
<!--                                                 from synthetic materials, not natural like wool. Polyester suits become -->
<!--                                                 creased easily and are known for not being breathable. Polyester suits -->
<!--                                                 tend to have a shine to them compared to wool and cotton suits, this can -->
<!--                                                 make the suit look cheap. The texture of velvet is luxurious and -->
<!--                                                 breathable. Velvet is a great choice for dinner party jacket and can be -->
<!--                                             worn all year round.</p> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <div class="tab-pane" id="tabs-7" role="tabpanel"> -->
<!--                                     <div class="product__details__tab__content"> -->
<!--                                         <p class="note">Nam tempus turpis at metus scelerisque placerat nulla deumantos -->
<!--                                             solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis -->
<!--                                             ut risus. Sedcus faucibus an sullamcorper mattis drostique des commodo -->
<!--                                         pharetras loremos.</p> -->
<!--                                         <div class="product__details__tab__content__item"> -->
<!--                                             <h5>Products Infomation</h5> -->
<!--                                             <p>A Pocket PC is a handheld computer, which features many of the same -->
<!--                                                 capabilities as a modern PC. These handy little devices allow -->
<!--                                                 individuals to retrieve and store e-mail messages, create a contact -->
<!--                                                 file, coordinate appointments, surf the internet, exchange text messages -->
<!--                                                 and more. Every product that is labeled as a Pocket PC must be -->
<!--                                                 accompanied with specific software to operate the unit and must feature -->
<!--                                             a touchscreen and touchpad.</p> -->
<!--                                             <p>As is the case with any new technology product, the cost of a Pocket PC -->
<!--                                                 was substantial during it’s early release. For approximately $700.00, -->
<!--                                                 consumers could purchase one of top-of-the-line Pocket PCs in 2003. -->
<!--                                                 These days, customers are finding that prices have become much more -->
<!--                                                 reasonable now that the newness is wearing off. For approximately -->
<!--                                             $350.00, a new Pocket PC can now be purchased.</p> -->
<!--                                         </div> -->
<!--                                         <div class="product__details__tab__content__item"> -->
<!--                                             <h5>Material used</h5> -->
<!--                                             <p>Polyester is deemed lower quality due to its none natural quality’s. Made -->
<!--                                                 from synthetic materials, not natural like wool. Polyester suits become -->
<!--                                                 creased easily and are known for not being breathable. Polyester suits -->
<!--                                                 tend to have a shine to them compared to wool and cotton suits, this can -->
<!--                                                 make the suit look cheap. The texture of velvet is luxurious and -->
<!--                                                 breathable. Velvet is a great choice for dinner party jacket and can be -->
<!--                                             worn all year round.</p> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Details Section End -->
    
    <!-- 모델 프로필 START -->
    <section class="model spad">
    	<div class="model">
    		<h3 class="model_title">모델</h3>
    		<div class="model_img">
    			<img src="/ShoppingMall/shop/img/shop-details/noimg.gif">
    		</div>
    		<div class="model_profile">
    			<p><a>이름 : </a></p>
    			<p><a>키 : </a></p>
    			<p><a>몸무게 : </a></p>
    			<p><a>착용 사이즈 : </a></p>
    			<p><a>모델 조언 : </a></p>
    		</div>
    	</div>
    </section>
    <!-- 모델 프로필 END -->

    <!-- Related Section Begin -->
    <section class="related spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="related-title">관련 상품</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/product/product-1.jpg">
                            <span class="label">New</span>
                            <ul class="product__hover">
                                <li><a href="#"><img src="img/icon/heart.png" alt=""></a></li>
                                <li><a href="#"><img src="img/icon/search.png" alt=""></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6>Piqué Biker Jacket</h6>
                            <a href="#" class="add-cart">+ 장바구니에 담기</a>
                            <div class="rating">
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <h5>$67.24</h5>
                            <div class="product__color__select">
                                <label for="pc-1">
                                    <input type="radio" id="pc-1">
                                </label>
                                <label class="active black" for="pc-2">
                                    <input type="radio" id="pc-2">
                                </label>
                                <label class="grey" for="pc-3">
                                    <input type="radio" id="pc-3">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/product/product-2.jpg">
                            <ul class="product__hover">
                                <li><a href="#"><img src="img/icon/heart.png" alt=""></a></li>
                                <li><a href="#"><img src="img/icon/search.png" alt=""></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6>Piqué Biker Jacket</h6>
                            <a href="#" class="add-cart">+ 장바구니에 담기</a>
                            <div class="rating">
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <h5>$67.24</h5>
                            <div class="product__color__select">
                                <label for="pc-4">
                                    <input type="radio" id="pc-4">
                                </label>
                                <label class="active black" for="pc-5">
                                    <input type="radio" id="pc-5">
                                </label>
                                <label class="grey" for="pc-6">
                                    <input type="radio" id="pc-6">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-sm-6">
                    <div class="product__item sale">
                        <div class="product__item__pic set-bg" data-setbg="img/product/product-3.jpg">
                            <span class="label">Sale</span>
                            <ul class="product__hover">
                                <li><a href="#"><img src="img/icon/heart.png" alt=""></a></li>
                                <li><a href="#"><img src="img/icon/search.png" alt=""></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6>Multi-pocket Chest Bag</h6>
                            <a href="#" class="add-cart">+ 장바구니에 담기</a>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <h5>$43.48</h5>
                            <div class="product__color__select">
                                <label for="pc-7">
                                    <input type="radio" id="pc-7">
                                </label>
                                <label class="active black" for="pc-8">
                                    <input type="radio" id="pc-8">
                                </label>
                                <label class="grey" for="pc-9">
                                    <input type="radio" id="pc-9">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/product/product-4.jpg">
                            <ul class="product__hover">
                                <li><a href="#"><img src="img/icon/heart.png" alt=""></a></li>
                                <li><a href="#"><img src="img/icon/search.png" alt=""></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6>Diagonal Textured Cap</h6>
                            <a href="#" class="add-cart">+ 장바구니에 담기</a>
                            <div class="rating">
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <h5>$60.9</h5>
                            <div class="product__color__select">
                                <label for="pc-10">
                                    <input type="radio" id="pc-10">
                                </label>
                                <label class="active black" for="pc-11">
                                    <input type="radio" id="pc-11">
                                </label>
                                <label class="grey" for="pc-12">
                                    <input type="radio" id="pc-12">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Related Section End -->

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
<!--     <script src="js/additional.js"></script> -->
	<script type="text/javascript">
	$('.primary-btn').click(function(ignore){
		if(${not empty sessionScope.m_Id}){
			alert('장바구니에 담았습니다.')
		}else{
			alert('로그인이 필요합니다.')
            ignore.preventDefault();
			location.href='/ShoppingMall/member/login.do';

		}
	})
	</script>
</body>

</html>