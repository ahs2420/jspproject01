$(function(){
	$("#boardColor").change(function(){
		$("#clrBox").css("background",$(this).val());
	});
});

$(function(){
	$("[name=boardCode]").keyup(function(){
		$(this).val($(this).val().replace(/[0-9]|[^\!-z]/gi,""));
	});
	$("[name=boardCode]").blur(function(){
		var data={
			"boardCode":$(this).val()
		};
		var option={
			"data":data,
			"url":"/board/boardCodeChk"
		};
		var ajaxRetrun = ajaxStan(option);
		console.log(ajaxRetrun);
		if(ajaxRetrun.status!="error"){
			if(!ajaxRetrun.data.status){
				$(this).val("");
				$(this).focus();
			}
			$("#confirm").html(ajaxRetrun.data.msg);
		}else{
			alert("시스템 오류 입니다.");
			//window.location.reload();
		}
	});
});
