
    $(function () {
        $("#upbox-text").hide();
        $("#hr-two").hide();

        $("#show").click(function () {
            $("#upbox-text").show();
            $("#inbox-text").hide();
            $("#hr-two").show();
        });
    });
    $(function () {
        $("#hide").click(function () {
            $("#inbox-text").show();
            $("#upbox-text").hide();
        });

    });
    $(function () {
        $("#modal").click(function () {
            $(".modal").addClass("active");
        });
    });
    $(function () {
        $(".modal-close").click(function () {
            $(".modal").removeClass("active");

        });
    });
    
    //회원가입 유효검사
    $(function (){
    	$(".memberIdChk").click(function(){
//    		alert("됩니다.")
    		$.ajax({
    			type : "post",
    			url : "/login/register",
    			data : {
    				
    				"uid" : $(".memberIdChk").val()
    			},
    			success : function(data){
    					if($.trim(data) == "NO"){
    						$("")
    						
    					}
    				
    			}
    			
    		});
    		
    	});
    	
    	
    	
    	
    	
    });
    
    
    
    //회원아이디 중복 체크
    
