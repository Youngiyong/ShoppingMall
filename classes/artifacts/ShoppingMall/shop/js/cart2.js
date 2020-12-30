$(function () {

    var price = $('.cart__price');
    var count = $('.p_count');
    var p_total = $('.p_total');
    var left_btn = $('.fa-angle-left');
    var right_btn = $('fa-angle-right');

    console.log(left_btn);
    console.log(right_btn);

    var total_price = 0;

    console.log(price.length);
    console.log(count.length);
    for (var i = 0; i < 3; i++) {
        var total2_price = 0;
        var p =  Number(price.eq(i).text());
        var c =  Number(count.eq(i).text());
        var t = Number(p_total.eq(i).text());
        total_price = total_price + p*c;
        total2_price = total2_price + p*c;
        total2_price += "원";
        p_total.eq(i).text(total2_price);
    }


    $('#total_price').text(total_price+"원");


})

