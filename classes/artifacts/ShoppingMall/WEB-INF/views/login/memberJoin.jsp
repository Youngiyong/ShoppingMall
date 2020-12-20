<%--
  Created by IntelliJ IDEA.
  User: 기용
  Date: 2020-12-13
  Time: 오후 6:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="ko">

<head>

    <title>회원가입 | 무신사 스토어</title>

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
    <script type="text/javascript">
        $(function () {
            $('#link1').click(function () {
                location.href = "useAgreement.do";
            });

            $('#link2').click(function () {
                location.href = ".privacyAgreement.do";
            })
            $('#link3').click(function () {
                location.href = "marketingAgreement.do";
            })
        })
    </script>
</head>



<body>

<div class="musinsa-wrapper wrapper-member">
    <h1 class="n-hidden">무신사 스토어</h1>

    <!-- Member -->
    <div class="n-member-area form-area">

        <form class="formBox" name="joinForm" id="joinForm" action="/ShoppingMall/login/memberJoin_ok.do" method="post" novalidate>
            <input type="hidden" name="checkId" value="0">
            <input type="hidden" name="checkPassword" value="0">
            <input type="hidden" name="checkConfirmPassword" value="0">
            <input type="hidden" name="checkEmail" value="0">
            <input type="hidden" name="checkRecommendMemberId" value="0">
            <input type="hidden" name="checkPhoneNumber" value="0">
            <input type="hidden" id="joinToken" name="joinToken" value="8ab50b18aebb045d2b4f94e76a8e44973b107f2a"/>
            <input type="hidden" name="eventToken" value=""/>
            <input type="hidden" name="snsToken" value=""/>
            <input type="hidden" id="partnerCode" name="partnerCode" value=""/>

            <!-- Header -->
            <header class="member-header">
                <div class="logo">
                    <img src="https://image.msscdn.net/ui/musinsa/resources/common/image/logo_mwusinsa.svg" alt="무신사로고">
                </div>


                <p class="text-kakao font-mss">회원가입</p>

                <button type="button" id="joinHistoryBackBtn" class="btn-back" href="javascript:void(0)"><i class="ic-30-line-arrow-left">이전 페이지로 이동</i></button>
            </header>
            <!-- //Header -->

            <!-- Join Form -->
            <div class="join-form">
                <div class="n-form-set">
                    <label for="m_Id" class="n-form-label">아이디 <span class="essential">필수 입력</span></label>
                    <input type="text" class="n-input input" id="m_Id" name="m_Id" placeholder="아이디 입력(5~11자)" minlength="5" maxlength="11">
                    <p class="n-validation" id="hLayerid"></p>
                </div>
                <div class="n-form-set">
                    <label for="m_Pass" class="n-form-label">비밀번호 <span class="essential">필수 입력</span></label>
                    <div class="n-form-icon">
                        <input type="password" class="n-input input" id="m_Pass" name="m_Pass" minlength="8" autocomplete="new-password"
                               placeholder="비밀번호(숫자,영문,특수문자 조합 최소8자)">
                        <p class="n-validation" id="passwordValidMessage"></p>
                        <button type="button" class="btn" onclick="togglePassword('password', this);" >
                            <i class="ic-30-solid-show ic-gray5">비밀번호 보기</i>
                        </button>
                    </div>
                    <div class="n-form-icon">
                        <input type="password" class="n-input input" id="m_ConfirmPassword" name="m_ConfirmPassword" autocomplete="new-password"
                               minlength="8" placeholder="비밀번호 확인">
                        <p class="n-validation" id="passwordConfirmValidMessage"></p>
                        <button type="button" class="btn" onclick="togglePassword('confirmPassword', this);">
                            <i class="ic-30-solid-show ic-gray5">비밀번호 보기</i>
                        </button>
                    </div>
                </div>
                <div class="n-form-set">
                    <label for="m_Email" class="n-form-label">이메일 <span class="essential">필수 입력</span></label>
                    <div class="n-form-layer" id = "emailFromLayer">
                        <input type="email" class="n-input input" id="m_Email" name="m_Email" maxlength="50" placeholder="이메일" autocomplete="off" value="">
                        <p class="n-validation" id="hLayeremail"></p>
                        <ul id="emailDomainList" class="layer">
                            <li><button type="button"><span></span><em>naver.com</em></button></li>
                            <li><button type="button"><span></span><em>gmail.com</em></button></li>
                            <li><button type="button"><span></span><em>hanmail.net</em></button></li>
                            <li><button type="button"><span></span><em>nate.com</em></button></li>
                            <li><button type="button"><span></span><em>daum.net</em></button></li>
                        </ul>
                    </div>
                    <p class="n-txt-info">신규가입혜택(최대 15만 원 쿠폰팩/인기상품 990원 특가) 안내가 이메일로 제공됩니다. 본인의 이메일을 정확하게 입력해주세요.</p>
                </div>

                <div class="n-form-set">
                    <label for="recommendMemberId" class="n-form-label">추천인(친구초대이벤트 참여 아이디)</label>
                    <input type="text" class="n-input" minlength="4" maxlength="17" id="recommendMemberId" placeholder="추천인 아이디 입력" value="">
                    <p class="n-validation" id="hLayerRecommendMemberId"></p>
                </div>


                <div id="agreementDivArea" class="agreement">
                    <div>
                        <input type="checkbox" class="n-check" id="checkAll">
                        <label for="checkAll" class="all">약관 전체동의</label>
                    </div>
                    <div>
                        <input type="checkbox" class="n-check agree-item required-agree-item" id="agreeCheckbox" name="agreeCheckbox">
                        <label for="agreeCheckbox">개인정보 수집 이용동의(필수)</label>
                        <button type="button" class="link" id="link1">약관보기</button>
                    </div>

                    <div>
                        <input type="checkbox" class="n-check agree-item required-agree-item" id="useTermsCheckbox" name="useTermsCheckbox">
                        <label for="useTermsCheckbox">무신사, 무신사스토어 이용약관(필수)</label>
                        <button type="button" class="link" id="link2" >약관보기</button>
                    </div>

                    <div>
                        <input type="checkbox" class="n-check agree-item optional-agree-item" id="marketingReceiveAgreeYn" name="marketingReceiveAgreeYn">
                        <label for="marketingReceiveAgreeYn">마케팅 활용 및 광고성 정보 수신 동의(선택)</label>
                        <button type="button" class="link" id="link3">약관보기</button>
                    </div>
                    <div>
                        <input type="checkbox" class="n-check agree-item required-agree-item" id="ageAgreeCheckbox" name="ageAgreeCheckbox">
                        <label for="ageAgreeCheckbox">만 14세 미만 가입 제한(필수)</label>
                    </div>
                </div>

            </div>
            <div id="joinBtnDiv" class="member-btn">

                <button type="submit" id="joinBtn" class="n-btn btn-primary">본인인증하고 회원가입</button>

            </div>


            <p class="member-info">본인인증이 어려운 경우, 아래의 서비스를 통해 주문하실 수 있습니다.</p>
            <button type="button"
                    class="n-link gtm-catch-click"
                    onclick="location.href='/ShoppingMall/login/login.do'"
                    data-gtm-cd-23="not_member"
                    data-gtm-cd-19="button"
                    data-gtm-cd-20="/member/join"
                    data-gtm-cd-21="2"
                    data-gtm-category="not_member"
                    data-gtm-action="client.click"
                    data-gtm-label="비회원구매하기"
            >
                비회원 구매하기
            </button>


        </form>
    </div>
</div>


</body>


</html>
