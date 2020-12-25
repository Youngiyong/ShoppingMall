<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

    <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <link href="/ShoppingMall/resources/dist/summernote.css" rel="stylesheet" type="text/css"/>
    <script src="/ShoppingMall/resources/dist/summernote.js" type="text/javascript"></script>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <style>
        #file {
            color: white;
        }
    </style>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#summernote').summernote({
                height: 300,
                minHeight: null,
                maxHeight: null,
                codemirror: {
                    theme: 'default'
                }
            });

            $('#file').on("click", function (e){
                var formData = new FormData();
                var inputFile = $("input[name='file']");
                var files = inputFile[0].files;
                console.log(files);

                for(var i=0; i<files.length;i++){
                    formData.append("file", files[i]);
                }

                $.ajax({
                    url : '/ShoppingMall/admin/uploadAjax.do',
                    processData : false,
                    contentType : false,
                    data : formData,
                    type : 'POSt',
                    success : function (result){
                        alert("upload완료")
                    }

                })

            })
        });
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
       <h5 class="logo-text">Dashtreme Admin</h5>
     </a>
   </div>
   <ul class="sidebar-menu do-nicescrol">
      <li class="sidebar-header">MAIN NAVIGATION</li>
      <li>
        <a href="/ShoppingMall/admin/index.do">
          <i class="zmdi zmdi-view-dashboard"></i> <span>Dashboard</span>
        </a>
      </li>

      <li>
        <a href="/ShoppingMall/admin/icons.do">
          <i class="zmdi zmdi-invert-colors"></i> <span>UI Icons</span>
        </a>
      </li>

       <li>
           <a href="/ShoppingMall/admin/product.do">
               <i class="fa fa-shopping-cart"></i> <span>상품 등록</span>
           </a>
       </li>


       <li>
           <a href="/ShoppingMall/admin/products.do">
               <i class="zmdi zmdi-grid"></i> <span>상품 정보</span>
           </a>
       </li>
       <li>
           <a href="/ShoppingMall/admin/product_modify.do">
               <i class="zmdi zmdi-format-list-bulleted"></i> <span>상품 수정</span>
           </a>
       </li>
      <li>
        <a href="/ShoppingMall/admin/calendar.do">
          <i class="zmdi zmdi-calendar-check"></i> <span>Calendar</span>
          <small class="badge float-right badge-light">New</small>
        </a>
      </li>

      <li>
        <a href="/ShoppingMall/admin/profile.do">
          <i class="zmdi zmdi-face"></i> <span>Profile</span>
        </a>
      </li>

      <li>
        <a href="/ShoppingMall/admin/login.do" target="_blank">
          <i class="zmdi zmdi-lock"></i> <span>Login</span>
        </a>
      </li>

       <li>
        <a href="/ShoppingMall/admin/register.do" target="_blank">
          <i class="zmdi zmdi-account-circle"></i> <span>Registration</span>
        </a>
      </li>
	  
      <li class="sidebar-header">LABELS</li>
      <li><a href="javaScript:void();"><i class="zmdi zmdi-coffee text-danger"></i> <span>Important</span></a></li>
      <li><a href="javaScript:void();"><i class="zmdi zmdi-chart-donut text-success"></i> <span>Warning</span></a></li>
      <li><a href="javaScript:void();"><i class="zmdi zmdi-share text-info"></i> <span>Information</span></a></li>

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
                        <input type="text" class="form-control" placeholder="Enter keywords">
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
                                        <h6 class="mt-2 user-title">${adminVO.a_Id}</h6>
                                        <p class="user-subtitle">${a_Email}</p>
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
                             <h2 class="tm-block-title d-inline-block">상품 등록</h2>
                         </div>
                     </div>
                     <div class="row tm-edit-product-row">
                         <div class="col-xl-6 col-lg-6 col-md-12">
                             <form method="post" action="/ShoppingMall/admin/upload.do" enctype="multipart/form-data" class="tm-edit-product-form">
                                 <div class="form-group mb-3">


                                     <label
                                             for="p_Name"
                                     >상품명
                                     </label>
                                     <input
                                             id="p_Name"
                                             name="p_Name"
                                             type="text"
                                             class="custom-select tm-select-accounts validate"
                                             required
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
                                         <option selected>상의</option>
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
                                             <option selected>Black</option>
                                             <option value="Blue">Blue</option>
                                             <option value="Red">Red</option>
                                             <option value="White">White</option>
                                         </select>
                                     </div>
                                     <input type="hidden" name="i_Ip" value="<%=request.getRemoteAddr()%>">
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
                                             <option selected>S</option>
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
                                 <i
                                         class="fas fa-cloud-upload-alt tm-upload-icon"
                                         onclick="document.getElementById('fileInput').click();"
                                 ></i>
                             </div>
                             <div class="custom-file mt-3 mb-3">
                                 <input id="file" name="file" type="file" value="메인 이미지 업로드" multiple="multiple" />
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
                                        required
                                ></textarea>

                     </div>
                     </div>

                     </div>
                         <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                             <button type="submit" class="btn btn-primary btn-block text-uppercase">상품 추가</button>
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
