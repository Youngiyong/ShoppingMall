<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <title>상품 등록 페이지</title>
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
       <h5 class="logo-text">Dashtreme Admin</h5>
     </a>
   </div>
   <ul class="sidebar-menu do-nicescrol">
      <li class="sidebar-header">MAIN NAVIGATION</li>
      <li>
        <a href="/ShoppingMall/admin/index.do">
          <i class="zmdi zmdi-view-dashboard"></i> <span>Dashboard</span>
        </a>
      </li>

      <li>
        <a href="/ShoppingMall/admin/icons.do">
          <i class="zmdi zmdi-invert-colors"></i> <span>UI Icons</span>
        </a>
      </li>

       <li>
           <a href="/ShoppingMall/admin/product.do">
               <i class="fa fa-shopping-cart"></i> <span>상품 등록</span>
           </a>
       </li>


       <li>
        <a href="/ShoppingMall/admin/forms.do">
          <i class="zmdi zmdi-format-list-bulleted"></i> <span>Forms</span>
        </a>
      </li>

      <li>
        <a href="/ShoppingMall/admin/tables.do">
          <i class="zmdi zmdi-grid"></i> <span>Tables</span>
        </a>
      </li>

      <li>
        <a href="/ShoppingMall/admin/calendar.do">
          <i class="zmdi zmdi-calendar-check"></i> <span>Calendar</span>
          <small class="badge float-right badge-light">New</small>
        </a>
      </li>

      <li>
        <a href="/ShoppingMall/admin/profile.do">
          <i class="zmdi zmdi-face"></i> <span>Profile</span>
        </a>
      </li>

      <li>
        <a href="/ShoppingMall/admin/login.do" target="_blank">
          <i class="zmdi zmdi-lock"></i> <span>Login</span>
        </a>
      </li>

       <li>
        <a href="/ShoppingMall/admin/register.do" target="_blank">
          <i class="zmdi zmdi-account-circle"></i> <span>Registration</span>
        </a>
      </li>
	  
      <li class="sidebar-header">LABELS</li>
      <li><a href="javaScript:void();"><i class="zmdi zmdi-coffee text-danger"></i> <span>Important</span></a></li>
      <li><a href="javaScript:void();"><i class="zmdi zmdi-chart-donut text-success"></i> <span>Warning</span></a></li>
      <li><a href="javaScript:void();"><i class="zmdi zmdi-share text-info"></i> <span>Information</span></a></li>

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
            <h6 class="mt-2 user-title">Sarajhon Mccoy</h6>
            <p class="user-subtitle">mccoy@example.com</p>
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
     <br/>
     <br/>
     <br/>
     <br/>
     <br/>
     <br/>
     <div class="container tm-mt-big tm-mb-big">
         <div class="row">
             <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
                 <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                     <div class="row">
                         <div class="col-12">
                             <h2 class="tm-block-title d-inline-block">상품 추가</h2>
                         </div>
                     </div>
                     <div class="row tm-edit-product-row">
                         <div class="col-xl-6 col-lg-6 col-md-12">
                             <form action="" class="tm-edit-product-form">
                                 <div class="form-group mb-3">
                                     <label
                                             for="name"
                                     >상품명
                                     </label>
                                     <input
                                             id="name"
                                             name="name"
                                             type="text"
                                             class="form-control validate"
                                             required
                                     />
                                 </div>
                                 <div class="form-group mb-3">
                                     <label
                                             for="description"
                                     >상품설명</label
                                     >
                                     <textarea
                                             class="form-control validate"
                                             rows="3"
                                             required
                                     ></textarea>
                                 </div>
                                 <div class="form-group mb-3">
                                     <label
                                             for="category"
                                     >카테고리</label
                                     >
                                     <select
                                             class="custom-select tm-select-accounts"
                                             id="category"
                                     >
                                         <option selected>남성의류</option>
                                         <option value="1">여성의류</option>
                                         <option value="2">가방</option>
                                         <option value="3">시계</option>
                                         <option value="4">신발</option>
                                         <option value="5">악세서리</option>
                                         <option value="6">캐주얼의류</option>
                                     </select>
                                 </div>
                                 <div class="row">
                                     <div class="form-group mb-3 col-xs-12 col-sm-6">
                                         <label
                                                 for="expire_date"
                                         >상품 가격
                                         </label>
                                         <input
                                                 id="expire_date"
                                                 name="expire_date"
                                                 type="text"
                                                 class="form-control validate"
                                                 data-large-mode="true"
                                         />
                                     </div>
                                     <div class="form-group mb-3 col-xs-12 col-sm-6">
                                         <label
                                                 for="stock"
                                         >상품 수량
                                         </label>
                                         <input
                                                 id="stock"
                                                 name="stock"
                                                 type="text"
                                                 class="form-control validate"
                                                 required
                                         />
                                     </div>
                                 </div>

                         </div>
                         <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                             </br>
                             </br>
                             <div class="tm-product-img-dummy mx-auto">
                                 <i
                                         class="fas fa-cloud-upload-alt tm-upload-icon"
                                         onclick="document.getElementById('fileInput').click();"
                                 ></i>
                             </div>
                             <div class="custom-file mt-3 mb-3">
                                 <input id="fileInput" type="file" style="display:none;" />
                                 <input
                                         type="button"
                                         class="btn btn-primary btn-block mx-auto"
                                         value="상품 이미지 업로드"
                                         onclick="document.getElementById('fileInput').click();"
                                 />
                             </div>
                         </div>
                         <br/>
                         <div class="col-12">
                             <button type="submit" class="btn btn-primary btn-block text-uppercase">상품 추가</button>
                         </div>
                         </form>
                     </div>
                 </div>
             </div>
         </div>
     </div>
<%--<div class="clearfix"></div>--%>
	<%----%>
  <%--<div class="content-wrapper">--%>
    <%--<div class="container-fluid">--%>

    <%--<div class="row mt-3">--%>
      <%--<div class="col-lg-6">--%>
         <%--<div class="card">--%>
           <%--<div class="card-body">--%>
           <%--<div class="card-title">Vertical Form</div>--%>
           <%--<hr>--%>
            <%--<form>--%>
           <%--<div class="form-group">--%>
            <%--<label for="input-1">Name</label>--%>
            <%--<input type="text" class="form-control" id="input-1" placeholder="Enter Your Name">--%>
           <%--</div>--%>
           <%--<div class="form-group">--%>
            <%--<label for="input-2">Email</label>--%>
            <%--<input type="text" class="form-control" id="input-2" placeholder="Enter Your Email Address">--%>
           <%--</div>--%>
           <%--<div class="form-group">--%>
            <%--<label for="input-3">Mobile</label>--%>
            <%--<input type="text" class="form-control" id="input-3" placeholder="Enter Your Mobile Number">--%>
           <%--</div>--%>
           <%--<div class="form-group">--%>
            <%--<label for="input-4">Password</label>--%>
            <%--<input type="text" class="form-control" id="input-4" placeholder="Enter Password">--%>
           <%--</div>--%>
           <%--<div class="form-group">--%>
            <%--<label for="input-5">Confirm Password</label>--%>
            <%--<input type="text" class="form-control" id="input-5" placeholder="Confirm Password">--%>
           <%--</div>--%>
           <%--<div class="form-group py-2">--%>
             <%--<div class="icheck-material-white">--%>
            <%--<input type="checkbox" id="user-checkbox1" checked=""/>--%>
            <%--<label for="user-checkbox1">I Agree Terms & Conditions</label>--%>
            <%--</div>--%>
           <%--</div>--%>
           <%--<div class="form-group">--%>
            <%--<button type="submit" class="btn btn-light px-5"><i class="icon-lock"></i> Register</button>--%>
          <%--</div>--%>
          <%--</form>--%>
         <%--</div>--%>
         <%--</div>--%>
      <%--</div>--%>

      <%--<div class="col-lg-6">--%>
        <%--<div class="card">--%>
           <%--<div class="card-body">--%>
           <%--<div class="card-title">Round Vertical Form</div>--%>
           <%--<hr>--%>
            <%--<form>--%>
           <%--<div class="form-group">--%>
            <%--<label for="input-6">Name</label>--%>
            <%--<input type="text" class="form-control form-control-rounded" id="input-6" placeholder="Enter Your Name">--%>
           <%--</div>--%>
           <%--<div class="form-group">--%>
            <%--<label for="input-7">Email</label>--%>
            <%--<input type="text" class="form-control form-control-rounded" id="input-7" placeholder="Enter Your Email Address">--%>
           <%--</div>--%>
           <%--<div class="form-group">--%>
            <%--<label for="input-8">Mobile</label>--%>
            <%--<input type="text" class="form-control form-control-rounded" id="input-8" placeholder="Enter Your Mobile Number">--%>
           <%--</div>--%>
           <%--<div class="form-group">--%>
            <%--<label for="input-9">Password</label>--%>
            <%--<input type="text" class="form-control form-control-rounded" id="input-9" placeholder="Enter Password">--%>
           <%--</div>--%>
           <%--<div class="form-group">--%>
            <%--<label for="input-10">Confirm Password</label>--%>
            <%--<input type="text" class="form-control form-control-rounded" id="input-10" placeholder="Confirm Password">--%>
           <%--</div>--%>
           <%--<div class="form-group py-2">--%>
             <%--<div class="icheck-material-white">--%>
            <%--<input type="checkbox" id="user-checkbox2" checked=""/>--%>
            <%--<label for="user-checkbox2">I Agree Terms & Conditions</label>--%>
            <%--</div>--%>
           <%--</div>--%>
           <%--<div class="form-group">--%>
            <%--<button type="submit" class="btn btn-light btn-round px-5"><i class="icon-lock"></i> Register</button>--%>
          <%--</div>--%>
          <%--</form>--%>
         <%--</div>--%>
         <%--</div>--%>
      <%--</div>--%>
    <%--</div><!--End Row-->--%>

	<%--<!--start overlay-->--%>
		  <%--<div class="overlay toggle-menu"></div>--%>
		<%--<!--end overlay-->--%>

    <%--</div>--%>
    <%--<!-- End container-fluid-->--%>
    <%----%>
   <%--</div><!--End content-wrapper-->--%>


   <%--<!--Start Back To Top Button-->--%>
    <%--<a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>--%>
    <%--<!--End Back To Top Button-->--%>
	<%----%>
	<%--<!--Start footer-->--%>
	<%--<footer class="footer">--%>
      <%--<div class="container">--%>
        <%--<div class="text-center">--%>
            <%--</br>--%>
            <%--</br>--%>
            <%--</br>--%>
            <%--</br>--%>
          <%--Copyright © 2018 Dashtreme Admin--%>
        <%--</div>--%>
      <%--</div>--%>
    <%--</footer>--%>
	<%--<!--End footer-->--%>
	<%----%>
	<%--<!--start color switcher-->--%>
   <%--<div class="right-sidebar">--%>
    <%--<div class="switcher-icon">--%>
      <%--<i class="zmdi zmdi-settings zmdi-hc-spin"></i>--%>
    <%--</div>--%>
    <%--<div class="right-sidebar-content">--%>

      <%--<p class="mb-0">Gaussion Texture</p>--%>
      <%--<hr>--%>
      <%----%>
      <%--<ul class="switcher">--%>
        <%--<li id="theme1"></li>--%>
        <%--<li id="theme2"></li>--%>
        <%--<li id="theme3"></li>--%>
        <%--<li id="theme4"></li>--%>
        <%--<li id="theme5"></li>--%>
        <%--<li id="theme6"></li>--%>
      <%--</ul>--%>

      <%--<p class="mb-0">Gradient Background</p>--%>
      <%--<hr>--%>
      <%----%>
      <%--<ul class="switcher">--%>
        <%--<li id="theme7"></li>--%>
        <%--<li id="theme8"></li>--%>
        <%--<li id="theme9"></li>--%>
        <%--<li id="theme10"></li>--%>
        <%--<li id="theme11"></li>--%>
        <%--<li id="theme12"></li>--%>
		<%--<li id="theme13"></li>--%>
        <%--<li id="theme14"></li>--%>
        <%--<li id="theme15"></li>--%>
      <%--</ul>--%>
      <%----%>
     <%--</div>--%>
   <%--</div>--%>
  <%--<!--end color switcher-->--%>
   <%----%>
  <%--</div><!--End wrapper-->--%>


  <!-- Bootstrap core JavaScript-->
  <script src="/ShoppingMall/admin/assets/js/jquery.min.js"></script>
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
