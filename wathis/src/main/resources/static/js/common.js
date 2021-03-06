// 카카오 공유
//document.write('<scr'+'ipt type="text/javascript" src="//developers.kakao.com/sdk/js/kakao.min.js" ></scr'+'ipt>');
// 히어로 슬라이드
$(function(){
    try{
        $('.owl-hero').owlCarousel({
            loop:true,
            nav:true,
            items:1,
            autoplay:true,
            autoplayTimeout:3000,
            autoplayHoverPause:true,
            dotsContainer:".owl_hero_dots",
            navContainer:".owl_hero_nav",
            navContainerClass:"owl-nav"
        });
    }catch(e){

    }
});
// 타겟 토글
$(function(){
    $(".toggle-target").click(function(){
        var target = $($(this).data("target"));
        target.toggle(300);
    });
});
// 네비게이션 
$(function(){
    $(window).scroll(function(){
        var windowOffset = $(window).scrollTop();
        var bodyOffset = $('body').offset();
        if(windowOffset>bodyOffset.top){
            $("nav").addClass("active");
        }else{
            $("nav").removeClass("active");
        }
    });
});
// 모바일 서브메뉴 토글
$(function(){
    $(".mobile-menu > a").click(function(e){
        if($(this).attr("href")=="#"){
            e.preventDefault();
        }
        $(this).next(".sub-menu").toggle(300);
    });
});
// 마이페이지 클릭이벤트-열기
$(function(){
    $(".mypage-btn").click(function(){
        $(".mypage-wrap").addClass("active");
        //$("body").css({overflow:"hidden",height:"100vh"});
    });
});
// 마이페이지 클릭이벤트-닫기
$(function(){
    $(".mypage-close").click(function(){
        $(".mypage-wrap").removeClass("active");
        //$("body").css({overflow:"auto",height:"auto"});
    });
});
// 공유하기 버튼 이벤트
$(function(){
    $(".sns-share-btn").click(function(){
        snsFuntion[$(this).data("type")+"Share"](this);
    });
});
// 숫자 확인 + 3자리 콤마
$(function(){
    $(".isNumeric").keyup(function(){
        $(this).comma();
        if(!isNumeric($(this).val(), 5)){
            alert("숫자만 입력해 주세요.");
            $(this).val("");
            $(this).focus();
        }
    });
});
// 버튼으로 숫자제어
$(function(){
    $(".input-count-change").click(function(){
        var func=$(this).data("function");
        var target=$($(this).data("target"));
        var targetMax=target.data('max');
        var targetVal=parseInt(uncomma(target.val()));
        if(func=="up"){
            ++targetVal;
        }else{
            --targetVal;
        }
        if(isNaN(targetVal)||targetVal<1){
            target.val("1");
            alert("주문 수량은 0이하가 될수 없습니다.");
        }else{
            target.val(targetVal).comma();
            target.maxChk();
        }
    });
});
//max 체크
$(function(){
    $(".input-max-chk").change(function(){
        $(this).maxChk();
    });
});
//.chkForm 필수 조건 확인
$(function(){
	$("form.chkForm").submit(function(){
		var bRetuen=true;
		bRetuen=chkItem(this);
		if(bRetuen){
			chkPasswd(this)
		}
		return bRetuen;
	});
});
//.change-selector 변경값 target에 넘겨줌
$(function(){
	$(".change-selector").change(function(){
		var target=$($(this).data("target"));
		if($.trim($(this).val())!=""){
			target.prop("readonly",true);
		}else{
			target.prop("readonly",false);
			target.focus();
		}
		target.val($(this).val());
	})
});
//chk박스 전체 제어

$(function(){
    $(".chkAll").click(function(){
        var bThis = $(this).is(":checked");
        var $target = $($(this).data("target"));
        $target.each(function(){
            $(this).prop("checked",bThis);
        });
    });
});
//폼데이터 확인
$(function(){
    $("form.chkFormCke").submit(function(){
        var $chkItem = $(this).find(".chkitem");
        var bReturn=true;
        $chkItem.each(function(){
            if($(this).hasClass("ckeItem")){
                bReturn=$(this).chkCke();
            }else{
                bReturn=$(this).itemChk();
            }
            if(!bReturn){
                return false;
            }
        });
        //return false;
        return bReturn;
    });
});
//.chkitem 인거 value 있는지 체크 -> 개별적으로 체크할대 사용(ex. cke체크도 같이 해야될때)
//$(this).data("error")에 에러메시지에 띄울 값 입력
$.fn.itemChk=function(){
    var exp = /^[a-z]+[a-z0-9]{6,13}$/g;
    var bReturn=true;
    if(!$.trim($(this).val())){
        alert($(this).data("error")+" 입력해주세요");
        $(this).focus();
        bReturn=false;
    }else if($(this).hasClass("chkExp")){
        if(!exp.test($(this).val())){
            alert($(this).data("error")+" 영문소문자,숫자 조합하여 7~12자리까지 입력해 주세요.");
            $(this).focus();
            bReturn=false;
        }
    }else if($(this).attr("id")=="repasswd"){
        if($(this).val()!=$("#passwd").val()){
            alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
            $(this).val("");
            $("#passwd").val("");
            $("#passwd").focus();
            bReturn=false;
        }
    }
    return bReturn;
};
//.chkitem 인거 value 있는지 체크
//$(this).data("error")에 에러메시지에 띄울 값 입력
function chkItem(item,pwdChk=false){
	var $chkItem=$(item).find(".chkitem");
    var bReturn= true;
    $chkItem.each(function(){
        if($(this).attr("type")=="checkbox"||$(this).attr("type")=="radio"){
            if(!$(this).is(":checked")){
                alert($(this).data("error")+" 선택해 주세요");
                $(this).focus();
                bReturn=false;
                return false;
            }
        }else{
            if($.trim($(this).val())==""){
                alert($(this).data("error")+" 입력해 주세요");
                $(this).focus();
                bReturn=false;
                return false;
            }
        }
        if(pwdChk&&$(this).attr("name")=="passwdChk"){
            if($(this).val()!=$("[name=passwd]").val()){
                alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
                $(this).val("");
                $("[name=passwd]").val("");
                $("[name=passwd]").focus();
                bReturn=false;
                return false;
            }
        }
	});
	return bReturn;
}
//cke내용 확인
//$(this).chkCke();
$.fn.chkCke=function(){
    var ckeditor = CKEDITOR.instances[$(this).attr('id')]; 
    if (ckeditor.getData()=="")
    {
        alert('내용을 입력 하세요');
        ckeditor.focus();
        return false;
    }
    return true;

}
//비밀번호 확인
function chkPasswd(item){
	var bRetuen=true;
    if($.trim($(item).find("input[name=passwd]").val())!=$.trim($(item).find("input[name=passwdChk]").val())){
        alert("비밀번호가 일치하지 않습니다.");
        $(item).find("input[name=passwd]").focus();
        bRetuen=false;
        return bRetuen;
    }
	return bRetuen;
}
// sns 공유 버튼
//snsFuntion[sns종류Share](sns공유버튼)으로 사용
var snsFuntion={
    kakaoShare:function(target){
        //data-title -> 공유할 제목
        //data-url -> 공유할 도메인(uri 제외)
        //data-img -> 공유할 이미지
        //data-page -> 공유할 uri

        //<![CDATA[
            // // 사용할 앱의 JavaScript 키를 설정해 주세요.
            // // 카카오링크 버튼을 생성합니다. 처음 한번만 호출하면 됩니다.
            Kakao.init('5df3affc668dd7dacb602ce4ca5fed6a');
            Kakao.Link.createDefaultButton({
                container: "#"+$(target).attr("id"),
                objectType: 'feed',
                content: {
                    title: $(target).data("title"),
                    description: $(target).data("desc"),
                    imageUrl: $(target).data("url")+"/"+$(target).data("img"),
                    link: {
                    mobileWebUrl: $(target).data("url")+$(target).data("page"),
                    webUrl: $(target).data("url")+$(target).data("page")
                    }
                },
                buttons: [
                    {
                    title: '바로가기',
                    link: {
                        mobileWebUrl: $(target).data("url")+$(target).data("page"),
                        webUrl: $(target).data("url")+$(target).data("page")
                    }
                    }
                ]
            });
        //]]>
    },
    facebookShare:function(target){
        //data-url -> 공유할 도메인(uri 포함)
        window.open("https://www.facebook.com/sharer/sharer.php?u="+$(target).data("url")+"&amp;src=sdkpreparse","faceShare","width=500,height=500,left=50,top=50");
    },
    naverShare:function(target){
        //data-url -> 공유할 도메인(uri 포함)
        window.open("http://blog.naver.com/openapi/share?url="+$(target).data("url"),"naverShare","width=500,height=500,left=50,top=50");
    },
    kakaoStoryShare:function(target){
        //data-url -> 공유할 도메인(uri 포함)
        window.open("https://story.kakao.com/share?url="+$(target).data("url"),"kakaoShare","width=500,height=500,left=50,top=50");
    },
    twitterShare:function(target){
        //data-url -> 공유할 도메인(uri 포함)
        window.open("http://twitter.com/share?url="+$(target).data("url")+"&text="+$(target).data("desc"),"twitterShare","width=500,height=500,left=50,top=50")
    }
}

// page 스크롤시 애니메이션
function fadeAnimation(target){
    var windowOffset = $(window).scrollTop();
    var windowHeight= window.innerHeight;
    var fadeTarget = $("#"+target).offset().top-windowHeight;
    if(windowOffset>(fadeTarget)){
        $("#"+target).addClass(target);
    }
}
// 모바일 버튼 클릭시 nav 배경 추가
function toggleBtn(btn){
    if(!$(btn).hasClass("close")){
        $("nav").addClass("active");
        activeAdd(btn);
        $(btn).addClass("close");
        //$("body").css({overflow:"hidden",height:"100vh"});
    }else{
        activeRemove(btn);
        $(btn).removeClass("close");
        //$("body").css({overflow:"auto",height:"auto"});
    }
}
// fadeInLeft 애니메이션 추가
function activeAdd(btn){
    target = $("."+$(btn).data("target"));
    target.addClass("active fadeInLeft");
}
// fadeInLeft 애니메이션 삭제
function activeRemove(btn){
    target = $("."+$(btn).data("target"));
    target.removeClass("active fadeInLeft");
}
// icon-rotate 추가 + 타겟 슬라이드
function slideToggle(button){
    var target = $($(button).data("target"));
    $(button).toggleClass("icon-rotate");
    target.slideToggle(300);
}
// .on 추가 + 타겟 .active 추가
function targetActive(item){
    $(item).toggleClass("on");
    $($(item).data("target")).toggleClass("active");
}

//숫자 확인
//1- 부호+콤마+소숫점,2-콤마+소숫점,3-소숫점,4-숫자만 5-콤마 제거후 숫자만 확인
function isNumeric(num, opt){
    // 좌우 trim(공백제거)을 해준다.
    num = String(num).replace(/^\s+|\s+$/g, "");

    if(typeof opt == "undefined" || opt == "1"){
        // 모든 10진수 (부호 선택, 자릿수구분기호 선택, 소수점 선택)
        var regex = /^[+\-]?(([1-9][0-9]{0,2}(,[0-9]{3})*)|[0-9]+){1}(\.[0-9]+)?$/g;
    }else if(opt == "2"){
        // 부호 미사용, 자릿수구분기호 선택, 소수점 선택
        var regex = /^(([1-9][0-9]{0,2}(,[0-9]{3})*)|[0-9]+){1}(\.[0-9]+)?$/g;
    }else if(opt == "3"){
        // 부호 미사용, 자릿수구분기호 미사용, 소수점 선택
        var regex = /^[0-9]+(\.[0-9]+)?$/g;
    }else if(opt == "4"){
        // only 숫자만(부호 미사용, 자릿수구분기호 미사용, 소수점 미사용)
        var regex = /^[0-9]*$/g;
    }else{
        // only 숫자만(부호 삭제, 자릿수구분기호 미사용, 소수점 미사용)
        num=uncomma(num);
        var regex = /^[0-9]*$/g;
    }

    if( regex.test(num) ){
        num = num.replace(/,/g, "");
        return isNaN(num) ? false : true;
    }else{ return false;  }
}
//콤마제거+ 숫자외에 문자 제거
function uncomma(str) {
    str = String(str);
    return str.replace(/[^\d]+/g, '');
}
// 콤마 추가 - $(target).comma()로 써라
$.fn.comma=function(){
    var num=uncomma($(this).val());
    $(this).val(num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
};
// 콤마 추가 - comma(숫자)로 써라
function comma(num){    
    return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}
// max값 확인 - $(target).maxChk()로 써라
$.fn.maxChk=function(){
    var targetMax=$(this).data('max');
    if(targetMax<uncomma($(this).val())){
        alert("잔여수량 내에서 수량을 선택해주세요.("+targetMax+"개 남음)");
        $(this).val(targetMax);
    }
};

// 공백제거
$.fn.trimVal=function(){
    var val=$(this).val();
    return $.trim(val);
};
//ajax 함수 option으로 값 설정
//
// url:option.url -> 보낼주소
// async:(option.async)?option.async:false, -> 동기 비동기 확인 , 기본값 비동기
// type:(option.type)?option.type:"post", -> 보낼때 method 설정 ,기본값 post
// dataType:(option.dataType)?option.dataType:"json", -> 받을 때 dataType 설정 , 기본 json
// data:option.data,-> 보낼값설정 배열형태로
// 예시
//$(function(){
// 	$("select[name=auth]").change(function(){
//      //보낼값 설정
// 		var data = {
// 			id: $(this).data("id"),
// 			auth : $(this).val()
// 		};
//      option설정
// 		var option={
// 			url: "/user/authUpdate",
// 			data:data,
// 			dataType:"HTML"
// 		};
// 		//alert("test"+$(this).data("id")+" value "+$(this).val());
// 		var ajax = ajaxStan(option);
// 		console.log(ajax);
//      성공이면 받은 데이터를 alert로 출력
// 		if(ajax.status="success"){
// 			alert(ajax.data)
// 		}
//      오류나면 error값 alert
//      else{
// 	        alert(ajax.error);
// 	        $(this).val($(this).data("org"));
//      }
// 	});
// });
//ajax 기본
function ajaxStan(option){
    var returnData="";
    $.ajax({
        url:option.url,
        async:(option.async)?option.async:false,
        type:(option.type)?option.type:"post",
        dataType:(option.dataType)?option.dataType:"json",
        data:option.data,
        success:function(data){
            returnData = {
            	"status":true,
            	"data":data
            };
        },error:function(xhr,status,error){
            returnData = {
            	"status":false,
            	"xhr":xhr,
            	"errstatus":status,
            	"error":error,
            	"setOption":option
            }
        }
    });
    return returnData;
}
function ajaxLoading(option){
    var returnData="";
    $.ajax({
        url:option.url,
        async:(option.async)?option.async:false,
        type:(option.type)?option.type:"post",
        dataType:(option.dataType)?option.dataType:"json",
        data:option.data,
        success:function(data){
            returnData = {
            	"status":"success",
            	"data":data
            };
        },error:function(xhr,status,error){
            returnData = {
            	"status":"error",
            	"xhr":xhr,
            	"errstatus":status,
            	"error":error,
            	"setOption":option
            }
        },beforeSend : function(){
            $("body").append('\
                    <div class="loding-modal modal-stan active">\
                        <div class="w-100p h-100p flex-box flex-a-center flex-j-center">\
                            <p class="white"><i class="xi-spinner-2 xi-spin"></i> 배송정보를 불러오는 중 입니다.</p>\
                        </div>\
                    </div>\
            ');
        },complete : function(){
            $(".loding-modal").removeClass("active");
        }
    });
    return returnData;
}
//파일 확장자 체크
/*
obj -> file태그 
*/
function checkFile(obj) {
    var filename = $(obj).val().substring($(obj).val().lastIndexOf('\\')+1);//원래 파일 이름
    var tg_name=$(obj).data("target");// 원래 파일이름이 보일곳(input)
    var fileType=$(obj).data("file-type");//파일 확장자 비교 타입
    var ext = filename.substring(filename.lastIndexOf('.')+1).toLowerCase();
    var extChk=(fileType=="img")?["jpg","jpeg","png","gif"]:["jpg","png","gif","xls","doc","pptx","xlsx","docx","zip","txt","pdf"];
    
	if (extChk.indexOf(ext) >= 0 ) {
		$(tg_name).val( filename );
	} else {
        alert("허용된 확장자가 아닙니다. 다시 선택해 주세요.\n(허용된 확장자 파일 : "+extChk.join(" , ")+")");
        $(obj).val("");
		return false;
	}
    return true;
}
//파일 용량 체크
function checkFileSize(obj,maxSizeMB) {
    var maxSize=maxSizeMB*1024*1024;//파일 확장자 비교 타입

    var browser=navigator.appName;
	var fileSize=0;
	// 익스플로러일 경우
	if (browser=="Microsoft Internet Explorer")
	{
		var oas = new ActiveXObject("Scripting.FileSystemObject");
		fileSize = oas.getFile( obj.value ).size;
	}
	// 익스플로러가 아닐경우
	else
	{
		fileSize = obj.files[0].size;
	}
    if(fileSize > maxSize){
        alert("첨부파일 사이즈는 "+maxSizeMB+"MB 이내로 등록 가능합니다. ");
        $(obj).val("");
        return false;
     }
     return true;
}
//이미지 미리보기
function imgPreview(obj) {
    var preview = $(obj).data("preview");
    if (obj.files && obj.files[0]) {
        var reader = new FileReader();
        
        reader.onload = function (e) {
            $(preview).attr('src', e.target.result);  
        }
        
        reader.readAsDataURL(obj.files[0]);
     }
}