<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.3.1.min.js"></script>    
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript">



var IMP = window.IMP; // 생략가능
IMP.init('imp12541931'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용

IMP.request_pay({
    pg : 'inicis', // version 1.1.0부터 지원.
    pay_method : 'card',
    merchant_uid : 'merchant_' + new Date().getTime(),
    name : '주문명:결제테스트',
    amount : 100,
    buyer_email : '${order.m_Email}',
    buyer_name :'${Bname}',
    buyer_tel : '${order.o_Tel}',
    buyer_addr : '${order.o_Addr}',
    buyer_postcode : '${order.o_Post}',
    m_redirect_url : 'https://www.yourdomain.com/payments/complete'
}, 

function(rsp) {
    if ( rsp.success ) {
        var msg = '결제가 완료되었습니다.';
        msg += '고유ID : ' + rsp.imp_uid;
        msg += '상점 거래ID : ' + rsp.merchant_uid;
        msg += '결제 금액 : ' + rsp.paid_amount;
        msg += '카드 승인번호 : ' + rsp.apply_num;
        location.href="paymentDone.do?o_Id="+rsp.imp_uid;
        
        
    } else {
        var msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
        location.href="shopping-cart.do";
    }
    alert(msg);
});

</script>
</head>
<body>

</body>
</html>