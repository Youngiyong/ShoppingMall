$(function () {

    var price = $('.cart__price');
    var count = $('.pp_count');
    var p_total = $('.p_total');
    var left_btn = $('.fa-angle-left');
    var right_btn = $('.fa-angle-right');
    var input_p_Count = $('.p_Count');
    var p = [];
    var c = [];
    var t = [];
    var arr = new Array();
    var deleteArr = new Array();
    console.log(left_btn);
    console.log(right_btn);

    var total_price = 0;

    console.log(price.length);
    console.log(count.length);
    for (var i = 0; i < price.length; i++) {
        var total2_price = 0;
        p[i] =  Number(price.eq(i).text());
        c[i] =  Number(count.eq(i).val());
        t[i] = Number(p_total.eq(i).text());
        total_price = total_price + p[i]*c[i];
        total2_price = total2_price + p[i]*c[i];
        p_total.eq(i).text(total2_price);
    }

    $('#total_price').text(total_price);

    $('tbody').on("click",".fa-close",function(e) {
        if (confirm("삭제 하시겠습니까?") == true) {
            var obj = new Object();
            obj.p_Id = $(this).parent().parent().find('input.p_Id').val();
            alert(obj.p_Id);

            $.ajax({
                type: 'post',
                url: '/ShoppingMall/shop/cartDelete.do',
                contentType: 'application/json; charset=UTF-8',
                data: JSON.stringify(obj),
                context: this,
                success: function (result) {
                    alert("삭제가 완료되었습니다.");
                    $(this).parent().parent().find('td').remove();
                },
                err: function (err) {
                    alert("에러@!")
                }
            })
        } else {
            return;
        }
    })


        $('.primary-btn').click(function () {
            if (confirm("결제 페이지로 이동하시겠습니까?") == true) {
                var arrtest = new Array();

                $('.pro-qty-2').each(function () {
                    var obj = new Object();
                    if ((Number)($(this).children().next('input.p_Count').val()) == 1) {
                        obj.p_Count = (Number)($(this).children().next('input.p_Count').val());
                    } else
                        obj.p_Count = (Number)($(this).children().next('input.p_Count').val() - 1);
                    obj.p_Id = $(this).parent().parent().parent().children().find('input.p_Id').val();
                    obj.p_Price = (Number)($('#total_price').text());
                    arrtest.push(obj);
                })

                $.ajax({
                    type: 'post',
                    url: '/ShoppingMall/shop/updateCartList.do',
                    contentType: 'application/json; charset=UTF-8',
                    data: JSON.stringify(arrtest),
                    success: function (result) {
                        alert("완료되었습니다.");
                    },
                    err: function (err) {
                        alert("에러@!")
                    }
                })
            }
            else   alert("악 실패!");

        })


        $('tbody').on("click", ".fa-angle-left", function (e) {

            alert('시fire 좀되라@!!@');
            console.log($(this).parent().parent().find(".p_Count").val());
            $(this).parent().find(".p_Count").val(Number($(this).parent().find(".p_Count").val()) - 1);
            $('#total_price').text((Number)($('#total_price').text()) - (Number)($(this).parent().parent().parent().parent().find('.p_Price').val()));
            console.log($(this).parent().find(".p_Count"));
            alert($(this).parent().parent().find(".p_Price").val());
            // $('#total_price').text() - ));
        })

        $('tbody').on("click", ".fa-angle-right", function (e) {

            alert('시fire 좀되라@!!@');
            console.log($(this).parent().parent().find(".p_Count").val());
            $(this).parent().find(".p_Count").val(Number($(this).parent().find(".p_Count").val()) + 1);
            $('#total_price').text((Number)($('#total_price').text()) + (Number)($(this).parent().parent().parent().parent().find('.p_Price').val()));
            alert($(this).parent().parent().parent().parent().find('.p_Price').val());
            console.log($(this).parent().parent().parent().parent().find('.p_Price').val());

        })



})






