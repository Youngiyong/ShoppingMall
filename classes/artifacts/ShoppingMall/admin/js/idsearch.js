$(function (){
    $('#idSearch_btn').click(function (){
        $("#frm").attr("action", "/ShoppingMall/admin/sendId.do").submit();
    })

    $('#pwChange_btn').click(function (){
        $("#frm").attr("action", "/ShoppingMall/admin/sendPw.do").submit();
    })
})