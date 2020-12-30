$(function () {

    $("#btn_modify").click(function () {
        var arrPrmtr = new Array(); //Object를 배열로 저장할 Array
        var objPrmtr = new Object(); //key, value형태로 저장할 Object


        $('.checkSelect:checked').each(function () {
            objPrmtr = new Object();
            objPrmtr.m_Code = $(this).parent().parent().find("td.m_Code").text();
            objPrmtr.m_Id = $(this).parent().parent().find("td.m_Id").text();
            objPrmtr.m_Pass = $(this).parent().parent().find("td.m_Pass").text();
            objPrmtr.m_Name = $(this).parent().parent().find("td.m_Name").text();
            objPrmtr.m_Tel = $(this).parent().parent().find("td.m_Tel").text();
            objPrmtr.m_Age = $(this).parent().parent().find("td.m_Age").text();
            objPrmtr.m_Email = $(this).parent().parent().find("td.m_Email").text();
            objPrmtr.m_Country = $(this).parent().parent().find

            ("td.m_Country").text();
            objPrmtr.m_Addr = $(this).parent().parent().find("td.m_Addr").text();
            // objPrmtr.m_Status = $(this).parent().parent().find("td.m_Status").text();
            arrPrmtr.push(objPrmtr);
        })

        if(arrPrmtr.length>0){
            $.ajax({
                type : 'post',
                url: '/ShoppingMall/admin/updateMemberList.do',
                contentType:'application/json; charset=UTF-8',
                traditional : true,
                data : JSON.stringify(arrPrmtr),
                dataType : 'json',
                success : function (data) {
                    alert('수정이 완료 되었습니다.');
                    location.href = "/ShoppingMall/admin/members.do";
                },
                error: function(err) {
                    //err msg 출력
                    console.log(err)
                }
            })
        }
        else alert("삭제된 사용자가 없습니다.");

    })

    $("#btn_delete").click(function () {

        var arrPrmtr = new Array(); //Object를 배열로 저장할 Array
        var objPrmtr = new Object(); //key, value형태로 저장할 Object

        //checkSelect 클래스 체크박스 중 checked 인 것들만 가져와 for문과 같은 역할의 each 함수 사용
        $(".checkSelect:checked").each(function (e) {
            objPrmtr = new Object();
            objPrmtr.m_Code = $(this).parent().parent().find("td.m_Code").text();
            alert(objPrmtr.m_Code)
            arrPrmtr.push(objPrmtr);
        })


        if(arrPrmtr.length>0){
            $.ajax({
                type : 'post',
                url: '/ShoppingMall/admin/deleteMemberList.do',
                contentType:'application/json; charset=UTF-8',
                traditional : true,
                data : JSON.stringify(arrPrmtr),
                dataType : 'json',
                success : function (data) {
                    alert('삭제가 완료 되었습니다.');
                    location.href = "/ShoppingMall/admin/members.do";
                },
                error: function(err) {
                    //err msg 출력
                    console.log(err)
                }
            })
        }
        else
            alert("삭제된 사용자가 없습니다.");
    })
})