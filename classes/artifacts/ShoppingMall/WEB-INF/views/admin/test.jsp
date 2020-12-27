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


<button id='button-add-file'>파일 추가</button>
<form id='my-form'>
    <table class="table" id="resultTable">
        <thead>
        <tr>
            <td>sample</td>
            <td>sample</td>
            <td>sample</td>
        </tr>
        </thead>

        <tbody>
        <tr>
            <td>data1</td>
            <td>data2</td>
        </tr>
        <tr>
            <td>data3</td>
            <td>data4</td>
        </tr>
        <tr>
            <td>data5</td>
            <td>data6</td>
        </tr>
        </tbody>
    </table>

</form>
<button type="button" id="btnExcel"><span>엑셀다운로드</span></button>
<script src="//code.jquery.com/jquery-2.1.1.min.js"></script>
<script>
    $(function(){
        var editBtn = document.getElementById('editBtn');
        var editables = document.querySelectorAll('#title, #author, #content')

        editBtn.addEventListener('click', function(e) {
            if (!editables[0].isContentEditable) {
                editables[0].contentEditable = 'true';
                editables[1].contentEditable = 'true';
                editables[2].contentEditable = 'true';
                editBtn.innerHTML = 'Save Changes';
                editBtn.style.backgroundColor = '#6F9';
            } else {
                // Disable Editing
                editables[0].contentEditable = 'false';
                editables[1].contentEditable = 'false';
                editables[2].contentEditable = 'false';
                // Change Button Text and Color
                editBtn.innerHTML = 'Enable Editing';
                editBtn.style.backgroundColor = '#F96';
                // Save the data in localStorage
                for (var i = 0; i < editables.length; i++) {
                    localStorage.setItem(editables[i].getAttribute('id'), editables[i].innerHTML);
                }
            }
        });

        $('#button-add-file').click(addFileForm);
        $(document).on('click', '.button-delete-file', function(event) {
            $(this).parent().remove();
        });


        $('#btnExcel').click(function () {
            function fnExcelDownload(id, title) {
                var tab_text = '<html xmlns:x="urn:schemas-microsoft-com:office:excel">';
                tab_text += '<head><meta http-equiv="content-type" content="application/vnd.ms-excel; charset=UTF-8">';
                tab_text += '<xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet>'
                tab_text += '<x:Name>Sheet</x:Name>';
                tab_text += '<x:WorksheetOptions><x:Panes></x:Panes></x:WorksheetOptions></x:ExcelWorksheet>';
                tab_text += '</x:ExcelWorksheets></x:ExcelWorkbook></xml></head><body>';
                tab_text += "<table border='1px'>";
                var exportTable = $('#' + id).clone();
                exportTable.find('input').each(function (index, elem) { $(elem).remove(); });
                tab_text += exportTable.html();
                tab_text += '</table></body></html>';
                var data_type = 'data:application/vnd.ms-excel';
                var ua = window.navigator.userAgent;
                var msie = ua.indexOf("MSIE ");
                var fileName = title + '.xls';

                // IE 환경에서 다운로드
                if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) {
                    if (window.navigator.msSaveBlob) {
                        var blob = new Blob([tab_text], {
                            type: "application/csv;charset=utf-8;"
                        });
                        navigator.msSaveBlob(blob, fileName);
                    }
                } else {
                    var blob2 = new Blob([tab_text], {
                        type: "application/csv;charset=utf-8;"
                    });
                    var filename = fileName;
                    var elem = window.document.createElement('a');
                    elem.href = window.URL.createObjectURL(blob2);
                    elem.download = filename;
                    document.body.appendChild(elem);
                    elem.click();
                    document.body.removeChild(elem);
                }

            };
        })
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
<table border="3">
    <thead>
    <tr>Heading 1</tr>
    <tr>Heading 2</tr>
    </thead>
    <tbody>
    <tr>
        <td contenteditable='true'>dddddddddddd</td>
        <td contenteditable='true'>dddddddddddddddd</td>
    </tr>
    <tr>
        <td contenteditable='true'>1111111111d</td>
        <td contenteditable='true'>111111111111</td>
    </tr>
    </tbody>


    <button id="editBtn" type="button">Edit Document</button>

    <div id="editor">
        <h1 id="title">A Nice Heading.</h1>
        <p>Last Edited By - <span id="author">Monty Shokeen</span></p>
        <p id="content">Some content that needs correction.</p>
    </div>
</table>
<div style="background-color:#CCFFFF; width:390px; padding: 10px;">

    <button id="selectAll">전체선택</button>

    <button id="bold">굵게</button>

    <button id="italic">기울임</button>

    <button id="underLine">밑줄</button>

    <br/>

    <button id="justifyLeft">왼쪽정렬</button>

    <button id="justifyCenter">가운데정렬</button>

    <button id="justifyRight">오른쪽정렬</button>

    <br/>



    <select id="fontName" width="50px">

        <option value="">글꼴 선택</option>

        <option value="돋움">돋움</option>

        <option value="굴림">굴림</option>

        <option value="궁서">궁서</option>

        <option value="바탕">바탕</option>

        <option value="맑은 고딕">맑은 고딕</option>

    </select>

    <select id="fontSize" width="50px">

        <option value="">글자 크기</option>

        <option value="1">4px</option>

        <option value="2">8px</option>

        <option value="3">10px</option>

        <option value="4">12px</option>

        <option value="5">16px</option>

        <option value="6">20px</option>

        <option value="7">30px</option>

    </select>

    <select id="foreColor" width="50px">

        <option value="">글자 색깔</option>

        <option value="#f00">빨강</option>

        <option value="#00f">파랑</option>

        <option value="#0f0">초록</option>

        <option value="#ffff00">노랑</option>

        <option value="#000">검정</option>

    </select>

    <select id="hiliteColor" width="50px">

        <option value="">글자 배경색</option>

        <option value="#f00">빨강</option>

        <option value="#00f">파랑</option>

        <option value="#0f0">초록</option>

        <option value="#ffff00">노랑</option>

        <option value="#000">검정</option>

    </select>

</div>

<div id="text" contenteditable="true" style="width:400px; height:400px;">텍스트 편집기</div>



<!DOCTYPE html>
<html>
<body>
<div contentEditable="true">
    This text can be edited by the user.
</div>
</body>
</html>
</body>

</html>
