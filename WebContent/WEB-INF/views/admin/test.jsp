<%--
  Created by IntelliJ IDEA.
  User: kosmo_13
  Date: 2020-12-26
  Time: 오후 1:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<script src="//code.jquery.com/jquery-2.1.1.min.js"></script>
<script>
    $(function(){
        $('#button-add-file').click(addFileForm);
        $(document).on('click', '.button-delete-file', function(event) {
            $(this).parent().remove();
        });
    });
    var count = 0;
    function addFileForm() {
        var html = "<div id='item_"+count+"'>";
        html += "<input type='file' name='fileup[]' />";
        html += "<button class='button-delete-file'>삭제</button></div>";
        count++;
        $("#my-form").append(html);
    }

</script>
<button id='button-add-file'>파일 추가</button>
<form id='my-form'>

</form>

</body>
</html>
