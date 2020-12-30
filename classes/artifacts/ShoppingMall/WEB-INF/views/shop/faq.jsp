<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="zxx">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script>document.getElementsByTagName("html")[0].className += " js";</script>
  <link rel="stylesheet" href="/ShoppingMall/faq/css/style.css">
  
     <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BUA-FAQ </title>
	
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
                            <a href="/ShoppingMall/admin/login.do">Admin Log In</a>
                        </div>
                    </div>
                    
                    <div class="col-lg-6 col-md-5">
                        <div class="header__top__right">
                            <div class="header__top__links">
                            <c:set var="data" value="null" />
                        
                              <c:choose>
                             	 <c:when test="${empty sessionScope.m_Id }"> 
                              	  <a href="/ShoppingMall/member/login.do">Sign in</a>
                             	 </c:when>
                             	 
                             	 <c:otherwise>  
                                <a href="#">${sessionScope.m_Name} 님</a>
                                <a href="/ShoppingMall/index.jsp">log out</a>
                              	</c:otherwise>
                              </c:choose>
                                <a href="/ShoppingMall/shop/faq.do">FAQs</a>
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
                        <div class="price">0원 </div>
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
                        <h4>FAQS</h4>
                        <div class="breadcrumb__links">
                            <a href="/ShoppingMall/index.jsp">Home</a>
                            <span>FAQS</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->






<!-- -------------------------------FAQ-------------------------------------------- -->





<section class="cd-faq js-cd-faq container max-width-md margin-top-lg margin-bottom-lg">
	<ul class="cd-faq__categories">
		<li><a class="cd-faq__category cd-faq__category-selected truncate" href="#basics">배송문의</a></li>
		<li><a class="cd-faq__category truncate" href="#mobile">주문결제문의</a></li>
		<li><a class="cd-faq__category truncate" href="#account">상품문의</a></li>
		<li><a class="cd-faq__category truncate" href="#payments">교환환불문의</a></li>
		<li><a class="cd-faq__category truncate" href="#other">기타문의사항</a></li>
	</ul> <!-- cd-faq__categories -->

	<div class="cd-faq__items">
		<ul id="basics" class="cd-faq__group">
			<li class="cd-faq__title"><h2>배송</h2></li>
			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>배송 관련 기본사항</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
            	
			 <p>BUA 스토어는 BUA 직배송과 입점 업체 배송으로 나뉩니다.</p> 
			<p>예약 배송, 해외 배송, 주문제작 상품 및 입점 업체 배송 스케쥴에 따라 배송 기간은 다를 수 있습니다.</p> 
			<p>- 월~금요일 : 당일 오전 까지 입금 확인 된 주문은 대부분 당일 출고되며 오후 주문은 익일 출고 처리됩니다.</p>
			<p>- 토요일 : 입점업체(브랜드)에 따라 토요일 출고 여부가 다르며 대부분의 업체는 토요일 출고를 진행하지 않습니다.</p>
			<p>- 일요일 및 공휴일 : 일요일 및 공휴일은 택배회사의 업무가 중단되어 다음 영업일에 확인 후 일괄적으로 출고됩니다. 추석 , 설날과 같은 연휴에는 주문량 및 택배사 배송 물량이 많아 발송이 순차적으로 진행되거나 배송 이동 중 지연이 발생할 수 있습니다.</p>
			<p>- 상품 출고 후 택배사의 사정에 따라 1일 이상 배송이 소요됩니다.</p>
			<p>- 입점업체(브랜드)마다 출고지가 다릅니다. 따라서 2개 이상의 업체(브랜드)를 주문 하셨을 경우, 각각 수령하게 됩니다.</p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>

			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>BUA 쇼핑몰은 배송비가 무료인가 맞나요?</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
			<p>네, 현재 BUA 스토어의 모든 상품의 배송비는 제주도 및 도서 산간지역 포함, 국내 전 지역 무료입니다.
			 다만, 일부 저가 상품의 경우, 업체에서 판매 가격을 배송비 포함으로 산정하여, 타 쇼핑몰과 상이할 수 있습니다.</p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>



			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>해외에서 주문배송이 가능한가요?</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
          <p>네, 현재 BUA 스토어의 모든 상품이 해외배송 가능합니다. </p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>
			
		</ul> <!-- cd-faq__group -->

		<ul id="mobile" class="cd-faq__group">
			<li class="cd-faq__title"><h2>주문결제문의</h2></li>
			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>주문 시 결제한도가 얼마인가요?</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
			<p>성인회원의 경우 - 일 200만원
			<p>미성년자 회원의 경우 - 일 30만원, 월 100만원까지 결제 가능합니다.</p>
			<p>2000년도 출생자의 경우 생일이 지난 다음달 1일에 '일반 회원'의 한도로 변경됩니다. (2019년 기준)</p>
			<p>위 한도는 표준 한도이며, 고객별 판매 품목이나 Risk등급에 따라 결제 가능 한도를 제한할 수 있습니다.</p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>

			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>가상계좌 입금시 주문자와 입금자 명이 동일해야 하나요?</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
			<p>가상계좌는 고객님께만 발급되는 일회성 계좌번호 입니다. 따라서 주문자와 입금자명이 다르더라도 입금이 가능합니다.</p>
			<p>단, 결제 금액의 1원 단위까지 정확히 맞춰야 입금 가능합니다</p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>

			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>해외카드로 결제가능한가요?</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
			<p>대한민국 외에서 발급된 해외 카드(VISA, MasterCard, JCB만 해당)도 결제 가능합니다.</p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>
		</ul> <!-- cd-faq__group -->

		<ul id="account" class="cd-faq__group">
			<li class="cd-faq__title"><h2>상품문의</h2></li>
			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>캐리오버 제품이 무엇인가요?</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
			<p>캐리오버(carry-over) 제품이란, 기본적인 아이템으로 특정 시즌에 상관없이 계속해서 생산, 판매되는 상품을 말합니다.</p>
			<p>이전 시즌에 동일한 디자인으로 판매된 상품이 최근 생산된 기간의 시즌을 기준으로 표시됩니다.</p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>

			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>사진과 제품의 실제 색상이 다른거 같아요.</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
			<p>온라인의 특성상 상품 이미지는 출력되는 모니터 환경에 따라 조금씩 차이가 있을 수 있으며 이는 판매자 사유에 의한 교환 및 환불 대상이 아닙니다.</p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>

			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>가격이 떨어져 예전에 구매했을 때 보다 싸게 파는 경우 차액 환불이 되나요?</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
			<p>판매 가격의 변동에 따른 차액을 보상해드리지 않습니다.</p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>

		
		</ul> <!-- cd-faq__group -->

		<ul id="payments" class="cd-faq__group">
			<li class="cd-faq__title"><h2>교환환불문의</h2></li>
			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>해외배송 상품도 교환이 가능한가요?</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
			<p>해외배송 상품은 왕복 택배 비용 및 관세/통관 비용 등으로 국내 배송 상품보다 교환 비용이 추가로 부담 됩니다. </p>
			<p>또한 교환 진행이 7일 이상 더 소요 되오니 신중한 구매 부탁 드립니다.</p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>

			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>교환은 동일한 상품의 옵션으로만 가능한가요?</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
			<p>교환 요청은 동일한 상품명의 옵션으로만 가능합니다. 상품명이 색상으로 나뉘어 있는 경우, 상품명이 다르므로 환불 요청 후 재주문 부탁드립니다.</p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>

		
		<ul id="other" class="cd-faq__group"> 
			<li class="cd-faq__title"><h2>기타문의사항</h2></li>
			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>여기 쇼핑몰 가짜맞죠?</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
         	<p> 네 사실 가짜입니다. </p>
          </div>
		

				</div> <!-- cd-faq__content -->
			</li>
		</ul> <!-- cd-faq__group -->
	</div> <!-- cd-faq__items -->

	<a href="#0" class="cd-faq__close-panel text-replace">Close</a>
  
  <div class="cd-faq__overlay" aria-hidden="true"></div>





</section> <!-- ----------------------------------------------- FAQ END ------------------------------------------------ -->





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
    <script src="/ShoppingMall/shop/js/jquery-3.3.1.min.js"></script>
    <script src="/ShoppingMall/shop/js/bootstrap.min.js"></script>
    <script src="/ShoppingMall/shop/js/jquery.nice-select.min.js"></script>
    <script src="/ShoppingMall/shop/js/jquery.nicescroll.min.js"></script>
    <script src="/ShoppingMall/shop/js/jquery.magnific-popup.min.js"></script>
    <script src="/ShoppingMall/shop/js/jquery.countdown.min.js"></script>
    <script src="/ShoppingMall/shop/js/jquery.slicknav.js"></script>
    <script src="/ShoppingMall/shop/js/mixitup.min.js"></script>
    <script src="/ShoppingMall/shop/js/owl.carousel.min.js"></script>
    <script src="/ShoppingMall/shop/js/main.js"></script>


<script src="/ShoppingMall/faq/js/util.js"></script> <!-- util functions included in the CodyHouse framework -->
<script src="/ShoppingMall/faq/js/main.js"></script> 
</body>
</html>