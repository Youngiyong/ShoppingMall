<%--
  Created by IntelliJ IDEA.
  User: 기용
  Date: 2020-12-13
  Time: 오후 4:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<script type="text/javascript" src="/ShoppingMall/app/js/jquery-3.5.1.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#login').click(function () {
            window.open("/ShoppingMall/login/login.do");
        })
    })
</script>
<head>
    <title>app</title>
</head>
<body>
<input type="button" value="버튼" id = "login">
<a href="/ShoppingMall/login/login.do">야미~</a>
</body>
</html>