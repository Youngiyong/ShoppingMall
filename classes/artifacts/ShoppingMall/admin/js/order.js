$(function () {

    $("#btn_modify").click(function () {
        alert("test");
        var arrPrmtr = new Array(); //Object를 배열로 저장할 Array
        var objPrmtr = new Object(); //key, value형태로 저장할 Object


        $('.checkSelect:checked').each(function () {
            objPrmtr = new Object();
            objPrmtr.o_Id = $(this).parent().parent().find("td.o_Id").text();
            objPrmtr.p_Id = $(this).parent().parent().find("td.p_Id").text();
            objPrmtr.p_Name = $(this).parent().parent().find("td.p_Name").text();
            objPrmtr.m_Code = $(this).parent().parent().find("td.m_Code").text();
            objPrmtr.m_Name = $(this).parent().parent().find("td.m_Name").text();
            objPrmtr.o_Tel = $(this).parent().parent().find("td.o_Tel").text();
            objPrmtr.o_Addr = $(this).parent().parent().find("td.o_Addr").text();
            objPrmtr.od_Id = $(this).parent().parent().find("td.od_Id").text();
            objPrmtr.o_Post = $(this).parent().parent().find("td.o_Post").text();
            objPrmtr.o_Date = $(this).parent().parent().find("td.o_Date").text();
            objPrmtr.o_Status = $(this).parent().parent().find("#o_Status option:selected").text();
            // objPrmtr.m_Status = $(this).parent().parent().find("td.m_Status").text();
            arrPrmtr.push(objPrmtr);
        })

        if(arrPrmtr.length>0){
            $.ajax({
                type : 'post',
                url: '/ShoppingMall/admin/orderListUpdate.do',
                contentType:'application/json; charset=UTF-8',
                traditional : true,
                data : JSON.stringify(arrPrmtr),
                dataType : 'json',
                success : function (data) {
                    alert('수정이 완료 되었습니다.');
                    location.href = "/ShoppingMall/admin/orders.do";
                },
                error: function(err) {
                    //err msg 출력
                    console.log(err)
                }
            })
        }
        else alert("수정된 사용자가 없습니다.");

    })

})