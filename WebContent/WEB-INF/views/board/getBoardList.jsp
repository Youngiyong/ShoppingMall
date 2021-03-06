<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>



<head>
   <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BUA 게시판</title>

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

<title>글 목록</title>
</head>

<style>
/*구글 웹 폰트 적용*/
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Nanum+Gothic:wght@700&family=Noto+Sans+KR:wght@500&display=swap');

	.jm-font{
		font-family: 'Noto Sans KR', sans-serif;
		color: black;
		font-size:21px;
	}
	
	.tm-font{
		font-family: 'Noto Sans KR', sans-serif;
		color: black;
		font-size:28px;
	}
		.em-font{
		font-family: 'Noto Sans KR', sans-serif;
		color: black;
		font-size:22px;
	}
	
</style>


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
                <a href="/ShoppingMall/shop/faq.do">FAQs</a>
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
                        <a href="/ShoppingMall/shop/shopping-cart.do"><img src="/ShoppingMall/shop/img/icon/cart.png" alt=""> <span>0</span></a>
                        <div class="price">0원</div>
                    </div>
                </div>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </header>
    <!-- Header Section End -->



<!--******************************** 게시판 목록 ********************************** -->



<p class="tm-font" align="center"></p>
	

	<table border="1"  class="jm-font" align="center" >
			<tr>
				<th bgcolor="grey" width="130">글번호</th>
				<th bgcolor="grey" width="220">제목</th>
				<th bgcolor="grey" width="220">그룹</th>
				<th bgcolor="grey" width="170">작성자</th>
				<th bgcolor="grey" width="260">등록일</th>
				<th bgcolor="grey" width="130">조회수</th>
				<!-- 추가 -->
			
			</tr>
			<c:forEach items="${boardList}" var="board">
				<!-- 프라퍼티이름 변경 -->
				<tr>
					<td>${board.b_code }</td>
					<td align="left"><a href="getBoard.do?b_code=${board.b_code }">
							${board.b_title }</a></td>
					<td>${board.b_group }</td>		
					<td>${board.m_id }</td>
					<td>${board.b_date }</td>
					<td>${board.b_count }</td>
					
				</tr>
			</c:forEach>
		</table>
<p class="em-font" align="center">
		<br> <a href="insertBoard.do" >【새 글 등록하기 ▶】</a>
<p/>




<!-- ************************************** 게시판 End *************************************** -->


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
    
</body>
</html>