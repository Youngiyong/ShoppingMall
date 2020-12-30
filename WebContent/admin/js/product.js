$(function () {



    $('#button-add-file').click(addFileForm);
    $(document).on('click', '.button-delete-file', function(event) {
        $(this).parent().remove();
    });

    var count = 0;
    function addFileForm() {
        var html;
        html += " <input name=\"file\" type=\"file\" value=\"메인 이미지 업로드\" multiple=\"multiple\" />";
        html += "<button class='button-delete-file'>삭제</button></div>";
        count++;
        $("#addimage").append(html);
    }

    $('#btn_modify').click(function () {
        var obj = new Object(); //key, value형태로 저장할 Object
        $('.checkSelect:checked').each(function () {
            obj.p_Id = $(this).parent().parent().find("td.p_Id").text();

            // create element (form)
            var newForm = document.createElement('form');
            // set attribute (form)
            newForm.id = 'newForm';
            newForm.method = 'post';
            // create element (input)
            var input = document.createElement('input');
            // set attribute (input)
            input.setAttribute("type", "hidden");
            input.setAttribute("name", "p_Id");
            input.setAttribute("value", obj.p_Id);
            // append input (to form)
            newForm.appendChild(input);
            // append form (to body)
            document.body.appendChild(newForm);

            $('#newForm').attr("action", "/ShoppingMall/admin/product_modify.do").submit();
            alert("수정성공");

        })



    })

    $("#btn_delete").click(function () {
        var arrPrmtr = new Array(); //Object를 배열로 저장할 Array
        var objPrmtr = new Object(); //key, value형태로 저장할 Object

        //checkSelect 클래스 체크박스 중 checked 인 것들만 가져와 for문과 같은 역할의 each 함수 사용
        $(".checkSelect:checked").each(function (e) {
            objPrmtr = new Object();
            objPrmtr.p_Id = $(this).parent().parent().find("td.p_Id").text();
            arrPrmtr.push(objPrmtr);

        })

        if(arrPrmtr.length>0){
            $.ajax({
                type : 'post',
                url: '/ShoppingMall/admin/deleteId.do',
                contentType:'application/json; charset=UTF-8',
                traditional : true,
                data : JSON.stringify(arrPrmtr),
                dataType : 'json',
                success : function (data) {
                    alert('삭제가 완료 되었습니다.');
                    location.href = "/ShoppingMall/admin/products.do";
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