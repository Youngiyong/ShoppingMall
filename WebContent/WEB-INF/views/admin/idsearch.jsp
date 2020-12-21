<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <title>비밀번호 찾기</title>
  <!-- loader-->
  <link href="/ShoppingMall/admin/assets/css/pace.min.css" rel="stylesheet"/>
  <script src="/ShoppingMall/admin/assets/js/pace.min.js"></script>
  <link rel="icon" href="/ShoppingMall/admin/assets/images/favicon.ico" type="image/x-icon">
  <!-- Bootstrap core CSS-->
  <link href="/ShoppingMall/admin/assets/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- animate CSS-->
  <link href="/ShoppingMall/admin/assets/css/animate.css" rel="stylesheet" type="text/css"/>
  <!-- Icons CSS-->
  <link href="/ShoppingMall/admin/assets/css/icons.css" rel="stylesheet" type="text/css"/>
  <!-- Custom Style-->
  <link href="/ShoppingMall/admin/assets/css/app-style.css" rel="stylesheet"/>
    <script type="text/javascript" src="/ShoppingMall/admin/js/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="/ShoppingMall/admin/js/idsearch.js"></script>
</head>

<body class="bg-theme bg-theme9">

<!-- Start wrapper-->
 <div id="wrapper">

 <div class="height-100v d-flex align-items-center justify-content-center">
	<div class="card card-authentication1 mb-0">
		<div class="card-body">
		 <div class="card-content p-2">
		  <div class="card-title text-uppercase pb-2">아이디 찾기</div>
		    <p class="pb-2">이메일 주소를 입력해주세요. </br>이메일로 아이디 정보가 발송됩니다. </p>
		    <form id="frm" method="post">
			  <div class="form-group">
			  <label for="a_Email" class="">이메일</label>
			   <div class="position-relative has-icon-right">
				  <input type="text" id="a_Email" name="a_Email" class="form-control input-shadow" placeholder="이메일 주소">
				  <div class="form-control-position">
					  <i class="icon-envelope-open"></i>
				  </div>
			   </div>
			  </div>
			 
			  <button type="button" id=idSearch_btn class="btn btn-light btn-block mt-3">아이디 찾기</button>
			 </form>
		   </div>
		  </div>
		   <div class="card-footer text-center py-3">
		    <p class="text-warning mb-0">로그인 페이지 <a href="/ShoppingMall/admin/login.do"> 이동</a></p>
		  </div>
	     </div>
	     </div>
    
     <!--Start Back To Top Button-->
    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <!--End Back To Top Button-->
	
	<!--start color switcher-->
   <div class="right-sidebar">
    <div class="switcher-icon">
      <i class="zmdi zmdi-settings zmdi-hc-spin"></i>
    </div>
    <div class="right-sidebar-content">

      <p class="mb-0">Gaussion Texture</p>
      <hr>
      
      <ul class="switcher">
        <li id="theme1"></li>
        <li id="theme2"></li>
        <li id="theme3"></li>
        <li id="theme4"></li>
        <li id="theme5"></li>
        <li id="theme6"></li>
      </ul>

      <p class="mb-0">Gradient Background</p>
      <hr>
      
      <ul class="switcher">
        <li id="theme7"></li>
        <li id="theme8"></li>
        <li id="theme9"></li>
        <li id="theme10"></li>
        <li id="theme11"></li>
        <li id="theme12"></li>
		<li id="theme13"></li>
        <li id="theme14"></li>
        <li id="theme15"></li>
      </ul>
      
     </div>
   </div>
  <!--end color switcher-->
	
	</div><!--wrapper-->
	
  <!-- Bootstrap core JavaScript-->
  <script src="/ShoppingMall/admin/assets/js/jquery.min.js"></script>
  <script src="/ShoppingMall/admin/assets/js/popper.min.js"></script>
  <script src="/ShoppingMall/admin/assets/js/bootstrap.min.js"></script>
	
  <!-- sidebar-menu js -->
  <script src="/ShoppingMall/admin/assets/js/sidebar-menu.js"></script>
  
  <!-- Custom scripts -->
  <script src=/ShoppingMall/admin/assets/js/app-script.js"></script>
  
	
</body>
</html>
