

$(function (){



    var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
    var getCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/);
    var getCheckPass = RegExp(/^[a-zA-Z0-9]{8,12}$/);
    var getName= RegExp(/^[가-힣]+$/);

    $("#btn_join").click(function (){

        //아이디 유효성 검사

        if( $.trim($("#m_Id").val()) == '' ){
            $('#idCheckResult').text("아이디를 입력해 주세요.");
            $("#m_Id").focus();
            return;
        }
        //이메일 유효성
        if($.trim($('#m_Email').val())==''){
            alert("이메일입력해주세요.");
            $('#m_Email').focus();
            return;
        }
        if(!getMail.test($("#m_Email").val())){
            alert("이메일형식에 맞게 입력해주세요")
            $("#m_Email").val("");
            $("#m_Email").focus();
            return;
        }

        //비밀번호 유효성
        if($.trim($('#m_Pass').val())==''){
            alert("비번입력해주세요.");
            $('#m_Pass').focus();
            return;
        }

        if($.trim($('#m_Pass').val()) != $.trim($('#m_Pass2').val())){
            alert("비밀번호가 일치하지 않습니다..");
            $('#m_Pass2').focus();

            return;
        }

        if(!getCheckPass.test($("#m_Pass").val())){
            alert("비밀번호 형식에 맞게 입력해주세요.");
            $("#m_Pass").focus();
            return;
        }

        if ($("#m_Id").val()==($("#m_Pass").val())) {
            alert("ID와 비밀번호 같습니다.");
            $("#m_Pass").val("");
            $("#m_Pass").focus();
        }

        //이름 유효성
        if (!getName.test($("#m_Name").val())) {
            alert("이름의 형식이 맞지 않습니다");
            $("#m_Name").val("");
            $("#m_Name").focus();
            return;
        }

        if($.trim($('#m_Name').val())==''){
            alert("이름입력해주세요.");
            $('#m_Name').foucs();
            return;
        }

        $("#frm").attr("action", "/ShoppingMall/member/adminInsert.do").submit();
    })

    $('#m_Id').keyup(function(){
        if(!getCheck.test($("#m_Id").val())){
            $('#idCheckResult').text("아이디 형식에 맞게 입력해주세요.");
            $("#m_Id").focus();
            return;
        } else {
            $.ajax({
                type: 'post',   // 전송방식
                async: true,    // 비동기통신
                url: '/ShoppingMall/member/idCheck.do', //****요청(request)
                contentType: 'application/x-www-form-urlencoded;charset=utf-8', // 한글처리
                data: {'m_Id': $('#m_Id').val()},
                success: function (result) {
                    $('#idCheckResult').text(result);
                },
                error: function (err) {
                    console.log(err)
                }
            })
        }
    })





})