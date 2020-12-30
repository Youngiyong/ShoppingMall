$(function () {

    var price = $('.cart__price');
    var count = $('.p_count');
    var total_price;
    console.log(price.length);
    console.log(count.length);
    for (var i = 0; i < price.length; i++) {
        total_price += Number(price.eq(i).text())*Number(count.eq(i).text());
        console.log(price[i]);
        console.log(Number(price[i]));
    }

    $('#total_price').text(total_price);
})