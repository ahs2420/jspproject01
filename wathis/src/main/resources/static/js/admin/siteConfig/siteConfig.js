$(function(){
	$("[name=title]").keyup(function(){
		$(this).val($(this).val().replace(/[0-9]|[^\!-z]/gi,""));
	});

	$("[name=title]").blur(function(){
		if($(this).hasClass("newTitle")){
			siteCodeChk(this,$($(this).data("target")).val(),$(this).data("confirm"));
		}else{
			siteCodeChk(this,$(this).data("group_id"),$(this).data("confirm"));
		}
        
    });
    $("#addConfig").click(function(){
        var data= $("#newSiteConfig").serialize();
        var option={
            "url":"/siteConfig/setSiteConfig"
        };
        console.log(option);
	});
	$(".groupSel").change(function(){
		$($(this).data("target")).prop("readonly",($(this).val()!="")).val($(this).val()).focus();	

	});
    loadSiteGroup();
});
function loadSiteGroup(){
	var option={
		"url":"/siteConfig/getSiteConfigGroupList"
	};
	var ajaxResult = ajaxStan(option);
	var selOption="";
    if(ajaxResult.status){
		for(group of ajaxResult.data.groupList){
			selOption+='<option value="'+group+'">'+group+'</option>'
		}
		$("#newGroupSel").append(selOption);
	}
}
function siteCodeChk(title,group,confirm){
	if(group){
		var data={
			"group_id":group,
			"title":$(title).val()
		};
		var option={
			"data":data,
			"url":"/siteConfig/siteConfigTitleChk"
		};
		var ajaxRetrun = ajaxStan(option);
		console.log(ajaxRetrun);
		if(ajaxRetrun.status!="error"){
			if(!ajaxRetrun.data.status){
				$(title).val("");
				$(title).focus();
			}
			$(confirm).html(ajaxRetrun.data.msg);
		}else{
			$(confirm).html("시스템 오류 입니다.");
		}
	}else{
		$(title).val("");
		$(title).focus();
		$(confirm).html("그룹을 먼저 입력해 주세요.");

	}
    
}