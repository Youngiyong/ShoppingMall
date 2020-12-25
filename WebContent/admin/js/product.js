$(function () {

    $("#btn_delete").click(function () {
        var param = [] ;

        //checkSelect 클래스 체크박스 중 checked 인 것들만 가져와 for문과 같은 역할의 each 함수 사용
        $(".checkSelect:checked").each(function (e) {
            var data = { 'p_Id' : $(this).parent().parent().find("td.p_Id").text() }
            alert($(this).parent().parent().find("td.p_Id").text() );
            param.push(data);
        })
        //param 배열에 data 오브젝트를 담는다.

        // 데이터를 직렬화 시키기 : JSON.stringify("Object 배열 변수명")
        var jsonData = JSON.stringify(param);
        jQuery.ajaxSettings.traditional = true;

        $.ajax({

            method : 'post',
            contentType: "application/json; charset=utf-8",  // 보내는 데이터 json 일때 필수 옵션
            url: '/ShoppingMall/admin/deleteId.do',
            data : {
                data : {"jsonData" : jsonData }
            },
            dataType: 'json',
            success : function (data) {
                alert('삭제가 완료 되었습니다.');
                $(".checkSelect").prop('checked', false);
            },
            error: function(err) {
                //err msg 출력
              console.log(err)
            }
        })
    })




})