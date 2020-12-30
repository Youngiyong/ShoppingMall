$(function(){
 
	/******************
		국적 라디오 클릭시 어코디언 기능
	*******************/
	
	$(".col-lg-8").last().hide();
	$("input:radio[name=country]").click(function(){
		if($("input:radio[name=country]:checked").val()==9){
			$(".col-lg-8").last().hide();
			$(".col-lg-8").first().show();
		}else if($("input:radio[name=country]:checked").val()==8){
			$(".col-lg-8").first().hide();
			$(".col-lg-8").last().show();
		}
	});
	

});


/*******************************

	shop 추가 js

********************************/


	/******************
		카테고리 클릭시 글씨색 변경
	*******************/
    $(".shop__sidebar__categories ul li label").click(function(){
    	if( $(this).css("color") === "rgb(17, 17, 17)"){
    		$(this).css("color", "#b7b7b7");
    	}else{
    		$(".shop__sidebar__categories ul li label").css("color", "#b7b7b7");
    		$(this).css("color", "#111111");
    	}
    });
    $(".shop__sidebar__price ul li a").click(function(){
    	if( $(this).css("color") === "rgb(17, 17, 17)"){
    		$(this).css("color", "#b7b7b7");
    	}else{
    		$(".shop__sidebar__price ul li a").css("color", "#b7b7b7");
    		$(this).css("color", "#111111");
    	}
    });
    $(".shop__sidebar__price ul li label").click(function(){
    	if( $(this).css("color") === "rgb(17, 17, 17)"){
    		$(this).css("color", "#b7b7b7");
    	}else{
    		$(".shop__sidebar__price ul li a").css("color", "#b7b7b7");
    		$(this).css("color", "#111111");
    	}
    });
    $(".shop__sidebar__brand ul li label").click(function(){
    	if( $(this).css("color") === "rgb(17, 17, 17)"){
    		$(this).css("color", "#b7b7b7");
    	}else{
	    	$(this).css("color", "#111111");
	    }
    });
    
    
 
 
 	/******************
		checkbox 다중 선택 불가
	*******************/   
    $('.shop__sidebar__size input').click(function(){          
 
            if ($(this).prop('checked')) {
                $('.shop__sidebar__size label input').prop('checked', false);
                $(this).prop('checked', true);
            }
    });
    $('.shop__sidebar__color input').click(function(){          
 
            if ($(this).prop('checked')) {
                $('.shop__sidebar__color input').prop('checked', false);
                $(this).prop('checked', true);
            }
    });
    $('.shop__sidebar__categories input').click(function(){          
 
            if ($(this).prop('checked')) {
                $('.shop__sidebar__categories input').prop('checked', false);
                $(this).prop('checked', true);
            }
    });
    $('.shop__sidebar__price input').click(function(){          
 
            if ($(this).prop('checked')) {
                $('.shop__sidebar__price label').css("color", "#b7b7b7");
                $('.shop__sidebar__price label input').prop('checked', false);
                $(this).prop('checked', true);
            }
    });
    
    
    

    
    
    
 
    
    
    





/*******************************

	shop-details 추가 js

********************************/

















/*******************************

	checkout.jsp 추가 js

********************************/


	/******************
		우편번호 + 주소
	*******************/
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = "";
                document.getElementById("sample4_roadAddress").value = "";
                document.getElementById("sample4_jibunAddress").value = "";
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
    
    $(".checkout__input input:button").removeAttr('style');
	
	
	


