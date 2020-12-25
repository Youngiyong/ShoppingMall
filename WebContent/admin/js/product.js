$(function () {

    $("#btn_delete").click(function () {
        var param = [];
        var arrPrmtr = new Array(); //Object를 배열로 저장할 Array
        var objPrmtr = new Object(); //key, value형태로 저장할 Object

        //checkSelect 클래스 체크박스 중 checked 인 것들만 가져와 for문과 같은 역할의 each 함수 사용
        $(".checkSelect:checked").each(function (e) {
            objPrmtr = new Object();
            objPrmtr.p_Id = $(this).parent().parent().find("td.p_Id").text();
            arrPrmtr.push(objPrmtr);


            // var data = { 'p_Id' : $(this).parent().parent().find("td.p_Id").text() }
            // alert($(this).parent().parent().find("td.p_Id").text() );
            // param.push(data);
        })
        //param 배열에 data 오브젝트를 담는다.

        // 데이터를 직렬화 시키기 : JSON.stringify("Object 배열 변수명")
        // var jsonData = JSON.stringify(param);

        $.ajax({
            type : 'post',
            url: '/ShoppingMall/admin/deleteId.do',
            contentType:'application/json; charset=UTF-8',
            traditional : true,
            dataType:'json',
            data : JSON.stringify(arrPrmtr),
            // data : {
            //     "jsonData" : jsonData
            // },
            dataType : 'json',
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