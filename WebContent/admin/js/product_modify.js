$(function () {
   $('#btn_modify').click(function (){

       $('#frm').attr("action", "/ShoppingMall/admin/productModify.do").submit();
   })
})