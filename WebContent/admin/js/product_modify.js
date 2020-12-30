$(function () {
   $('#btn_modify').click(function (){

       $('#frm').attr("action", "/ShoppingMall/admin/productModify.do").submit();
       alert("수정성공");

   })
})