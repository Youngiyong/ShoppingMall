$(function(){
 

});


/*******************************

	shop 추가 js

********************************/


	/******************
		카테고리 클릭시 글씨색 변경
	*******************/
    $(".shop__sidebar__categories ul li a").click(function(){
    	if( $(this).css("color") === "rgb(17, 17, 17)"){
    		$(this).css("color", "#b7b7b7");
    	}else{
    		$(".shop__sidebar__categories ul li a").css("color", "#b7b7b7");
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
    $(".shop__sidebar__brand ul li label").click(function(){
    	if( $(this).css("color") === "rgb(17, 17, 17)"){
    		$(this).css("color", "#b7b7b7");
    	}else{
	    	$(this).css("color", "#111111");
	    }
    });
    
    
    

    
    
    
 
    
    
    





/*******************************

	shop-details 추가 js

********************************/


