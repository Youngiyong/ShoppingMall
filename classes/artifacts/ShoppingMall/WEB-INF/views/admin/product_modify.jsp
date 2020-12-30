<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <title>상품 등록 페이지 ID: ${sessionScope.a_Id} </title>
  <!-- loader-->
  <link href="/ShoppingMall/admin/assets/css/pace.min.css" rel="stylesheet"/>
  <script src="/ShoppingMall/admin/assets/js/pace.min.js"></script>
  <!--favicon-->
  <link rel="icon" href="/ShoppingMall/admin/assets/images/favicon.ico" type="image/x-icon">
  <!-- simplebar CSS-->
  <link href="/ShoppingMall/admin/assets/plugins/simplebar/css/simplebar.css" rel="stylesheet"/>
  <!-- Bootstrap core CSS-->
  <link href="/ShoppingMall/admin/assets/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- animate CSS-->
  <link href="/ShoppingMall/admin/assets/css/animate.css" rel="stylesheet" type="text/css"/>
  <!-- Icons CSS-->
  <link href="/ShoppingMall/admin/assets/css/icons.css" rel="stylesheet" type="text/css"/>
  <!-- Sidebar CSS-->
  <link href="/ShoppingMall/admin/assets/css/sidebar-menu.css" rel="stylesheet"/>
  <!-- Custom Style-->
    <link href="/ShoppingMall/admin/assets/css/app-style.css" rel="stylesheet"/>

    <link href="/ShoppingMall/admin/assets/css/templatemo-style.css" rel="stylesheet"/>

    <script src="/ShoppingMall/admin/js/jquery-3.5.1.js"></script>
    <link href="/ShoppingMall/resources/dist/summernote.css" rel="stylesheet" type="text/css"/>
    <script src="/ShoppingMall/resources/dist/summernote.js" type="text/javascript"></script>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">

    <script type="text/javascript" src="/ShoppingMall/admin/js/product_modify.js"></script>
    <script type="text/javascript" src="/ShoppingMall/admin/js/logout.js"></script>

    <script src="/ShoppingMall/admin/js/summernote.js"></script>
    <style>
        #file {
            color: white;
        }
    </style>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
    <script type="text/javascript">
        var sel_file;

        $(document).ready(function () {
            $('#input_img').on("change", a);
        })

        function a(value) {
            var files = value.target.files;
            var filesArr = Array.prototype.slice.call(files);

            filesArr.forEach(function(f){
                if(!f.type.match("image.*")){
                    alert("확장자는 이미지 확장자만 가능합니다.");
                    return
                }

                sel_file = f;

                var reader = new FileReader();

                reader.onload = function (e){
                    $('#LoadImg').attr("src", e.target.result);
                }
                reader.readAsDataURL(f);
            });
        }
    </script>
</head>

<body class="bg-theme bg-theme9">

<!-- start loader -->
   <div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
   <!-- end loader -->

<!-- Start wrapper-->
 <div id="wrapper">

 <!--Start sidebar-wrapper-->
     <div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
         <div class="brand-logo">
             <a href="/ShoppingMall/admin/index.do">
                 <img src="/ShoppingMall/admin/assets/images/logo-icon.png" class="logo-icon" alt="logo icon">
                 <h5 class="logo-text">B U A 　 </h5>
             </a>
         </div>
         <ul class="sidebar-menu do-nicescrol">
             <li class="sidebar-header">관리자 페이지</li>
             <li>
                 <a href="/ShoppingMall/admin/index.do">
                     <i class="zmdi zmdi-view-dashboard"></i> <span>메인 화면</span>
                 </a>
             </li>
             <li>
                 <a href="/ShoppingMall/admin/members.do" >
                     <i class="zmdi zmdi-account-circle"></i> <span>회원 관리</span>
                 </a>
             </li>
             <li>
             <li>
                 <a href="/ShoppingMall/admin/product.do">
                     <i class="fa fa-shopping-cart"></i> <span>상품 등록</span>
                 </a>
             </li>


             <li>
                 <a href="/ShoppingMall/admin/products.do">
                     <i class="zmdi zmdi-grid"></i> <span> 상품 정보</span>
                 </a>
             </li>
             <li>
                 <a href="/ShoppingMall/admin/products.do">
                     <i class="zmdi zmdi-assignment-o"></i> <span> 주문 정보</span>
                 </a>
             </li>

         </ul>

     </div>
   <!--End sidebar-wrapper-->
  

<!--Start topbar header-->
     <header class="topbar-nav">
         <nav class="navbar navbar-expand fixed-top">
             <ul class="navbar-nav mr-auto align-items-center">
                 <li class="nav-item">
                     <a class="nav-link toggle-menu" href="javascript:void();">
                         <i class="icon-menu menu-icon"></i>
                     </a>
                 </li>
                 <li class="nav-item">
                     <form class="search-bar">
                         <input type="text" class="form-control" placeholder="키워드 입력">
                         <a href="javascript:void();"><i class="icon-magnifier"></i></a>
                     </form>
                 </li>
             </ul>

             <ul class="navbar-nav align-items-center right-nav-link">
                 <li class="nav-item dropdown-lg">
                     <a class="nav-link dropdown-toggle dropdown-toggle-nocaret waves-effect" data-toggle="dropdown" href="javascript:void();">
                         <i class="fa fa-envelope-open-o"></i></a>
                 </li>
                 <li class="nav-item dropdown-lg">
                     <a class="nav-link dropdown-toggle dropdown-toggle-nocaret waves-effect" data-toggle="dropdown" href="javascript:void();">
                         <i class="fa fa-bell-o"></i></a>
                 </li>
                 <li class="nav-item language">
                     <a class="nav-link dropdown-toggle dropdown-toggle-nocaret waves-effect" data-toggle="dropdown" href="javascript:void();"><i class="fa fa-flag"></i></a>
                     <ul class="dropdown-menu dropdown-menu-right">
                         <li class="dropdown-item"> <i class="flag-icon flag-icon-gb mr-2"></i> English</li>
                         <li class="dropdown-item"> <i class="flag-icon flag-icon-fr mr-2"></i> French</li>
                         <li class="dropdown-item"> <i class="flag-icon flag-icon-cn mr-2"></i> Chinese</li>
                         <li class="dropdown-item"> <i class="flag-icon flag-icon-de mr-2"></i> German</li>
                     </ul>
                 </li>
                 <li class="nav-item">
                     <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown" href="#">
                         <span class="user-profile"><img src="https://via.placeholder.com/110x110" class="img-circle" alt="user avatar"></span>
                     </a>
                     <ul class="dropdown-menu dropdown-menu-right">
                         <li class="dropdown-item user-details">
                             <a href="javaScript:void();">
                                 <div class="media">
                                     <div class="avatar"><img class="align-self-start mr-3" src="https://via.placeholder.com/110x110" alt="user avatar"></div>
                                     <div class="media-body">
                                         <h6 class="mt-2 user-title">${sessionScope.a_Id}</h6>
                                         <p class="user-subtitle">${sessionScope.a_Email}</p>
                                     </div>
                                 </div>
                             </a>
                         </li>
                         <li class="dropdown-divider"></li>
                         <li class="dropdown-item"><i class="icon-envelope mr-2"></i> Inbox</li>
                         <li class="dropdown-divider"></li>
                         <li class="dropdown-item"><i class="icon-wallet mr-2"></i> Account</li>
                         <li class="dropdown-divider"></li>
                         <li class="dropdown-item"><i class="icon-settings mr-2"></i> Setting</li>
                         <li class="dropdown-divider"></li>
                         <li class="dropdown-item"><i class="icon-power mr-2"></i> Logout</li>
                     </ul>
                 </li>
             </ul>
         </nav>
     </header>
<!--End topbar header-->
     <div class="container tm-mt-big tm-mb-big">
         <div class="row">
             <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
                 <br class="tm-bg-primary-dark tm-block tm-block-h-auto">
                     <div class="row">
                         <div class="col-12">
                             <h2 class="tm-block-title d-inline-block">상품 수정</h2>
                         </div>
                     </div>
                     <div class="row tm-edit-product-row">
                         <div class="col-xl-6 col-lg-6 col-md-12">
                             <form id="frm" method="post" action="/ShoppingMall/admin/upload.do" enctype="multipart/form-data" class="tm-edit-product-form">
                                 <div class="form-group mb-3">


                                     <label
                                             for="p_Name"
                                     >상품명
                                     </label>
                                     <input id="p_Name" name="p_Name" type="text"
                                             class="custom-select tm-select-accounts validate"
                                             value=${productVO.p_Name}
                                     />
                                 </div>

                                 <div class="form-group mb-3">
                                     <label
                                             for="p_Cate"
                                     >카테고리</label
                                     >
                                     <select name="p_Cate"
                                             class="custom-select tm-select-accounts"
                                             id="p_Cate"
                                     >
                                         <option selected>${productVO.p_Cate}</option>
                                         <option value="반팔">반팔</option>
                                         <option value="아우터">아우터</option>
                                         <option value="바지">바지</option>
                                         <option value="빤스">빤스</option>
                                         <option value="가방">가방</option>
                                         <option value="시계">시계</option>
                                         <option value="신발">신발</option>
                                         <option value="악세서리">악세서리</option>
                                         <option value="캐주얼의류">캐주얼의류</option>
                                     </select>
                                 </div>
                                 <div class="row">
                                     <div class="form-group mb-3 col-xs-12 col-sm-6">
                                         <label
                                                 for="p_Price"
                                         >상품 가격
                                         </label>
                                         <input
                                                 id="p_Price"
                                                 name="p_Price"
                                                 type="text"
                                                 class="custom-select tm-select-accounts validate"
                                                 required
                                                 value=${productVO.p_Price}
                                         />
                                     </div>
                                     <div class="form-group mb-3 col-xs-12 col-sm-6">
                                         <label
                                                 for="p_Count"
                                         >상품 수량
                                         </label>
                                         <input
                                                 id="p_Count"
                                                 name="p_Count"
                                                 type="text"
                                                 class="custom-select tm-select-accounts validate"
                                                 required
                                                 value=${productStockVO.p_Count}
                                         />
                                     </div>
                                     <div class="form-group mb-3 col-xs-12 col-sm-6">
                                         <label
                                                 for="p_Color"
                                         >Color
                                         </label>
                                         <select
                                                 class="custom-select tm-select-accounts"
                                                 id="p_Color" name="p_Color"
                                         >
                                             <option selected>${productStockVO.p_Color}</option>
                                             <option value="Black">Black</option>
                                             <option value="Blue">Blue</option>
                                             <option value="Red">Red</option>
                                             <option value="White">White</option>
                                         </select>
                                     </div>
                                     <input type="hidden" name="i_Ip" value="<%=request.getRemoteAddr()%>">
                                     <input type="hidden" name="p_Id" value=${productVO.p_Id}>
                                     <div class="form-group mb-3 col-xs-12 col-sm-6">
                                         <label
                                                 for="p_Size"
                                         >Size
                                         </label>
                                         <select
                                                 class="custom-select tm-select-accounts"
                                                 id="p_Size"
                                                 name="p_Size"
                                         >

                                             <option selected>${productStockVO.p_Size}</option>
                                             <option value="S">S</option>
                                             <option value="M">M</option>
                                             <option value="L">L</option>
                                             <option value="XL">XL</option>
                                         </select>
                                     </div>
                                 </div>

                         </div>

                         <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                             </br>
                             <div class="form-group mb-3">

                                 <div class="tm-product-img-dummy mx-auto">
                                     <img src=${imgPath} id="LoadImg" width="400px" height="240px">
                                 </div>
                                 <div class="custom-file mt-3 mb-3">
                                     <input name="file" id="input_img" type="file" value="메인 이미지 업로드" multiple="multiple">
                                 </div>

                             </div>
                         </div>
                            <div class="col-12">
                         <label
                                 for="summernote"
                         >상품설명</label
                         > <input id="test" type="file" style="display:none;" />
                                <textarea rows="10" cols="100"
                                        id="summernote"
                                        name="p_Content"
                                        type="text"
                                        class="custom-select tm-select-accounts validate"
                                        value=${productVO.p_Content}

                                ></textarea>
                                <button type="button" id = "btn_modify" class="btn btn-primary btn-block text-uppercase">상품 수정</button>

                     </div>
                     </div>

                     </div>



                         </form>
                     </div>
                 </div>
             </div>
         </div>
     </div>

  <%--<!--end color switcher-->--%>
   <%----%>
  <%--</div><!--End wrapper-->--%>


  <!-- Bootstrap core JavaScript-->

  <script src="/ShoppingMall/admin/assets/js/popper.min.js"></script>
  <script src="/ShoppingMall/admin/assets/js/bootstrap.min.js"></script>
	
 <!-- simplebar js -->
  <script src="/ShoppingMall/admin/assets/plugins/simplebar/js/simplebar.js"></script>
  <!-- sidebar-menu js -->
  <script src="/ShoppingMall/admin/assets/js/sidebar-menu.js"></script>
  
  <!-- Custom scripts -->
  <script src="/ShoppingMall/admin/assets/js/app-script.js"></script>
	
</body>
</html>
