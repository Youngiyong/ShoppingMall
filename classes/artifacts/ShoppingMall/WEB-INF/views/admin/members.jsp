<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <title>상품 등록 페이지 ID: ${sessionScope.a_Id} </title>
  <!-- loader-->
  <link href="/ShoppingMall/admin/assets/css/pace.min.css" rel="stylesheet"/>
  <script src="/ShoppingMall/admin/assets/js/pace.min.js"></script>
  <!--favicon-->
  <link rel="icon" href="/ShoppingMall/admin/assets/images/favicon.ico" type="image/x-icon">
  <!-- simplebar CSS-->
  <link href="/ShoppingMall/admin/assets/plugins/simplebar/css/simplebar.css" rel="stylesheet"/>
  <!-- Bootstrap core CSS-->
  <link href="/ShoppingMall/admin/assets/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- animate CSS-->
  <link href="/ShoppingMall/admin/assets/css/animate.css" rel="stylesheet" type="text/css"/>
  <!-- Icons CSS-->
  <link href="/ShoppingMall/admin/assets/css/icons.css" rel="stylesheet" type="text/css"/>
  <!-- Sidebar CSS-->
  <link href="/ShoppingMall/admin/assets/css/sidebar-menu.css" rel="stylesheet"/>
  <!-- Custom Style-->
    <link href="/ShoppingMall/admin/assets/css/app-style.css" rel="stylesheet"/>

    <link href="/ShoppingMall/admin/assets/css/templatemo-style.css" rel="stylesheet"/>
    <script src="/ShoppingMall/admin/js/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="/ShoppingMall/admin/js/member.js"></script>
    <style>
        #product_regist{
            color : white;
        }
        #file {
            color: white;
        }
    </style>
</head>

<body class="bg-theme bg-theme9">

<!-- start loader -->
   <div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
   <!-- end loader -->

<!-- Start wrapper-->
 <div id="wrapper">

 <!--Start sidebar-wrapper-->
     <div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
         <div class="brand-logo">
             <a href="/ShoppingMall/admin/index.do">
                 <img src="/ShoppingMall/admin/assets/images/logo-icon.png" class="logo-icon" alt="logo icon">
                 <h5 class="logo-text">B U A 　 </h5>
             </a>
         </div>
         <ul class="sidebar-menu do-nicescrol">
             <li class="sidebar-header">관리자 페이지</li>
                 <a href="/ShoppingMall/admin/index.do">
                     <i class="zmdi zmdi-view-dashboard"></i> <span>메인 화면</span>
                 </a>
             </li>

             <li>
                 <a href="/ShoppingMall/admin/members.do" >
                     <i class="zmdi zmdi-account-circle"></i> <span>회원 관리</span>
                 </a>
             </li>
             <li>

             <li>
                 <a href="/ShoppingMall/admin/product.do">
                     <i class="fa fa-shopping-cart"></i> <span>상품 등록</span>
                 </a>
             </li>


             <li>
                 <a href="/ShoppingMall/admin/products.do">
                     <i class="zmdi zmdi-grid"></i> <span> 상품 정보</span>
                 </a>
             </li>

             <li>
                 <a href="/ShoppingMall/admin/orders.do">
                     <i class="zmdi zmdi-assignment-o"></i> <span> 주문 정보</span>
                 </a>
             </li>
         </ul>

     </div>
   <!--End sidebar-wrapper-->


<!--Start topbar header-->
    <header class="topbar-nav">
        <nav class="navbar navbar-expand fixed-top">
            <ul class="navbar-nav mr-auto align-items-center">
                <li class="nav-item">
                    <a class="nav-link toggle-menu" href="javascript:void();">
                        <i class="icon-menu menu-icon"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <form class="search-bar">
                        <input type="text" class="form-control" placeholder="Enter keywords">
                        <a href="javascript:void();"><i class="icon-magnifier"></i></a>
                    </form>
                </li>
            </ul>

            <ul class="navbar-nav align-items-center right-nav-link">
                <li class="nav-item dropdown-lg">
                    <a class="nav-link dropdown-toggle dropdown-toggle-nocaret waves-effect" data-toggle="dropdown" href="javascript:void();">
                        <i class="fa fa-envelope-open-o"></i></a>
                </li>
                <li class="nav-item dropdown-lg">
                    <a class="nav-link dropdown-toggle dropdown-toggle-nocaret waves-effect" data-toggle="dropdown" href="javascript:void();">
                        <i class="fa fa-bell-o"></i></a>
                </li>
                <li class="nav-item language">
                    <a class="nav-link dropdown-toggle dropdown-toggle-nocaret waves-effect" data-toggle="dropdown" href="javascript:void();"><i class="fa fa-flag"></i></a>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li class="dropdown-item"> <i class="flag-icon flag-icon-gb mr-2"></i> English</li>
                        <li class="dropdown-item"> <i class="flag-icon flag-icon-fr mr-2"></i> French</li>
                        <li class="dropdown-item"> <i class="flag-icon flag-icon-cn mr-2"></i> Chinese</li>
                        <li class="dropdown-item"> <i class="flag-icon flag-icon-de mr-2"></i> German</li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown" href="#">
                        <span class="user-profile"><img src="https://via.placeholder.com/110x110" class="img-circle" alt="user avatar"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li class="dropdown-item user-details">
                            <a href="javaScript:void();">
                                <div class="media">
                                    <div class="avatar"><img class="align-self-start mr-3" src="https://via.placeholder.com/110x110" alt="user avatar"></div>
                                    <div class="media-body">
                                        <h6 class="mt-2 user-title">${adminVO.a_Id}</h6>
                                        <p class="user-subtitle">${a_Email}</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="dropdown-divider"></li>
                        <li class="dropdown-item"><i class="icon-envelope mr-2"></i> Inbox</li>
                        <li class="dropdown-divider"></li>
                        <li class="dropdown-item"><i class="icon-wallet mr-2"></i> Account</li>
                        <li class="dropdown-divider"></li>
                        <li class="dropdown-item"><i class="icon-settings mr-2"></i> Setting</li>
                        <li class="dropdown-divider"></li>
                        <li class="dropdown-item"><i class="icon-power mr-2"></i> Logout</li>
                    </ul>
                </li>
            </ul>
        </nav>
</header>
<!--End topbar header-->

     <div class="container tm-mt-big tm-mb-big">
         <div class="row">
             <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
                 <br class="tm-bg-primary-dark tm-block tm-block-h-auto">

                     <table class="table table-hover tm-table-small tm-product-table">
                         <thead>
                         </br></br></br></br></br>
                         <h3>회원 정보</h3>
                         </br>
                         <tr>
                             <th scope="col">&nbsp;</th>
                             <th scope="col">회원코드</th>
                             <th scope="col">아이디</th>
                             <th scope="col">패스워드</th>
                             <th scope="col">이름</th>
                             <th scope="col">나이</th>
                             <th scope="col">전화번호</th>
                             <th scope="col">이메일</th>
                             <th scope="col">지역</th>
                             <th scope="col">주소</th>
                             <%--<th scope="col">상태</th>--%>

                         </tr>

                         </thead>

                         <form id="frm" method="post">
                         <tbody>
                         <c:forEach items="${memberList}" var="member">
                             <tr>
                                 <th scope="row"><input class="checkSelect" type="checkbox" name="box[]"/></th>
                                 <td class="m_Code">${member.m_Code}</td>
                                 <td class="m_Id">${member.m_Id}</td>
                                 <td contenteditable='true' class="m_Pass">${member.m_Pass}</td>
                                 <td contenteditable='true' class="m_Name">${member.m_Name}</td>
                                 <td contenteditable='true' class="m_Age">${member.m_Age}</td>
                                 <td contenteditable='true' class="m_Tel">${member.m_Tel}</td>
                                 <td contenteditable='true' class="m_Email">${member.m_Email}</td>
                                 <td contenteditable='true' class="m_Addr">${member.m_Addr}</td>
                                 <td contenteditable='true' class="m_Country">${member.m_Country}</td>
                                 <%--<td contenteditable='true' class="m_Status">${member.m_Status}</td>--%>
                             </c:forEach>
                         </tbody>

                         </form>
                     </table>
                 </div>


                 <%--<!--end color switcher-->--%>
                 <%----%>
                 <%--</div><!--End wrapper-->--%>


                 <!-- table container -->
                 <a
                         id="btn_delete"
                         class="btn btn-primary btn-block text-uppercase mb-3">회원 삭제</a>
                 <a
                         id="btn_modify"
                         class="btn btn-primary btn-block text-uppercase mb-3">회원 정보 수정</a>
             </div>
         </div>

     <%--<!--end color switcher-->--%>
   <%----%>
  <%--</div><!--End wrapper-->--%>


  <!-- Bootstrap core JavaScript-->

  <script src="/ShoppingMall/admin/assets/js/popper.min.js"></script>
  <script src="/ShoppingMall/admin/assets/js/bootstrap.min.js"></script>
	
 <!-- simplebar js -->
  <script src="/ShoppingMall/admin/assets/plugins/simplebar/js/simplebar.js"></script>
  <!-- sidebar-menu js -->
  <script src="/ShoppingMall/admin/assets/js/sidebar-menu.js"></script>
  
  <!-- Custom scripts -->
  <script src="/ShoppingMall/admin/assets/js/app-script.js"></script>
	
</body>
</html>
