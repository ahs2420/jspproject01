// 카카오 공유
//document.write('<scr'+'ipt type="text/javascript" src="//developers.kakao.com/sdk/js/kakao.min.js" ></scr'+'ipt>');
// 히어로 슬라이드
$(function(){
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
    $(".mobile-menu > a").click(function(){
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
//.chkitem 인거 value 있는지 체크
//$(this).data("error")에 에러메시지에 띄울 값 입력
function chkItem(item){
	var $chkItem=$(item).find(".chkitem");
	var bRetuen=true;
	$chkItem.each(function(){
        if($(this).attr("type")=="checkbox"||$(this).attr("type")=="radio"){
            if(!$(this).is(":checked")){
                alert($(this).data("error")+" 선택해 주세요");
                $(this).focus();
                bRetuen=false;
                return false;
            }
        }else{
            if($.trim($(this).val())==""){
                alert($(this).data("error")+" 입력해 주세요");
                $(this).focus();
                bRetuen=false;
                return false;
            }
        }
	});
	return bRetuen;
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
        }
    });
    return returnData;
}
