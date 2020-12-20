$(function (){
    $('#btn_login').click(function (){

        $.ajax({
            type: 'post',	// 전송방식
            async: true, 	// 비동기통신
            url: '/ShoppingMall/admin/loginCheck.do', //****요청(request)
            contentType: 'application/x-www-form-urlencoded;charset=utf-8', // 한글처리
            data: {'a_Id': $('#a_Id').val()},
            success: function (result) {
                alert("")
            },
            error: function (err) {
                console.log(err)
            }
        })

        $("#frm").attr("action", "/ShoppingMall/admin/loginCheck.do").submit();
    })
})