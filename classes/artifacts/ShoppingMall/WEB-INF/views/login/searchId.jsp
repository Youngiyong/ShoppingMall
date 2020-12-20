<%--
  Created by IntelliJ IDEA.
  User: 기용
  Date: 2020-12-13
  Time: 오후 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">

<head>



    <title>아이디 찾기 | 무신사 스토어</title>



    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no">
    <meta name="referrer" content="no-referrer-when-downgrade" />
    <link rel="shortcut icon" href="/ShoppingMall/app/img/favicon.ico" type="image/x-icon"/>


    <link rel="stylesheet" type="text/css" href="/ShoppingMall/app/css/guide.css" />
    <link rel="stylesheet" type="text/css" href="/ShoppingMall/app/css/icon.css" />
    <link rel="stylesheet" type="text/css" href="/ShoppingMall/app/css/layout.css" />
    <link rel="stylesheet" type="text/css" href="/ShoppingMall/app/css/member.css" />


    <script type="text/javascript" src="/ShoppingMall/app/js/jquery-3.5.1.js"></script>

</head>

<body>



<div class="musinsa-wrapper wrapper-member">

    <h1 class="n-hidden">무신사 스토어</h1>
    <!-- Member -->
    <div class="n-member-area form-area">

        <input type="hidden" name="checkSmsCertification" value="0">
        <input type="hidden" id="requestIsSendEmail">
        <input type="hidden" id="referer" value="http://www.musinsa.com/index.php?">
        <!-- Header -->
        <header class="member-header">
            <h2 class="title">아이디 찾기</h2>
            <button type="button" class="btn-back" href="javascript:void(0)" onclick="commonHistoryBack();"><i class="ic-30-line-arrow-left">이전 페이지로 이동</i></button>
        </header>
        <!-- //Header -->

        <!-- Find Tab -->
        <div class="n-tab-btn">
            <a href="javascript:location.reload();" class="is-active">아이디 찾기</a>
            <a href="/ShoppingMall/login/searchPw.do">비밀번호 찾기</a>
        </div>

        <div class="member-find-radio">
            <input type="radio" class="n-radio" id="phoneRadioBtn" data-type="phone" name="findIDType" checked>
            <label for="phoneRadioBtn" onclick="changeFndTarget('phone')">휴대전화</label>
            <input type="radio" class="n-radio" id="emailRadioBtn" data-type="email" name="findIDType">
            <label for="emailRadioBtn" onclick="changeFndTarget('email')">이메일</label>
            <input type="hidden" class="n-radio" id="selfCertifyRadioBtn" data-type="selfCert" name="findIDType">
            <%--<label for="selfCertifyRadioBtn" onclick="changeFndTarget('selfCert')"></label>--%>
        </div>

        <div class="n-form-item">
            <input type="text" class="n-input tel-area" id="memberName" name="memberName" placeholder="이름 입력" style="padding-right: 0px;">
            <p class="n-validation" id="searchValidMemberName" style="display: none">이름을 입력해 주세요</p>
        </div>

        <div class="n-form-item tel-area" id="input-div">
            <input type="tel" class="n-input" id="phoneNumber" name="phoneNumber" placeholder="휴대전화 입력(-없이)" minlength="10" maxlength="11">
            <p class="n-validation" id="searchValidPhone" style="display: none">번호 형식이 올바르지 않습니다</p>
            <button type="button" class="btn" id="sendCertPhoneBtn">인증요청</button>
            <button type="button" class="btn" id="reSendCertPhoneBtn" style="display: none">다시받기</button>
        </div>

        <div class="n-form-item tel-cert-area" id="phoneCertification" style="display: none">
            <input type="text" class="n-input" placeholder="인증번호 입력" id="certNumber" minlength="5" maxlength="5">
            <button type="button" class="btn" id="authSmsBtn">확인</button>
            <p class="n-validation" id="searchValidCertNumber" style="display: none"></p>
        </div>

        <input type="email" class="n-input" id="email" placeholder="이메일 입력" style="display: none">
        <p class="n-validation" id="searchValidEmail">번호 형식이 올바르지 않습니다</p>

        <p id="selfCertMessage" class="margin-bottom" style="display: none">본인명의의 휴대폰으로 아이디를 찾는 방법입니다.<br>기존에 본인인증을 완료한 아이디만 찾으실 수 있습니다.</p>

        <div class="member-btn">
            <button type="button" class="n-btn btn-primary" id="searchIdBtn" disabled>아이디 찾기</button>
        </div>
    </div>
</div>
<!-- //Member -->

<!-- POPUP : 가입된 아이디 정보 -->
<div class="n-layer layer-popup" id="layerFindID">
    <p id="search_id_list"></p>
    <div class="layer-btn-set">
        <button type="button" class="layer-btn btn-cancel" onclick="uiLayerClose();">취소</button>
        <button type="button" class="layer-btn btn-confirm" id="loginBtn">로그인</button>
    </div>
</div>
<div class="n-layer-dimm"></div>


</body>


</html>