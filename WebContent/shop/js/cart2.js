$(function () {

    var price = $('.cart__price');
    var count = $('.p_count');
    var total_price;
    console.log(price.length);
    console.log(count.length);
    for (var i = 0; i < price.length; i++) {
        total_price += Number(price[i])*Number(count[i]);
    }

    $('#total_price').text(total_price);
})