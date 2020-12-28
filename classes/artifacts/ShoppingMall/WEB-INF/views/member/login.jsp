<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <title>로그인 페이지</title>
  <!-- loader-->
  <link href="/ShoppingMall/admin/css/pace.min.css" rel="stylesheet"/>
	<script src="/ShoppingMall/admin//js/pace.min.js"></script>
  <!--favicon-->
  <link rel="icon" href="/ShoppingMall/admin/images/favicon.ico" type="image/x-icon">
  <!-- Bootstrap core CSS-->
  <link href="/ShoppingMall/admin/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- animate CSS-->
  <link href="/ShoppingMall/admin/css/animate.css" rel="stylesheet" type="text/css"/>
  <!-- Icons CSS-->
  <link href="/ShoppingMall/admin/css/icons.css" rel="stylesheet" type="text/css"/>
  <!-- Custom Style-->
  <link href="/ShoppingMall/admin/css/app-style.css" rel="stylesheet"/>
    <script src="/ShoppingMall/admin/js/jquery-3.5.1.js"></script>
    <script src="/ShoppingMall/member/js/login.js"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
    <a id="kakao-login-btn"></a>
    <a href="http://developers.kakao.com/logout"></a>



</head>

<body class="bg-theme bg-theme9">
<!-- KAKAO API-->



<!-- start loader -->
   <div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
   <!-- end loader -->

<!-- Start wrapper-->
 <div id="wrapper">

 <div class="loader-wrapper"><div class="lds-ring"><div></div><div></div><div></div><div></div></div></div>
	<div class="card card-authentication1 mx-auto my-5">
		<div class="card-body">
		 <div class="card-content p-2">
		 	<div class="text-center">
		 		<img src="/ShoppingMall/admin/images/logo-icon.png" alt="logo icon">
		 	</div>
		  <div class="card-title text-uppercase text-center py-3">사용자 로그인</div>
		    <form id="frm" method="post">
			  <div class="form-group">
			  <label for="m_Id" class="sr-only">Username</label>
			   <div class="position-relative has-icon-right">
				  <input type="text" id="m_Id" name="m_Id" class="form-control input-shadow" placeholder="아이디를 입력해 주세요.">
				  <div class="form-control-position">
					  <i class="icon-user"></i>
				  </div>
			   </div>
			  </div>
			  <div class="form-group">
			  <label for="m_Pass" class="sr-only">Password</label>
			   <div class="position-relative has-icon-right">
				  <input type="password" id="m_Pass" name="m_Pass" class="form-control input-shadow" placeholder="비밀번호를 입력해주세요">
				  <div class="form-control-position">
					  <i class="icon-lock"></i>
				  </div>
			   </div>
			  </div>
			 <div>
                 　　　
                 <a href="/ShoppingMall/member/idsearch.do">아이디 찾기</a>
                 　　　
			  <a href="/ShoppingMall/member/reset-password.do">비밀번호 찾기</a>
			 </div>
                <div class="form-row">
                    <div class="form-group col-6">
                        <div class="icheck-material-white">
                            <input type="checkbox" id="user-checkbox" checked="" />
                            <label for="user-checkbox">자동 로그인</label>
                        </div>
                    </div>
			</div>
                <button type="button" id="btn_login" class="btn btn-light btn-block">로그인</button></br>
                <script type='text/javascript'>
                    //<![CDATA[
                    // 사용할 앱의 JavaScript 키를 설정해 주세요.
                    Kakao.init('614be520fd0601d34596bc8743820bae');  //여기서 아까 발급받은 키 중 javascript키를 사용해준다.
                    // 카카오 로그인 버튼을 생성합니다.
                    Kakao.Auth.createLoginButton({

                        container: '#kakao-login-btn',

                        success: function(authObj) {

                            Kakao.API.request({

                                url: '/v1/user/me',

                                success: function(res) {

                                    alert(JSON.stringify(res)); //<---- kakao.api.request 에서 불러온 결과값 json형태로 출력

                                    alert(JSON.stringify(authObj)); //<----Kakao.Auth.createLoginButton에서 불러온 결과값 json형태로 출력

                                    console.log(res.id);//<---- 콘솔 로그에 id 정보 출력(id는 res안에 있기 때문에  res.id 로 불러온다)

                                    console.log(res.kaccount_email);//<---- 콘솔 로그에 email 정보 출력 (어딨는지 알겠죠?)

                                    console.log(res.properties['nickname']);//<---- 콘솔 로그에 닉네임 출력(properties에 있는 nickname 접근

                                    // res.properties.nickname으로도 접근 가능 )

                                    console.log(authObj.access_token);//<---- 콘솔 로그에 토큰값 출력

                                }

                            })

                        },

                        fail: function(error) {

                            alert(JSON.stringify(error));

                        }

                    });

                    //]]>

                </script>

			</form>
		   </div>
		  </div>
		  <div class="card-footer text-center py-3">
              <p class="text-warning mb-0">아이디가 없으신가요? <a href="/ShoppingMall/member/register.do"> 회원가입</a></p>
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
      <hr>exampleInputEmailAddress
      
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
  <script src="/ShoppingMall/admin/js/jquery.min.js"></script>
  <script src="/ShoppingMall/admin/js/popper.min.js"></script>
  <script src="/ShoppingMall/admin/js/bootstrap.min.js"></script>
	
  <!-- sidebar-menu js -->
  <script src="/ShoppingMall/admin/js/sidebar-menu.js"></script>
  
  <!-- Custom scripts -->
  <script src="/ShoppingMall/admin/js/app-script.js"></script>
  
</body>
</html>
