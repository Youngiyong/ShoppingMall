<%--
  Created by IntelliJ IDEA.
  User: 기용
  Date: 2020-12-13
  Time: 오전 2:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">

<title>로그인 | 무신사 스토어</title>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>

    <link type="text/css" rel="stylesheet" charset="utf-8" href="/ShoppingMall/app/css/normalizer.css"/>
    <link type="text/css" rel="stylesheet" charset="utf-8"  href="/ShoppingMall/app/css/common-magazine.css"/>
    <link type="text/css" rel="stylesheet" charset="utf-8"  href="/ShoppingMall/app/css/common.css"/>
    <link type="text/css" rel="stylesheet" charset="utf-8"  href="/ShoppingMall/app/css/font-awesome.css"/>
    <link type="text/css" rel="stylesheet" charset="utf-8"  href="/ShoppingMall/app/css/guide.css"/>

    <!-- 씀 -->
    <link rel="stylesheet" href="/ShoppingMall/app/css/member.css">
    <script src="/ShoppingMall/app/js/jquery-3.5.1.js"></script>
</head>
<body class="MEMBER_BODY" data-dico="noTrans">
<div class="bottom-column column clearfix n-member-area">
    <div class="loginBoxWrap">
        <div class="loginHeaderV3">
            <img src="https://static.msscdn.net/ui/musinsa/resources/common/image/logo_mwusinsa.svg?20201211145800"/>
        </div>

        <div class="loginBoxV3">
            <form name="loginform" action="/ShoppingMall/login/go_login.do" method="post" onsubmit="return loginCheck(this);">
                <input type="hidden" name="r" value="home"/>
                <input type="hidden" name="a" value="login"/>
                <input type="hidden" id="refererFromLoginPage" name="referer" value="http://www.musinsa.com/index.php?"/>
                <input type="hidden" name="usessl" value="1"/>
                <span class="id"><input type="text" name="m_Id" class="inputV3" title="아이디" value="" placeholder="아이디를 입력해 주세요."/></span>
                <span class="pass"><input type="password" name="m_Pass" class="inputV3" title="패스워드" value="" placeholder="비밀번호를 입력해 주세요."/></span>

                <span class="submit submitWBOX"><input type="submit" value="로그인"/></span>
                <label class="checkbox"><input type="checkbox" name="autologin" value="1" onclick="remember_auto(this)"/><b>자동로그인</b></label>
            </form>
            <ul class="loginMenu">
                <li class="join">
                    <a href="#"
                       title="회원가입"
                       id="member-join"
                       class="gtm-catch-click"
                       data-gtm-cd-23="login_navi"
                       data-gtm-cd-19="button"
                       data-gtm-cd-20="/login"
                       data-gtm-cd-21="1"
                       data-gtm-category="login_navi"
                       data-gtm-action="client.click"
                       data-gtm-label="회원가입"
                    >
                        회원 가입
                    </a>
                </li>
                <li class="idsearch">
                    <a id="id-search"
                       href="#"
                       class="gtm-catch-click"
                       data-gtm-cd-23="login_navi"
                       data-gtm-cd-19="button"
                       data-gtm-cd-20="/login"
                       data-gtm-cd-21="1"
                       data-gtm-category="login_navi"
                       data-gtm-action="client.click"
                       data-gtm-label="아이디찾기">
                        아이디 찾기
                    </a>
                </li>
                <li class="pwsearch">
                    <a id="pw-search"
                       href="#"
                       class="gtm-catch-click"
                       data-gtm-cd-23="login_navi"
                       data-gtm-cd-19="button"
                       data-gtm-cd-20="/login"
                       data-gtm-cd-21="1"
                       data-gtm-category="login_navi"
                       data-gtm-action="client.click"
                       data-gtm-label="비밀번호찾기"
                    >
                        비밀번호 찾기
                    </a>
                </li>
            </ul>
        </div>

        <div class="loginBoxStoreV3 tabBoxV3">
            <div class="tabHead">
                    <span class="tabHeadbtn1 gtm-catch-click"
                          data-gtm-cd-23="non_member"
                          data-gtm-cd-19="tab"
                          data-gtm-cd-20="/login"
                          data-gtm-cd-21="2"
                          data-gtm-cd-22="1"
                          data-gtm-category="non_member"
                          data-gtm-action="client.click"
                          data-gtm-label="비회원구매하기"
                    >
                        비회원 구매하기
                    </span>
                <span class="tabHeadbtn2 gtm-catch-click"
                      data-gtm-cd-23="non_member"
                      data-gtm-cd-19="tab"
                      data-gtm-cd-20="/login"
                      data-gtm-cd-21="2"
                      data-gtm-cd-22="2"
                      data-gtm-category="non_member"
                      data-gtm-action="client.click"
                      data-gtm-label="비회원주문조회"
                >
                        비회원 주문 조회
                    </span>
            </div>
            <div class="tabContents tabContents1">
                <span class="tit">비회원 구매약관</span>
                <textarea>비회원정보수집 동의
비회원 개인정보보호정책은 비회원으로 주문하는 고객님의 개인정보 보호를 위하여 무신사가 실시하는 개인정보 수집의 목적과 그 정보의 정책에 관한 규정입니다.

제1조 개인정보 수집 범위
1. 필수항목: 구매자 정보(성명, 전화번호, 휴대전화 번호, 이메일) 수령자 정보(성명, 전화번호, 휴대전화번호, 주소)
2. 선택항목: 환불계좌

제2조 개인정보 수집 목적 및 이용목적
무신사((주)무신사)는 고객님께서 비회원으로 재화 혹은 용역을 주문하거나 각종 서비스를 이용하는데 있어, 원활한 주문 및 서비스 접수, 물품 배송, 대금 결제 및 편리하고 유익한 맞춤정보를 제공하기 위한 최소한의 정보를 수집합니다.

1.e-mail, 전화번호 : 고지의 전달. 불만처리나 주문/배송정보 안내 등 원활한 의사소통 경로의 확보.
2.성명, 주소 : 고지의 전달, 청구서, 정확한 상품 배송지의 확보.
3.은행계좌번호, 신용카드번호: 유료정보에 대한 이용 및 상품구매에 대한 결제
4.전화번호, 휴대전화번호 : 상품구매 전/후 만족도조사, 회원가입권유(포인트 또는 적립금 지급 등)및 영업 목적 전화 및 SMS발송

비회원주문시 제공하신 모든 정보는 상기 목적에 필요한 용도 이외로는 사용되지 않습니다.
단, 이용자의 기본적 인권 침해의 우려가 있는 민감한 개인정보(인종 및 민족, 사상 및 종교, 출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 등)는 수집하지 않습니다.

제3조 개인정보의 보유기간 및 이용기간
고객의 개인정보는 다음과 같이 개인정보의 수집목적 또는 제공받은 목적이 달성되면 파기됩니다. 단, 상법 등 관련법령의 규정에 의하여 다음과 같이 거래 관련 권리 의무 관계의 확인 등을 이유로 일정기간 보유하여야 할 필요가 있을 경우에는 일정기간 보유합니다.
1.계약 또는 청약철회 등에 관한 기록 : 5년
2.대금결제 및 재화등의 공급에 관한 기록 : 5년
3.소비자의 불만 또는 분쟁처리에 관한 기록 : 3년

고객의 동의를 받아 보유하고 있는 거래정보 등을 고객께서 열람을 요구하는 경우 무신사는 지체 없이 그 정보를 열람·확인 할 수 있도록 조치합니다.</textarea>
                <label class="checkbox"><input type="checkbox" id="agree"/><b>비회원 구매약관에 동의합니다.</b></label>
                <div class="submitbox submitWBOX">
                    <input type="button" value="비회원 구매하기"
                           class="command-check gtm-catch-click"
                           data-gtm-cd-23="non_member"
                           data-gtm-cd-19="button"
                           data-gtm-cd-20="/login"
                           data-gtm-cd-21="2"
                           data-gtm-category="non_member"
                           data-gtm-action="client.click"
                           data-gtm-label="비회원구매하기"/>
                </div>
                <div class="clear"></div>
            </div>
            <div class="tabContents tabContents2">
                <form class="formBox" name="orderviewform" action="https://store.musinsa.com/app/mypage/order_view" method="post" target="_self" onsubmit="return orderviewform_submit(this)">
                    <ul>
                        <li>
                            <label>이름</label>
                            <input type="text" name="order_name" class="inputV3" title="이름" value="" placeholder="주문자명을 입력해 주세요."/>
                        </li>
                        <li>
                            <label>주문번호</label>
                            <input type="text" name="order_no" class="inputV3" title="주문번호" value="" placeholder="주문번호를 입력해 주세요"/>
                        </li>
                    </ul>
                    <div class="submitbox submitWBOX">
                        <input type="submit" value="비회원 주문조회"
                               class="gtm-catch-click"
                               data-gtm-cd-23="non_member"
                               data-gtm-cd-19="button"
                               data-gtm-cd-20="/login"
                               data-gtm-cd-21="2"
                               data-gtm-category="non_member"
                               data-gtm-action="client.click"
                               data-gtm-label="비회원주문조회"
                        />
                    </div>
                </form>
            </div>
        </div>

        <div class="loginBoxFooterV3">
            <ul>
                <li><a href='../login/useAgreement.do'>이용약관</a></li>
                <li class="private"><a href='../login/privacyAgreement.do'><b>개인정보처리방침</b></a></li>
                <li><a href="https://store.musinsa.com/app/cs/faq/15">고객센터</a></li>
            </ul>
        </div>

    </div>

</div>
</div>



<script type="text/javascript">
    //<![CDATA[
    $(document).ready(function () {

        $("#member-join").click(function () {
           location.href ="/ShoppingMall/login/memberJoin.do";
            // e.preventDefault();
            // location.href = "/app/memberJoin";
        });

        var isIdPasswordSearchFromJava = 'true';

        $("#id-search").click(function (e) {
            e.preventDefault();
            var refererFromLoginPage = $("#refererFromLoginPage").val();
            if(false) {
                if (isIdPasswordSearchFromJava) {
                    location.href = "/ShoppingMall/login/searchId.do";
                } else {
                    location.href = "https://www.musinsa.com?r=home&mod=idpass&page=idpwsearch";
                }

            } else {
                if (isIdPasswordSearchFromJava) {
                    location.href = "/ShoppingMall/login/searchId.do";
                } else {
                    window.open('https://www.musinsa.com?r=home&mod=idpass&page=idpwsearch', '', 'statusbar=no,scrollbars=yes,toolbar=no');
                }

            }
        });

        $("#pw-search").click(function (e) {
            e.preventDefault();
            var refererFromLoginPage = $("#refererFromLoginPage").val();
            if(false) {

                if (isIdPasswordSearchFromJava) {
                    location.href = "/ShoppingMall/login/searchPw.do";
                } else {
                    location.href = "https://www.musinsa.com?r=home&mod=idpass&page=idpwsearch&ftype=auth";
                }

            } else {

                if (isIdPasswordSearchFromJava) {
                    location.href = "/ShoppingMall/login/searchPw.do";
                } else {
                    window.open('https://www.musinsa.com?r=home&mod=idpass&page=idpwsearch&ftype=auth', '', 'statusbar=no,scrollbars=yes,toolbar=no');
                }

            }
        });

        getMemberIdFromLocalStorage();
    });

    function getMemberIdFromLocalStorage() {
        var searchMemberIdKey = '';
        var searchedMemberId = localStorage.getItem(searchMemberIdKey);

        if (searchedMemberId && searchedMemberId != "undefined") {
            $("input[name=id]").val(searchedMemberId);
            localStorage.removeItem(searchMemberIdKey);
        }
    }

    function orderviewform_submit(f) {
        if (f.order_name.value == '') {
            alert("주문자 성함을 입력해 주십시오.");
            f.order_name.focus();
            return false;
        }
        return true;
    }

    $(document).ready(function () {
        $(document).on("click", ".command-check", function () {
            if (!$("#agree").prop('checked')) {
                alert("비회원 구매약관에 동의하셔야 이용이 가능합니다");
                return false;
            }
            location.href = 'https://store.musinsa.com/app/order/order_form/order?guest=Y';
        });

        /* 스토어 주문정보탭 */
        $('.tabHeadbtn1').click(function () {
            $('.loginBoxStoreV3').removeClass('tab2On');

        })

        $('.tabHeadbtn2').click(function () {
            $('.loginBoxStoreV3').addClass('tab2On');
        })
    });

    function loginCheck(f) {
        if (f.id.value.trim() === '') {
            alert('아이디를 입력해 주세요.');
            f.id.value = '';
            f.id.focus();
            return false;
        }
        if (f.pw.value.trim() === '') {
            alert('비밀번호를 입력해 주세요.');
            f.pw.value = '';
            f.pw.focus();
            return false;
        }
        return true;
    }



    function orderviewform_submit(f) {
        if (f.order_name.value == '') {
            alert("주문자 성함을 입력해 주십시오.");
            f.order_name.focus();
            return false;
        }
        return true;
    }

    function remember_auto(ths) {
        if (ths.checked) {
            if (!confirm('\n\n개인PC가 아닐 경우 타인이 로그인할 수 있습니다.     \n\nPC를 여러사람이 사용하는 공공장소에서는 체크하지 마세요.\n\n정말로 앞으로 자동 로그인 하시겠습니까?\n\n')) {
                ths.checked = false;
            }
        }
    }

</script>
</body>

</html>
