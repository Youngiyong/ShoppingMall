<%--
  Created by IntelliJ IDEA.
  User: 기용
  Date: 2020-12-13
  Time: 오후 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="ko">

<head>



    <title>개인 정보 수집 및 동의 | 무신사 스토어</title>




    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">

    <link rel="shortcut icon" href="/ShoppingMall/app/img/favicon.ico" type="image/x-icon"/>

    <link type="text/css" rel="stylesheet" charset="utf-8" href="/ShoppingMall/app/css/ios.css"/>
    <link type="text/css" rel="stylesheet" charset="utf-8" href="/ShoppingMall/app/icon.css"/>
    <link type="text/css" rel="stylesheet" charset="utf-8" href="/ShoppingMall/app/normalizer.css"/>
    <link type="text/css" rel="stylesheet" charset="utf-8"  href="/ShoppingMall/app/css/common-magazine.css"/>
    <link type="text/css" rel="stylesheet" charset="utf-8"  href="/ShoppingMall/app/css/layout.css"/>
    <link type="text/css" rel="stylesheet" charset="utf-8" href="/ShoppingMall/app/css/guide.css"/>


    <style type="text/css">
        .formBox input.input-danger{border-color:#ff0000 !important}
        .formBox .boxBirth{position:relative;overflow:hidden}
        .formBox .boxBirth > .inputV3,
        .formBox .boxBirth > .select{width:32.4%;float:left}
        .formBox .boxBirth > .select{position:relative;margin:0 1.4%}
        .formBox .boxBirth > .select .arrow{top:15px !important}
        .formBox li.sexRadio{overflow:hidden}
        .formBox li.sexRadio label.radiobox{float:left;padding:0;margin:5px 20px 5px 0}
        .formBox li.sexRadio label.radiobox b{color:#000000}
    </style>




    <style type="text/css">
        body {height:auto;}
        .grab_layerBox {background:#f5f5f5; width:100%; height:100%;}
        .grab_layerBox .grab_layerBox_screen1 {background:#f5f5f5; width:100%; height:100%; position:fixed; left:0; top:0;}
        .grab_layerBox .grab_layerBox_screen2 {background:#fff; width:455px; height:100%; position:fixed; left:50%; margin-left:-227.5px; top:0;}
        .grab_layer {width:455px; box-sizing:border-box; margin:0 auto; position:relative; padding:60px 40px 0 40px;}
        .joinBodyV3 .submitbox {margin-top:60px !important;}
        .joinCompV3 .compBox {position:relative; margin-top:120px;}
        .joinCompV3 .submitbox {margin-top:120px !important;}
        .joinBodyV3.step3 .formBox .rightABox{padding-right:107px}
    </style>




    <script type="text/javascript" src="/ShoppingMall/app/js/jquery-3.5.1.js"></script>

</head>

<body class="bg_f1 musinsa-wrapper wrapper-musinsa">
<body class="bg_f1 musinsa-wrapper wrapper-musinsa">
<header class="musinsa-header header-sub">
    <h1 class="n-hidden">
        무신사 스토어
    </h1>
    <div class="util-area">
        <h2 class="tit">개인정보처리방침 (전문)</h2>
        <div class="util left">


            <a href="javascript:history.back();" class="btn">






                <i class="ic-30-line-arrow-left ic-white">이전 페이지로 이동</i>
            </a>
        </div>
        <div class="util right">
            <a href="https://store.musinsa.com/app/" class="btn">
                <i class = "ic-30-stencil-musinsa ic-white">메인 페이지로 이동</i>
            </a>
        </div>
    </div>
</header>

<div class="joinAgree" style="padding-top:1px">
    ㈜무신사(이하 "회사"라 합니다)는 이용자들의 개인정보보호를 매우 중요시하며, 이용자가 회사의 무신사(http://www.musinsa.com) 쇼핑몰 서비스(이하 "서비스"라 합니다)를 이용함과 동시에 온라인상에서 회사에 제공한 개인정보가 보호 받을 수 있도록 최선을 다하고 있습니다. 이에 회사는 개인정보보호법에 따라 정보통신서비스제공자가 준수하여야 할 관련 법규상의 개인정보보호 규정을 준수하고 있습니다.<br>회사는 개인정보 보호정책을 통하여 이용자들이 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.<br>회사는 개인정보 보호정책을 홈페이지 첫 화면에 공개함으로써 이용자들이 언제나 용이하게 보실 수 있도록 조치하고 있습니다.<br>㈜무신사 개인정보처리방침은 다음과 같은 내용을 담고 있습니다. <br>가. 개인정보의 수집 및 이용목적<br>나. 수집하는 개인정보 항목과 수집방법<br>다. 개인정보 보유 및 이용 기간<br>라. 개인정보의 처리위탁<br>마. 수집한 개인정보의 공유 및 제공<br>바. 이용자의 권리(열람,정정,삭제 등)와 행사방법<br>사. 개인정보 자동수집 장치의 설치/운영 및 거부에 관한 사항<br>아. 개인정보보호를 위한 기술적-관리적 대책<br>자. 개인정보 파기절차 및 방법<br>차. 개인정보 보호책임자 및 담당부서 안내<br>부칙<br><br>가. 개인정보의 수집 및 이용목적<br>1) 회원관리 및 이용자 식별 - 회원 가입의사 확인, 회원제 서비스 제공, 회원자격 유지관리<br><br>2) 민원사무 처리<br>- 민원인의 신원 확인, 민원사항 확인, 사실조사를 위한 연락•통지, 처리결과 통보, 각종 고지 및 통지, 고충처리, 분쟁 조정을 위한 기록 보존 등<br><br>3) 재화 또는 서비스 제공<br>- 물품배송, 서비스 제공, 콘텐츠 제공, 맞춤 서비스 제공, 연령인증, 요금결제정산, 서비스 부정이용 방지, 개인 SNS계정을 이용한 스타일정보 공유 등<br><br>4)  마케팅 및 광고에의 활용<br>- 신규 서비스(제품) 개발 및 맞춤 서비스 제공, 이벤트 및 광고성 정보 제공 및 참여기회 제공 , 인구통계학적 특성에 따른 서비스 제공 및 광고 게재 , 서비스의 유효성 확인, 접속빈도 파악 또는 회원의 서비스 이용에 대한 통계 등<br><br>나. 수집하는 개인정보 항목과 수집방법<br>1. 회사는 서비스 제공을 위한 최소한의 개인정보를 수집합니다.<br>1) 회원가입 시<br>필수항목: 아이디, 이메일, 비밀번호, 이름, 성별, 생년월일, 휴대폰번호, CI/DI(휴대폰번호는 나이스평가정보/KMC에서 인증 받은 휴대폰 번호를 사용하고 있습니다)<br><br>- 소셜 계정(카카오)을 통한 회원가입 시<br>필수항목: 로그인 정보 식별값, 성별, 생년월일, 휴대폰번호, 이메일<br><br>2) 상품 구매 시<br>필수항목 : 구매자 정보(이름, 이메일, 핸드폰번호, 전화번호), 수령자 정보(성명, 전화번호, 휴대전화번호, 주소)<br>선택항목 : 환불계좌 정보(은행, 계좌번호, 예금주)<br><br>3) 비회원 구매 시<br>필수항목 : 구매자 정보(성명, 전화번호, 휴대전화 번호, 이메일,) 수령자 정보(성명, 전화번호, 휴대전화번호, 주소)<br>선택항목 : 환불계좌<br><br>4) 마이 사이즈 이용 시<br>선택항목 : 키, 몸무게 등의 개인 신체사이즈 정보<br><br>5) 제품(스타일, 포토, 일반)후기 작성시<br>선택항목: 키, 몸무게, 성별<br><br>6) 스냅 SNS 연동 시 <br>필수항목 : 연동 계정 ID(인스타그램ID, 유튜브ID)<br><br>7) 서비스 이용과정에서 자동 수집 정보 : IP정보, 디바이스 또는 브라우저 정보, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록<br><br>8) 본인인증 시<br>필수항목 : 이름, 성별, 생년월일, 휴대폰번호, CI/DI, 본인인증결과<br>(휴대폰번호는 나이스평가정보에서 인증 받은 휴대폰 번호를 사용하고 있습니다)<br><br>9) 회사는 탈퇴 후 부정가입 및 이용방지를 위해 DI정보를 별도 보관합니다.<br><br>10) 간편 로그인 시(소셜 계정 연동)<br>당사는 고객의 편의를 위해 간편로그인(카카오, Apple) 방식을 제공하고 있습니다. 이와 같은 로그인 시 당사가 고객의 개인정보를 추가 수집하지 않으며, 다만 로그인 정보 식별값만 비교하고 있습니다.<br><br>2. 회사는 아래와 같은 방법으로 개인정보를 수집합니다.<br>1) 웹페이지, 휴대폰 어플리케이션, 서면양식, 팩스, 전화, 고객센터, 상담게시판, 이메일, 이벤트 응모<br>2) 생성정보 수집 툴을 통한 수집<br><br>3. 만 14세 미만 회원의 개인정보를 수집하지 않습니다.<br>※ 개인정보 제공은 무신사 서비스 이용을 위해 필요한 사항입니다. 개인정보 제공을 거부할 경우 무신사 서비스 이용에 제한될 수 있습니다.<br><br>다. 개인정보 보유 및 이용 기간<br>이용자의 개인정보는 “자. 개인정보파기절차 및 방법”의 기준으로 탈퇴요청 5일 후 개인정보 수집 및 이용목적이 달성되면 지체없이 파기 합니다.  다만, 통신비밀보호법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다. 이 경우 회사는 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.<br>- (전자상거래법) 계약 또는 청약철회 등에 관한 기록 : 5년 <br>- (전자상거래법) 대금결제 및 재화등의 공급에 관한 기록 : 5년<br>- (전자상거래법) 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년<br>- (통신비밀보호법) 로그인 기록(로그기록, 접속지의 추적자료) : 3개월<br><br>라. 개인정보의 처리위탁<br>회사는 서비스 제공을 위하여 필요한 업무 중 일부를 아래와 같이 외 업체에 위탁하고 있으며, 관계 법률에 따라 위탁계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고, 이를 준수하도록 관리 감독하고 있습니다.<br><br><table cellpadding="10" border="1"><tr><th>수탁업체</th><th>위탁업무 내용</th><th>개인정보의 보유<br>및 이용기간</th></tr><tr><td>- CJ대한통운</td><td>구매상품 배송</td><td rowspan="4">서비스 제공 기간(관계법령의 규정에 의하여 보존할 필요가 있는 경우 및 사전 동의를<br>득한 경우 해당 보유 기간)</td></tr><tr><td>- 롯데택배<br/>- 무신사 로지스틱스<br/>- 삼성SDS </td><td>3자 물류 대행</td></tr><tr><td>- 엔에이치엔한국사이버결제㈜<br/>- 엔에이치엔페이코㈜<br/>- 주식회사 카카오페이<br/>- 네이버파이낸셜㈜<br/>- 토스페이먼츠</td><td>결제대행사</td></tr><tr><td>- 아이넷호스팅<br/>- 주식회사 비즈톡<br/>- 엔에이치엔㈜</td><td>SMS(문자) 발송 및 알림 서비스</td></tr><tr><td>- X2SOFT</td><td>서비스 제공을 위한 정보시스템 개발 및 운영</td><td>위탁계약 종료 시</td></tr><tr><td>- ㈜다우기술(사방넷)</td><td>이용자 주문정보 처리</td><td>위탁계약 종료 시</td></tr><tr><td>- 나이스평가정보<br/>- 한국모바일인증</td><td>본인확인(휴대전화인증)</td><td>회원 탈퇴 시</td></tr></table><br> <br>마. 수집한 개인정보의 공유 및 제공<br>회사는 이용자들의 개인정보를 "나. 개인정보의 수집 및 이용목적"에서 고지한 범위 내에서 사용하며, 이용자의 사전 동의 없이는 동 범위를 초과하여 이용하거나 원칙적으로 이용자의 개인정보를 외부에 공개하지 않습니다 <br>다만, 아래의 경우에는 예외로 합니다.<br>첫째 , 이용자들이 사전에 공개에 동의한 경우<br>둘째 , 기타 법에 의해 요구된다고 선의로 판단되는 경우 (ex. 관련법에 의거 적법한 절차에 의한 정부기관의 요청이 있는 경우 등)<br><br>이용자가 개인정보 제공에 사전에 동의한 경우에 한하여 개인정보를 제공하고 있으며, 개인정보의 제3자 제공에 대한 동의를 거부하시는 경우에도 기본 서비스를 이용하실 수 있으나 제3자 제공에 기반한 서비스의 이용 및 제공이 제한될 수 있습니다.<br><br><table cellpadding="10" border="1"><colgroup><col style="width:16%"><col style="width:28%"><col style="width:28%"><col style="width:28%"></colgroup><tr><th>제공받는 자</th><th>목적</th><th>항목</th><th>보유기간</th></tr><tr><td>입점사 <a href="javascript:void(0)" onclick="javascript:window.open('http://store.musinsa.com/app/usr/company_list','','left=0,top=0,width=610px,height=410px,statusbar=no,scrollbars=yes,toolbar=no');">↗</a></td><td>판매자와 구매자의 거래의 원활한 진행, 본인의사의 확인, 고객 상담 및 불만처리, 상품과 경품 배송을 위한 배송지 확인 등</td><td>구매자 성명, 전화번호, ID, 휴대폰 번호, 상품 구매정보, 상품 수취인 정보(성명, 주소, 전화번호)</td><td>서비스 제공기간(관계법령의 규정에 의하여 보존할 필요가 있는 경우 및 사전 동의를 득한 경우 해당 보유 기간)</td></tr></table><br><br>바. 이용자의 권리(열람,정정,삭제 등)와 행사방법<br>이용자는 언제든지 무신사 홈페이지의 ‘회원정보변경’ 페이지에서 등록되어 있는 자신의 개인정보를 열람하거나 정정할 수 있으며, 가입 해지를 요청할 수 있습니다.<br>이용자는 ‘회원정보변경’ 페이지에서 아이디를 제외한 모든 입력사항을 수정할 수 있습니다. <br>이용자는 ‘회원정보변경’ 페이지에서 ‘회원탈퇴’를 선택하시면 가입 해지를 할 수 있으며, 가입 해지시 회원정보는 "다. 개인정보의 보유 및 이용기간"항에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리됩니다.<br>이용자는 고객센터를 통하여 권리행사를 할 수 있으며, 개인정보보호법 시행규칙 별지 제8호 서식에 따라 개인정보 열람·정정·삭제·처리정지 요구서를 서면, 전자우편을 통해 제출할 수 있습니다.<br>또한 이용자는 대리인을 통하여 권리행사를 할 수 있으며, 이 경우 개인정보보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하여야 합니다.<br><br>사. 개인정보 자동수집 장치의 설치/운영 및 거부에 관한 사항<br>1. 회사의 쿠키 사용목적<br>- 회원과 비회원의 접속 빈도나 방문 시간 등을 분석<br>- 이용자의 취향과 관심분야 파악 및 자취 추적<br>2. 쿠키의 설치/운영 및 거부<br>- 이용자는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서 이용자는 웹 브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.<br>- 다만, 쿠키의 저장을 거부할 경우에는 로그인이 필요한 회사의 일부 서비스는 이용에 어려움이 있을 수 있습니다.<br>- 쿠키 설치 허용 여부를 지정하는 방법은 다음과 같습니다.<br>1) Internet Explorer의 경우 <br>웹 브라우저 상단의 도구 메뉴 > 인터넷 옵션 > 개인정보 > 설정 <br><br>2) Chrome의 경우<br>웹 브라우저 우측의 설정 메뉴 > 화면 하단의 고급 설정 표시 > 개인정보의 콘텐츠 설정 버튼 > 쿠키<br><br>아. 개인정보보호를 위한 기술적-관리적 대책<br>회사는 이용자들의 개인정보를 취급함에 있어 개인정보가 분실, 도난, 유출, 변조 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 기술적/관리적 대책을 강구하고 있습니다.<br>1. 개인정보 암호화<br>이용자의 중요 개인정보(계좌번호 등)는 암호화하여 저장/관리되고 있으며, 암호화통신 등을 통하여 네트워크상에서 개인정보를 안전하게 전송할 수 있도록 하고 있습니다. 비밀번호는 복호화가 불가능한 일방향 암호화되어 저장/관리되고 있습니다.<br><br>2. 해킹 등에 대비한 대책<br>회사는 해킹이나 악성코드 등에 의해 이용자의 개인정보가 유출되거나 훼손되는 것을 막기 위해 외부로부터 접근이 통제된 구역에 시스템을 설치하고 있습니다. <br>최신 백신프로그램을 이용하여 이용자들의 개인정보나 자료가 유출되거나 손상되지 않도록 방지하고 있습니다. 또한 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있으며, 기타 시스템적으로 보안성을 확보하기 위한 가능한 모든 기술적 장치를 갖추려고 노력하고 있습니다.<br><br>3. 개인정보 취급자의 최소화 및 교육실시<br>개인정보를 처리하는 직원을 최소화 하며, 개인정보 유출에 대한 위험을 줄이고 있습니다. 또한 개인정보를 보관하는 데이터베이스 시스템과 개인정보를 처리하는 시스템에 대한 비밀번호의 생성과 변경, 그리고 접근할 수 있는 권한에 대한 체계적인 기준을 마련하고 지속적인 감사를 실시하고 있습니다. 또한 개인정보를 처리하는 모든 임직원들을 대상으로 개인정보보호 의무와 보안에 대한 정기적인 교육과 캠페인을 실시하고 있습니다.<br><br>자. 개인정보 파기절차 및 방법<br>이용자의 개인정보는 수집 및 이용목적이 달성되면 지체 없이 파기되며, 파기 절차 및 방법은 아래의 기준에 의해 관리됩니다.<br>(1) 회사는 이용자의 회원탈퇴 요청시 이용자의 실수 및 변심으로 인한 탈퇴요청을 취소할 수 있도록 요청일로부터 최대 5일까지 사용자의 정보를 보관합니다. 사용자의 정보는 5일 이후 지체없이 파기(아이디 제외)합니다.<br>단, 이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우, 또는 법령에서 일정 기간 정보보관 의무를 부과하는 경우에는 해당 기간 동안 개인정보를 안전하게 보관합니다.<br>(2) 회사는 개인정보 유효기간제에 따라 1년간 서비스를 이용하지 않은 회원의 개인정보를 별도로 분리 보관하여 관리하고 있습니다.<br>(3) 회원탈퇴, 서비스 종료, 이용자에게 동의 받은 개인정보 보유기간의 도래와 같이 개인정보의 수집 및 이용목적이 달성된 개인정보는 재생이 불가능한 방법으로 파기하고 있습니다. 법령에서 보존의무를 부과한 정보에 대해서도 해당 기간 경과 후 지체없이 재생이 불가능한 방법으로 파기합니다.<br>전자적 파일 형태의 경우 복구 및 재생이 되지 않도록 기술적인 방법을 이용하여 안전하게 삭제하며, 출력물 등은 분쇄하거나 소각하는 방식 등으로 파기합니다.<br><br><br><br>차. 개인정보 보호책임자 및 담당부서 안내<br>회사는 이용자의 개인정보를 보호하고 개인정보와 관련한 고충 처리를 위하여 다음과 같이 책임자와 담당부서를 두고 있습니다.<br><br>개인정보 보호책임자 : 이진우<br>고충처리부서 : 무신사 고객지원실<br>연락처 : 1544-7199<br>이메일 : help@musinsa.com<br><br>기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.<br>- 개인정보침해신고센터 : http://privacy.kisa.or.kr / (국번없이)118<br>- 대검찰청 사이버수사과 : http://www.spo.go.kr / (국번 없이) 1301<br>- 경찰청 사이버안전국 : http://cyberbureau.police.go.kr / (국번 없이) 182<br>- 개인정보분쟁조정위원회 : http://www.kopico.go.kr / 1833-6972<br><br>부칙<br>이 개인정보처리방침은 2020년 12월 10일에 개정되었으며 정부의 정책 및 정보보호 유관법령 또는 보안기술의 변경에 따라 내용의 추가, 삭제 및 수정이 있을 시에는 개정 최소 7일 전부터 공지사항을 통해 고지할 것입니다.<br>- 개인정보 처리방침 공고일자 : 2020년 12월 10일<br>- 개인정보 처리방침 시행일자 : 2020년 12월 17일
</div>


</body>
</html>