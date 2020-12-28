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
  <script src="/ShoppingMall/member/js/register.js"></script>
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
                    <label for="m_Id" class="sr-only">ID</label>
                    <div class="position-relative has-icon-right">
                        <input type="text" id="m_Id" name="m_Id" class="form-control input-shadow" placeholder="아이디를 입력해주세요.">
                        <span id="idCheckResult" style="width:150px;color:red"></span>
                        <div class="form-control-position">
                            <i class="icon-lock"></i>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="m_Pass" class="sr-only">Password</label>
                    <div class="position-relative has-icon-right">
                        <input type="password" id="m_Pass" name="m_Pass" class="form-control input-shadow" placeholder="비밀번호를 입력해주세요.">
                        <span id="passwordwCheckResult1" style="width:150px;color:red;"></span>
                        <div class="form-control-position">
                            <i class="icon-lock"></i>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="m_Pass2" class="sr-only">Password</label>
                    <div class="position-relative has-icon-right">
                        <input type="password" id="m_Pass2" name="m_Pass2" class="form-control input-shadow" placeholder="비밀번호를 입력해주세요.">
                        <span id="passwordCheckResult2" style="width:150px;color:red;"></span>
                        <div class="form-control-position">
                            <i class="icon-lock"></i>
                        </div>
                    </div>
                </div>
			  <div class="form-group">
			  <label for="m_Name" class="sr-only">Name</label>
			   <div class="position-relative has-icon-right">
				  <input type="text" id="m_Name" name="m_Name" class="form-control input-shadow" placeholder="이름을 입력해 주세요">
                   <span id="nameCheckResult" style="width:150px;color:red;"></span>
				  <div class="form-control-position">
					  <i class="icon-user"></i>
				  </div>
			   </div>
			  </div>
			  <div class="form-group">
			  <label for="m_Email" class="sr-only">Email ID</label>
			   <div class="position-relative has-icon-right">
				  <input type="text" id="m_Email" name="m_Email" class="form-control input-shadow" placeholder="이메일 주소를 입력해 주세요.">
                   <span id="emailCheckResult" style="width:150px;color:red;"></span>
				  <div class="form-control-position">
					  <i class="icon-envelope-open"></i>
				  </div>
			   </div>
			  </div>
                <div class="form-group">
                    <label for="m_Tel" class="sr-only">Tel</label>
                    <div class="position-relative has-icon-right">
                        <input type="text" id="m_Tel" name="m_Tel" class="form-control input-shadow" placeholder="전화번호를 입력해주세요 ex) 010-1234-5678">
                        <span id="telCheckResult" style="width:150px;color:red;"></span>
                        <div class="form-control-position">
                            <i class="icon-user"></i>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="m_Age" class="sr-only">Age</label>
                    <div class="position-relative has-icon-right">
                        <input type="text" id="m_Age" name="m_Age" class="form-control input-shadow" placeholder="나이를 입력해주세요 ex) 24">
                        <span id="ageCheckResult" style="width:150px;color:red;"></span>
                        <div class="form-control-position">
                            <i class="icon-user"></i>
                        </div>
                    </div>
                </div>
                <input type="button" class="form-control input-shadow" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
                <input type="text" id="m_Post" name="m_Post" placeholder="우편번호" class="form-control input-shadow" placeholder="우편번호 찾기 버튼을 눌러주세요."><br>
                <input type="text" id="m_Addr" name="m_Addr" class="form-control input-shadow" placeholder="주소를 입력해 주세요."><br>
                <input type="text" id="m_Addr2" name ="m_Addr2" class="form-control input-shadow" placeholder="상세 주소를 입력해 주세요."><br>
                <input type="text" id="m_Addr3" name="m_Addr3" class="form-control input-shadow" placeholder="참고항목"><br>
                <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
                <script>
                    function sample6_execDaumPostcode() {
                        new daum.Postcode({
                            oncomplete: function(data) {
                                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                                var addr = ''; // 주소 변수
                                var extraAddr = ''; // 참고항목 변수

                                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                                    addr = data.roadAddress;
                                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                                    addr = data.jibunAddress;
                                }

                                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                                if(data.userSelectedType === 'R'){
                                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                                        extraAddr += data.bname;
                                    }
                                    // 건물명이 있고, 공동주택일 경우 추가한다.
                                    if(data.buildingName !== '' && data.apartment === 'Y'){
                                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                                    }
                                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                                    if(extraAddr !== ''){
                                        extraAddr = ' (' + extraAddr + ')';
                                    }
                                    // 조합된 참고항목을 해당 필드에 넣는다.
                                    document.getElementById("m_Addr3").value = extraAddr;

                                } else {
                                    document.getElementById("m_Addr3").value = '';
                                }

                                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                                document.getElementById('m_Post').value = data.zonecode;
                                document.getElementById("m_Addr").value = addr;
                                // 커서를 상세주소 필드로 이동한다.
                                document.getElementById("m_Addr2").focus();
                            }
                        }).open();
                    }

                </script>
                <div class="form-group">
                    <label for="m_Country" class="sr-only">Country</label>
                    <div class="position-relative has-icon-right">
                        <input type="text" id="m_Country" name="m_Country" class="form-control input-shadow" placeholder="나라를 입력해 주세요 ex) KOREA, JAPAN, CHINA, AMERICA">
                        <span id="countryCheckResult" style="width:150px;color:red;"></span>
                        <div class="form-control-position">
                            <i class="icon-user"></i>
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
		    <p class="text-warning mb-0">이미 계정이 있으신가요? <a href="/ShoppingMall/member/login.do"> 로그인</a></p>
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
