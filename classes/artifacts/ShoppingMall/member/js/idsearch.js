$(function (){
    $('#idSearch_btn').click(function (){
        $("#frm").attr("action", "/ShoppingMall/member/sendId.do").submit();
    })

    $('#pwChange_btn').click(function (){
        $("#frm").attr("action", "/ShoppingMall/member/sendPw.do").submit();
    })
})