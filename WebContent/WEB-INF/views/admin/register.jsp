<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <title>관리자 회원가입 페이지</title>
  <!-- loader-->
  <link href="/ShoppingMall/admin/assets/css/pace.min.css" rel="stylesheet"/>
  <script src="/ShoppingMall/admin/assets/js/pace.min.js"></script>
  <!--favicon-->
  <link rel="icon" href="/ShoppingMall/admin/assets/images/favicon.ico" type="image/x-icon">
  <!-- Bootstrap core CSS-->
  <link href="/ShoppingMall/admin/assets/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- animate CSS-->
  <link href="/ShoppingMall/admin/assets/css/animate.css" rel="stylesheet" type="text/css"/>
  <!-- Icons CSS-->
  <link href="/ShoppingMall/admin/assets/css/icons.css" rel="stylesheet" type="text/css"/>
  <!-- Custom Style-->
  <link href="/ShoppingMall/admin/assets/css/app-style.css" rel="stylesheet"/>
  <script src="/ShoppingMall/admin/js/jquery-3.5.1.js"></script>
  <script src="/ShoppingMall/admin/js/register.js"></script>
</head>

<body class="bg-theme bg-theme9">

<!-- start loader -->
   <div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
   <!-- end loader -->

<!-- Start wrapper-->
 <div id="wrapper">

	<div class="card card-authentication1 mx-auto my-4">
		<div class="card-body">
		 <div class="card-content p-2">
		 	<div class="text-center">
		 		<img src="/ShoppingMall/admin/assets/images/logo-icon.png" alt="logo icon">
		 	</div>
		  <div class="card-title text-uppercase text-center py-3">회원가입</div>
		    <form id="frm" method="post">
                <div class="form-group">
                    <label for="a_Id" class="sr-only">ID</label>
                    <div class="position-relative has-icon-right">
                        <input type="text" id="a_Id" name="a_Id" class="form-control input-shadow" placeholder="아이디를 입력해주세요.">
                        <span id="idCheckResult" style="width:150px;color:red"></span>
                        <div class="form-control-position">
                            <i class="icon-lock"></i>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="a_Pass" class="sr-only">Password</label>
                    <div class="position-relative has-icon-right">
                        <input type="password" id="a_Pass" name="a_Pass" class="form-control input-shadow" placeholder="비밀번호를 입력해주세요.">
                        <span id="passwordwCheckResult1" style="width:150px;color:red;"></span>
                        <div class="form-control-position">
                            <i class="icon-lock"></i>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="a_Pass2" class="sr-only">Password</label>
                    <div class="position-relative has-icon-right">
                        <input type="password" id="a_Pass2" name="a_Pass2" class="form-control input-shadow" placeholder="비밀번호를 입력해주세요.">
                        <span id="passwordCheckResult2" style="width:150px;color:red;"></span>
                        <div class="form-control-position">
                            <i class="icon-lock"></i>
                        </div>
                    </div>
                </div>
			  <div class="form-group">
			  <label for="a_Name" class="sr-only">Name</label>
			   <div class="position-relative has-icon-right">
				  <input type="text" id="a_Name" name="a_Name" class="form-control input-shadow" placeholder="이름을 입력해 주세요">
                   <span id="nameCheckResult" style="width:150px;color:red;"></span>
				  <div class="form-control-position">
					  <i class="icon-user"></i>
				  </div>
			   </div>
			  </div>
			  <div class="form-group">
			  <label for="a_Email" class="sr-only">Email ID</label>
			   <div class="position-relative has-icon-right">
				  <input type="text" id="a_Email" name="a_Email" class="form-control input-shadow" placeholder="이메일 주소를 입력해 주세요.">
                   <span id="emailCheckResult" style="width:150px;color:red;"></span>
				  <div class="form-control-position">
					  <i class="icon-envelope-open"></i>
				  </div>
			   </div>
			  </div>

			  
			   <div class="form-group">
			     <div class="icheck-material-white">
                   <input type="checkbox" id="user-checkbox" checked="" />
                   <label for="user-checkbox">이용약관에 동의합니다.</label>
			     </div>
			    </div>
			  
			 <button type="button" id="btn_join" class="btn btn-light btn-block waves-effect waves-light">회원가입</button>
			  <div class="text-center mt-3"></div>
			 </form>
		   </div>
		  </div>
		  <div class="card-footer text-center py-3">
		    <p class="text-warning mb-0">이미 계정이 있으신가요? <a href="/ShoppingMall/admin/login.do"> 로그인</a></p>
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
  <script src="/ShoppingMall/admin/assets/js/app-script.js"></script>
  
</body>
</html>
