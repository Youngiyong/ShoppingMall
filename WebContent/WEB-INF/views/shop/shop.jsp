<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <style type="text/css">

    </style>
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
                            
                            <!-- 로그인 -->
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
                            <!-- 로그인 end -->
                            
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
                        <a href="/ShoppingMall/shop/shopping-cart.do"><img src="/ShoppingMall/shop/img/icon/cart.png" alt=""> <span>0</span></a>
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
                        <h4>Shop</h4>
                        <div class="breadcrumb__links">
                            <a href="/ShoppingMall/index.jsp">Home</a>
                            <span>Shop</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shop Section Begin -->
    <section class="shop spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="shop__sidebar">
                        <div class="shop__sidebar__search">
                            <form action="#">
                                <input type="text" placeholder="Search...">
                                <button type="submit"><span class="icon_search"></span></button>
                            </form>
                        </div>
                        
                        <!-- 카테고리 폼 start -->
                        <form action="/ShoppingMall/shop/shop.do" >
<!--                         <input type="button" id="ajax" value="상세검색"> -->
                        <input type="submit" value="상세검색">
                        <div class="shop__sidebar__accordion">
                            <div class="accordion" id="accordionExample">
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseOne">카테고리</a>
                                    </div>
                                    <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__categories">
                                                <ul class="nice-scroll">
                                                    <li><label for="셔츠"><input type="checkbox" id="셔츠" name="p_cate" value="셔츠">셔츠 </label></li>
                                                    <li><label for="반팔"><input type="checkbox" id="반팔" name="p_cate" value="반팔">반팔 </label></li>
                                                    <li><label for="아우터"><input type="checkbox" id="아우터" name="p_cate" value="아우터">아우터 </label></li>
                                                    <li><label for="바지"><input type="checkbox" id="바지" name="p_cate" value="바지">바지 </label></li>
                                                    <li><label for="빤스"><input type="checkbox" id="빤스" name="p_cate" value="">빤스 </label></li>
                                                    <li><label for="가방"><input type="checkbox" id="가방" name="p_cate" value="가방">가방 </label></li>
                                                    <li><label for="시계"><input type="checkbox" id="시계" name="p_cate" value="시계">시계 </label></li>
                                                    <li><label for="신발"><input type="checkbox" id="신발" name="p_cate" value="신발">신발 </label></li>
                                                    <li><label for="악세서리"><input type="checkbox" id="악세서리" name="p_cate" value="악세서리">악세서리 </label></li>
                                                    <li><label for="캐주얼의류"><input type="checkbox" id="캐주얼의류" name="p_cate" value="캐주얼의류">캐주얼의류 </label></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
<!--                                 <div class="card"> -->
<!--                                     <div class="card-heading"> -->
<!--                                         <a data-toggle="collapse" data-target="#collapseTwo">브랜드</a> -->
<!--                                     </div> -->
<!--                                     <div id="collapseTwo" class="collapse show" data-parent="#accordionExample"> -->
<!--                                         <div class="card-body"> -->
<!--                                             <div class="shop__sidebar__brand"> -->
<!--                                                 <ul> -->
<!--                                                     <li><label for="Louis Vuitton"><input type="checkbox" id="Louis Vuitton" name="Louis Vuitton" value="Louis Vuitton">Louis Vuitton</label></li> -->
<!--                                                     <li><label for="Chanel"><input type="checkbox" id="Chanel" name="Chanel" value="Chanel">Chanel</label></li> -->
<!--                                                     <li><label for="Hermes"><input type="checkbox" id="Hermes" name="Hermes" value="Hermes">Hermes</label></li> -->
<!--                                                     <li><label for="Gucci"><input type="checkbox" id="Gucci" name="Gucci" value="Gucci">Gucci</label></li> -->
<!--                                                 </ul> -->
<!--                                             </div> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
                                
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseThree">가격</a>
                                    </div>
                                    <div id="collapseThree" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__price">
                                                <ul>
                                                    <li><label for="0to5"><input type="checkbox" id="0to5" name="p_price" value="0">0 - 5만원</label></li>
                                                    <li><label for="5to10"><input type="checkbox" id="5to10" name="p_price" value="50000">5만원 - 10만원</label></li>
                                                    <li><label for="10to15"><input type="checkbox" id="10to15" name="p_price" value="100000">10만원 - 15만원</label></li>
                                                    <li><label for="15to20"><input type="checkbox" id="15to20" name="p_price" value="150000">15만원 - 20만원</label></li>
                                                    <li><label for="20to25"><input type="checkbox" id="20to25" name="p_price" value="200000">20만원 - 25만원</label></li>
                                                    <li><label for="25"><input type="checkbox" id="25" name="p_price" value="250000">25만원 이상</label></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseFour">사이즈</a>
                                    </div>
                                    <div id="collapseFour" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__size">
<!--                                                 <label for="xs">xs -->
<!--                                                     <input type="radio" id="xs"> -->
<!--                                                 </label> -->
                                                <label for="sm">s
                                                    <input type="checkbox" id="sm" name="p_size" value="S">
                                                </label>
                                                <label for="md">m
                                                    <input type="checkbox" id="md"  name="p_size" value="M">
                                                </label>
                                                <label for="l">l
                                                    <input type="checkbox" id="l"  name="p_size" value="L">
                                                </label>
                                                <label for="xl">xl
                                                    <input type="checkbox" id="xl"  name="p_size" value="XL">
                                                </label>
<!--                                                 <label for="2xl">2xl -->
<!--                                                     <input type="radio" id="2xl"> -->
<!--                                                 </label> -->
<!--                                                 <label for="3xl">3xl -->
<!--                                                     <input type="radio" id="3xl"> -->
<!--                                                 </label> -->
<!--                                                 <label for="4xl">4xl -->
<!--                                                     <input type="radio" id="4xl"> -->
<!--                                                 </label> -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseFive">색상</a>
                                    </div>
                                    <div id="collapseFive" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__color">
                                                    <input type="checkbox" id="nocolor" checked="checked">색상없음<br/>
                                                
                                                <label class="c-1" for="sp-1">
                                                    <input type="checkbox" id="sp-1" name="p_color" value="Black">
                                                </label>
                                                <label class="c-2" for="sp-2">
                                                    <input type="checkbox" id="sp-2" name="p_color" value="Bule">
                                                </label>
<!--                                                 <label class="c-3" for="sp-3"> -->
<!--                                                     <input type="radio" id="sp-3"> -->
<!--                                                 </label> -->
<!--                                                 <label class="c-4" for="sp-4"> -->
<!--                                                     <input type="radio" id="sp-4"> -->
<!--                                                 </label> -->
<!--                                                 <label class="c-5" for="sp-5"> -->
<!--                                                     <input type="radio" id="sp-5"> -->
<!--                                                 </label> -->
<!--                                                 <label class="c-6" for="sp-6"> -->
<!--                                                     <input type="radio" id="sp-6"> -->
<!--                                                 </label> -->
<!--                                                 <label class="c-7" for="sp-7"> -->
<!--                                                     <input type="radio" id="sp-7"> -->
<!--                                                 </label> -->
                                                <label class="c-8" for="sp-8">
                                                    <input type="checkbox" id="sp-8" name="p_color" value="Red">
                                                </label>
                                                <label class="c-9" for="sp-9">
                                                    <input type="checkbox" id="sp-9" name="p_color" value="White">
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
<!--                                 <div class="card"> -->
<!--                                     <div class="card-heading"> -->
<!--                                         <a data-toggle="collapse" data-target="#collapseSix">태그(지우거나 대체 될 수 있음)</a> -->
<!--                                     </div> -->
<!--                                     <div id="collapseSix" class="collapse show" data-parent="#accordionExample"> -->
<!--                                         <div class="card-body"> -->
<!--                                             <div class="shop__sidebar__tags"> -->
<!--                                                 <a href="#">Product</a> -->
<!--                                                 <a href="#">Bags</a> -->
<!--                                                 <a href="#">Shoes</a> -->
<!--                                                 <a href="#">Fashio</a> -->
<!--                                                 <a href="#">Clothing</a> -->
<!--                                                 <a href="#">Hats</a> -->
<!--                                                 <a href="#">Accessories</a> -->
<!--                                             </div> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
                            </div>
                        </div>
                        </form>
                        <!-- 카테고리 폼 END -->
                        
                        
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="shop__product__option">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="shop__product__option__left">
<!--                                     <p>Showing (n*12-11)-n*12 of (총개수) results</p> -->
                                    <p>Showing 1 - 12 of 140 results</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="shop__product__option__right">
                                    <p>정렬:</p>
                                    <select>
                                        <option value="">인기순</option>
                                        <option value="">낮은가격순</option>
                                        <option value="">높은가격순</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    	
                    	<c:choose>
                        	<c:when test="${empty productList }">
                        		<div class="none_search">
                        			<h4>검색 결과가 존재 하지 않습니다.</h4>
                        		</div>
                        	</c:when>
                        	<c:otherwise>
                    	
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="/ShoppingMall/shop/img/shop-details/thumb-3.png ">
                                    <ul class="product__hover">
                                        <li><a href="/ShoppingMall/shop/shop-details224.do"><img src="img/icon/search.png" alt=""></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6> 대표 상품 </h6>
                                    <a href="#" class="add-cart">+ 장바구니에 담기</a>
                                    <div class="rating">
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                    <h5>67000원</h5>
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
                        
                       
                        
                    	<c:forEach items="${productList }" var="shop">
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="/ShoppingMall/resources/upload/${shop.i_fname} ">
                                    <ul class="product__hover">
                                        <li><a href="/ShoppingMall/shop/shop-details.do?p_id=${shop.p_id }"><img src="img/icon/search.png" alt=""></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6>${shop.p_name}</h6>
                                    <a href="/ShoppingMall/shop/cart.do?p_id=${shop.p_id }&m_id=${sessionScope.m_Id}" class="add-cart">+ 장바구니에 담기</a>
                                    <div class="rating">
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                    <h5>${shop.p_price}원</h5>
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
                        </c:forEach>
                        
                        
<!--                         <div class="col-lg-4 col-md-6 col-sm-6"> -->
<!--                             <div class="product__item"> -->
<!--                                 <div class="product__item__pic set-bg" data-setbg="img/product/product-2.jpg"> -->
<!--                                     <ul class="product__hover"> -->
<!--                                         <li><a href="#"><img src="img/icon/search.png" alt=""></a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="product__item__text"> -->
<!--                                     <h6>Piqué Biker Jacket</h6> -->
<!--                                     <a href="#" class="add-cart">+ 장바구니에 담기</a> -->
<!--                                     <div class="rating"> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                     </div> -->
<!--                                     <h5>$67.24</h5> -->
<!--                                     <div class="product__color__select"> -->
<!--                                         <label for="pc-4"> -->
<!--                                             <input type="radio" id="pc-4"> -->
<!--                                         </label> -->
<!--                                         <label class="active black" for="pc-5"> -->
<!--                                             <input type="radio" id="pc-5"> -->
<!--                                         </label> -->
<!--                                         <label class="grey" for="pc-6"> -->
<!--                                             <input type="radio" id="pc-6"> -->
<!--                                         </label> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
                        
<!--                         <div class="col-lg-4 col-md-6 col-sm-6"> -->
<!--                             <div class="product__item sale"> -->
<!--                                 <div class="product__item__pic set-bg" data-setbg="img/product/product-3.jpg"> -->
<!--                                     <span class="label">Sale</span> -->
<!--                                     <ul class="product__hover"> -->
<!--                                         <li><a href="#"><img src="img/icon/search.png" alt=""></a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="product__item__text"> -->
<!--                                     <h6>Multi-pocket Chest Bag</h6> -->
<!--                                     <a href="#" class="add-cart">+ 장바구니에 담기</a> -->
<!--                                     <div class="rating"> -->
<!--                                         <i class="fa fa-star"></i> -->
<!--                                         <i class="fa fa-star"></i> -->
<!--                                         <i class="fa fa-star"></i> -->
<!--                                         <i class="fa fa-star"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                     </div> -->
<!--                                     <h5>$43.48</h5> -->
<!--                                     <div class="product__color__select"> -->
<!--                                         <label for="pc-7"> -->
<!--                                             <input type="radio" id="pc-7"> -->
<!--                                         </label> -->
<!--                                         <label class="active black" for="pc-8"> -->
<!--                                             <input type="radio" id="pc-8"> -->
<!--                                         </label> -->
<!--                                         <label class="grey" for="pc-9"> -->
<!--                                             <input type="radio" id="pc-9"> -->
<!--                                         </label> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
                        
<!--                         <div class="col-lg-4 col-md-6 col-sm-6"> -->
<!--                             <div class="product__item"> -->
<!--                                 <div class="product__item__pic set-bg" data-setbg="img/product/product-4.jpg"> -->
<!--                                     <ul class="product__hover"> -->
<!--                                         <li><a href="#"><img src="img/icon/heart.png" alt=""></a></li> -->
<!--                                         <li><a href="#"><img src="img/icon/search.png" alt=""></a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="product__item__text"> -->
<!--                                     <h6>Diagonal Textured Cap</h6> -->
<!--                                     <a href="#" class="add-cart">+ 장바구니에 담기</a> -->
<!--                                     <div class="rating"> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                     </div> -->
<!--                                     <h5>$60.9</h5> -->
<!--                                     <div class="product__color__select"> -->
<!--                                         <label for="pc-10"> -->
<!--                                             <input type="radio" id="pc-10"> -->
<!--                                         </label> -->
<!--                                         <label class="active black" for="pc-11"> -->
<!--                                             <input type="radio" id="pc-11"> -->
<!--                                         </label> -->
<!--                                         <label class="grey" for="pc-12"> -->
<!--                                             <input type="radio" id="pc-12"> -->
<!--                                         </label> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-lg-4 col-md-6 col-sm-6"> -->
<!--                             <div class="product__item sale"> -->
<!--                                 <div class="product__item__pic set-bg" data-setbg="img/product/product-6.jpg"> -->
<!--                                     <span class="label">Sale</span> -->
<!--                                     <ul class="product__hover"> -->
<!--                                         <li><a href="#"><img src="img/icon/heart.png" alt=""></a></li> -->
<!--                                         <li><a href="#"><img src="img/icon/search.png" alt=""></a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="product__item__text"> -->
<!--                                     <h6>Ankle Boots</h6> -->
<!--                                     <a href="#" class="add-cart">+ 장바구니에 담기</a> -->
<!--                                     <div class="rating"> -->
<!--                                         <i class="fa fa-star"></i> -->
<!--                                         <i class="fa fa-star"></i> -->
<!--                                         <i class="fa fa-star"></i> -->
<!--                                         <i class="fa fa-star"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                     </div> -->
<!--                                     <h5>$98.49</h5> -->
<!--                                     <div class="product__color__select"> -->
<!--                                         <label for="pc-16"> -->
<!--                                             <input type="radio" id="pc-16"> -->
<!--                                         </label> -->
<!--                                         <label class="active black" for="pc-17"> -->
<!--                                             <input type="radio" id="pc-17"> -->
<!--                                         </label> -->
<!--                                         <label class="grey" for="pc-18"> -->
<!--                                             <input type="radio" id="pc-18"> -->
<!--                                         </label> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-lg-4 col-md-6 col-sm-6"> -->
<!--                             <div class="product__item"> -->
<!--                                 <div class="product__item__pic set-bg" data-setbg="img/product/product-7.jpg"> -->
<!--                                     <ul class="product__hover"> -->
<!--                                         <li><a href="#"><img src="img/icon/heart.png" alt=""></a></li> -->
<!--                                         <li><a href="#"><img src="img/icon/search.png" alt=""></a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="product__item__text"> -->
<!--                                     <h6>T-shirt Contrast Pocket</h6> -->
<!--                                     <a href="#" class="add-cart">+ 장바구니에 담기</a> -->
<!--                                     <div class="rating"> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                     </div> -->
<!--                                     <h5>$49.66</h5> -->
<!--                                     <div class="product__color__select"> -->
<!--                                         <label for="pc-19"> -->
<!--                                             <input type="radio" id="pc-19"> -->
<!--                                         </label> -->
<!--                                         <label class="active black" for="pc-20"> -->
<!--                                             <input type="radio" id="pc-20"> -->
<!--                                         </label> -->
<!--                                         <label class="grey" for="pc-21"> -->
<!--                                             <input type="radio" id="pc-21"> -->
<!--                                         </label> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-lg-4 col-md-6 col-sm-6"> -->
<!--                             <div class="product__item"> -->
<!--                                 <div class="product__item__pic set-bg" data-setbg="img/product/product-8.jpg"> -->
<!--                                     <ul class="product__hover"> -->
<!--                                         <li><a href="#"><img src="img/icon/heart.png" alt=""></a></li> -->
<!--                                         <li><a href="#"><img src="img/icon/search.png" alt=""></a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="product__item__text"> -->
<!--                                     <h6>Basic Flowing Scarf</h6> -->
<!--                                     <a href="#" class="add-cart">+ 장바구니에 담기</a> -->
<!--                                     <div class="rating"> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                     </div> -->
<!--                                     <h5>$26.28</h5> -->
<!--                                     <div class="product__color__select"> -->
<!--                                         <label for="pc-22"> -->
<!--                                             <input type="radio" id="pc-22"> -->
<!--                                         </label> -->
<!--                                         <label class="active black" for="pc-23"> -->
<!--                                             <input type="radio" id="pc-23"> -->
<!--                                         </label> -->
<!--                                         <label class="grey" for="pc-24"> -->
<!--                                             <input type="radio" id="pc-24"> -->
<!--                                         </label> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-lg-4 col-md-6 col-sm-6"> -->
<!--                             <div class="product__item"> -->
<!--                                 <div class="product__item__pic set-bg" data-setbg="img/product/product-9.jpg"> -->
<!--                                     <ul class="product__hover"> -->
<!--                                         <li><a href="#"><img src="img/icon/heart.png" alt=""></a></li> -->
<!--                                         <li><a href="#"><img src="img/icon/search.png" alt=""></a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="product__item__text"> -->
<!--                                     <h6>Piqué Biker Jacket</h6> -->
<!--                                     <a href="#" class="add-cart">+ 장바구니에 담기</a> -->
<!--                                     <div class="rating"> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                     </div> -->
<!--                                     <h5>$67.24</h5> -->
<!--                                     <div class="product__color__select"> -->
<!--                                         <label for="pc-25"> -->
<!--                                             <input type="radio" id="pc-25"> -->
<!--                                         </label> -->
<!--                                         <label class="active black" for="pc-26"> -->
<!--                                             <input type="radio" id="pc-26"> -->
<!--                                         </label> -->
<!--                                         <label class="grey" for="pc-27"> -->
<!--                                             <input type="radio" id="pc-27"> -->
<!--                                         </label> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-lg-4 col-md-6 col-sm-6"> -->
<!--                             <div class="product__item sale"> -->
<!--                                 <div class="product__item__pic set-bg" data-setbg="img/product/product-10.jpg"> -->
<!--                                     <span class="label">Sale</span> -->
<!--                                     <ul class="product__hover"> -->
<!--                                         <li><a href="#"><img src="img/icon/heart.png" alt=""></a></li> -->
<!--                                         <li><a href="#"><img src="img/icon/search.png" alt=""></a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="product__item__text"> -->
<!--                                     <h6>Multi-pocket Chest Bag</h6> -->
<!--                                     <a href="#" class="add-cart">+ 장바구니에 담기</a> -->
<!--                                     <div class="rating"> -->
<!--                                         <i class="fa fa-star"></i> -->
<!--                                         <i class="fa fa-star"></i> -->
<!--                                         <i class="fa fa-star"></i> -->
<!--                                         <i class="fa fa-star"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                     </div> -->
<!--                                     <h5>$43.48</h5> -->
<!--                                     <div class="product__color__select"> -->
<!--                                         <label for="pc-28"> -->
<!--                                             <input type="radio" id="pc-28"> -->
<!--                                         </label> -->
<!--                                         <label class="active black" for="pc-29"> -->
<!--                                             <input type="radio" id="pc-29"> -->
<!--                                         </label> -->
<!--                                         <label class="grey" for="pc-30"> -->
<!--                                             <input type="radio" id="pc-30"> -->
<!--                                         </label> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-lg-4 col-md-6 col-sm-6"> -->
<!--                             <div class="product__item"> -->
<!--                                 <div class="product__item__pic set-bg" data-setbg="img/product/product-11.jpg"> -->
<!--                                     <ul class="product__hover"> -->
<!--                                         <li><a href="#"><img src="img/icon/heart.png" alt=""></a></li> -->
<!--                                         <li><a href="#"><img src="img/icon/search.png" alt=""></a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="product__item__text"> -->
<!--                                     <h6>Diagonal Textured Cap</h6> -->
<!--                                     <a href="#" class="add-cart">+ 장바구니에 담기</a> -->
<!--                                     <div class="rating"> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                     </div> -->
<!--                                     <h5>$60.9</h5> -->
<!--                                     <div class="product__color__select"> -->
<!--                                         <label for="pc-31"> -->
<!--                                             <input type="radio" id="pc-31"> -->
<!--                                         </label> -->
<!--                                         <label class="active black" for="pc-32"> -->
<!--                                             <input type="radio" id="pc-32"> -->
<!--                                         </label> -->
<!--                                         <label class="grey" for="pc-33"> -->
<!--                                             <input type="radio" id="pc-33"> -->
<!--                                         </label> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-lg-4 col-md-6 col-sm-6"> -->
<!--                             <div class="product__item sale"> -->
<!--                                 <div class="product__item__pic set-bg" data-setbg="img/product/product-12.jpg"> -->
<!--                                     <span class="label">Sale</span> -->
<!--                                     <ul class="product__hover"> -->
<!--                                         <li><a href="#"><img src="img/icon/heart.png" alt=""></a></li> -->
<!--                                         <li><a href="#"><img src="img/icon/search.png" alt=""></a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="product__item__text"> -->
<!--                                     <h6>Ankle Boots</h6> -->
<!--                                     <a href="#" class="add-cart">+ 장바구니에 담기</a> -->
<!--                                     <div class="rating"> -->
<!--                                         <i class="fa fa-star"></i> -->
<!--                                         <i class="fa fa-star"></i> -->
<!--                                         <i class="fa fa-star"></i> -->
<!--                                         <i class="fa fa-star"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                     </div> -->
<!--                                     <h5>$98.49</h5> -->
<!--                                     <div class="product__color__select"> -->
<!--                                         <label for="pc-34"> -->
<!--                                             <input type="radio" id="pc-34"> -->
<!--                                         </label> -->
<!--                                         <label class="active black" for="pc-35"> -->
<!--                                             <input type="radio" id="pc-35"> -->
<!--                                         </label> -->
<!--                                         <label class="grey" for="pc-36"> -->
<!--                                             <input type="radio" id="pc-36"> -->
<!--                                         </label> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-lg-4 col-md-6 col-sm-6"> -->
<!--                             <div class="product__item"> -->
<!--                                 <div class="product__item__pic set-bg" data-setbg="img/product/product-13.jpg"> -->
<!--                                     <ul class="product__hover"> -->
<!--                                         <li><a href="#"><img src="img/icon/heart.png" alt=""></a></li> -->
<!--                                         <li><a href="#"><img src="img/icon/search.png" alt=""></a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="product__item__text"> -->
<!--                                     <h6>T-shirt Contrast Pocket</h6> -->
<!--                                     <a href="#" class="add-cart">+ 장바구니에 담기</a> -->
<!--                                     <div class="rating"> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                     </div> -->
<!--                                     <h5>$49.66</h5> -->
<!--                                     <div class="product__color__select"> -->
<!--                                         <label for="pc-37"> -->
<!--                                             <input type="radio" id="pc-37"> -->
<!--                                         </label> -->
<!--                                         <label class="active black" for="pc-38"> -->
<!--                                             <input type="radio" id="pc-38"> -->
<!--                                         </label> -->
<!--                                         <label class="grey" for="pc-39"> -->
<!--                                             <input type="radio" id="pc-39"> -->
<!--                                         </label> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-lg-4 col-md-6 col-sm-6"> -->
<!--                             <div class="product__item"> -->
<!--                                 <div class="product__item__pic set-bg" data-setbg="img/product/product-14.jpg"> -->
<!--                                     <ul class="product__hover"> -->
<!--                                         <li><a href="#"><img src="img/icon/heart.png" alt=""></a></li> -->
<!--                                         <li><a href="#"><img src="img/icon/search.png" alt=""></a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="product__item__text"> -->
<!--                                     <h6>Basic Flowing Scarf</h6> -->
<!--                                     <a href="#" class="add-cart">+ 장바구니에 담기</a> -->
<!--                                     <div class="rating"> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                         <i class="fa fa-star-o"></i> -->
<!--                                     </div> -->
<!--                                     <h5>$26.28</h5> -->
<!--                                     <div class="product__color__select"> -->
<!--                                         <label for="pc-40"> -->
<!--                                             <input type="radio" id="pc-40"> -->
<!--                                         </label> -->
<!--                                         <label class="active black" for="pc-41"> -->
<!--                                             <input type="radio" id="pc-41"> -->
<!--                                         </label> -->
<!--                                         <label class="grey" for="pc-42"> -->
<!--                                             <input type="radio" id="pc-42"> -->
<!--                                         </label> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
                        
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="product__pagination">
                                <a class="active" href="#">1</a>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <span>...</span>
                                <a href="#">21</a>
                            </div>
                        </div>
                    </div>
                    
                    </c:otherwise>
                    </c:choose>
                    
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Section End -->

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
    <script src="js/additional.js"></script>
    <script type="text/javascript">
//     $('#ajax').click(function(){
//         $.ajax({
//            type : 'post',                           //전송방식
//            async : true,                           //비동기통신
//            url : '/ShoppingMall/shop/shop.do',                     //request
//            contextType : 'application/x-www-form-urlencoded;charset=utf-8',   //한글처리
//            data :
//            	{
//         	   'p_cate' : $('.shop__sidebar__categories ul li label input').val(),
//         	   'p_price' : $('.shop__sidebar__price ul li label input').val(),
//         	   'p_size' : $('.shop__sidebar__size label input').val(),
//         	   'p_color' : $('.shop__sidebar__color label input').val(),
        	   
//         	},
//            }
//            success : function(result)
//               {
//         	   alert('aa')
// //                  $('#idCheckResult').text(result);
//               },
//            error : function(err)
//               {
//                  console.log(err);
//               }
//         });

    
    $('.add-cart').click(function(ignore){
    	if(${not empty sessionScope.m_Id}){
			alert('장바구니에 담았습니다.')
		}else{
			alert('로그인이 필요합니다.')
           	ignore.preventDefault();
			location.href='/ShoppingMall/member/login.do';
		}
	});
	
    

    
    </script>
</body>

</html>