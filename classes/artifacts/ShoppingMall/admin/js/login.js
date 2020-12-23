$(function (){
    $('#btn_login').click(function (){
        // 데이터 형식
        //※ 주의점
        //
        // ajax 파라미터 중 contentType: 'application/json' 값은 꼭 보내야 한다.
        // 서버에 데이터를 json으로 보내겠다는 뜻
        // ajax 파라미터 중 jsonData에 보낼 데이터를 매핑하는데 이때,
        // 반드시 데이터를 JSON.stringify()메소드를 이용해 데이터를 json 문자열화 해서 보내야 한다.
        // 서버에 json으로 데이터 보낸다고 했는데 다른 형식으로 보내면 문제가 생기는 이치.

        var data = {
            'a_Id': $('#a_Id').val(),
            'a_Pass': $('#a_Pass').val()
        };

        // // data json 문자열 화
         var jsonString = JSON.stringify(data);

        $.ajax({
            type: 'post',	// 전송방식
            url: '/ShoppingMall/admin/loginCheck.do', //****요청(request)
            contentType: "application/json; charset=utf-8",  // 보내는 데이터 json 일때 필수 옵션
            data: jsonString,
            success: function (data) {
                if(typeof(data) == "object"){
                    alert("로그인 성공")
                    location.href = ("/ShoppingMall/admin/index.do");
                }
                else {
                    alert("로그인 실패");
                    $('#a_Pass').val('');
                }

            },
            error: function (err) {
               alert("ajax 에러")
            }
        })
    })
})