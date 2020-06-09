


$(function() {
	$(".reward-next-btn").click(function() {
		ajaxPage(this);
2	});
	ajaxPage(".reward-next-btn");
});
$(function() {
	$('.owl-carousel').owlCarousel(
			{
				loop : false,
				nav : true,
				dots : false,
				navContainerClass : 'owl-nav custom',
				navText : [ '<i class="fas fa-chevron-left"></i>',
						'<i class="fas fa-chevron-right"></i>' ],
				responsive : {
					0 : {
						items : 3,
						slideBy : 3
					},
					425 : {
						items : 4,
						slideBy : 4
					},
					768 : {
						items : 6,
						slideBy : 6
					},
					1080 : {
						items : 10,
						slideBy : 10
					}
				}
			});
});

function ajax(url) {
	var returnData = $.ajax({
		async : false,
		type : "post",
		url : url,
		dataType : "JSON",
		succesc : function(data) {
			return data;
		}
	});
	return returnData;
}
$(function() {
	$(".reward-search").click(function() {
		$(this).addClass("on");
	});
});
$(function() {
	$(".reward-search-btn").click(function() {
		var target = $(this).siblings(".reward-search");
		if (target.val()) {
			$("#searchForm").submit();
		} else {
			target.addClass("on");
			target.focus();
		}
	})
});

$(function() {
	$('.owl-carousel2').owlCarousel(
			{
				loop : false,
				nav : true,
				dots : false,
				navContainerClass : 'owl-nav custom',
				navText : [ '<i class="fas fa-chevron-left"></i>',
						'<i class="fas fa-chevron-right"></i>' ],
				startPosition:"URLHash",
				responsive : {
					0 : {
						items : 3,
						slideBy : 3
					},
					425 : {
						items : 4,
						slideBy : 4
					},
					768 : {
						items : 6,
						slideBy : 6
					},
					1080 : {
						items : 10,
						slideBy : 10
					}
				}
			});
});
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

function ajaxPage(opt){
	var stDate = new Date() ;

	var target = $(".reward-items");
	var data= {
		"words":$(opt).data("words"),
		"page":$(opt).data("page"),
		"category_id":$(opt).data("category_id")
	}
	var option = {
		"data":data,
		"url":"/product/product-ajax"
	};
	var ajaxReturn = ajaxStan(option);
	var pushItem = "";
	var productStatus = ["숨김","예정상품","펀딩중","펀딩성공","펀딩실패"] ;
	if(ajaxReturn.status){
		if(ajaxReturn.data.resultCnt>0){
			for(var pvo of ajaxReturn.data.pvoList){
				var endDateSplit = pvo.end_date.split("-");
				var endDate = new Date(endDateSplit[0], endDateSplit[1]-1, endDateSplit[2]) ;
				
				var btMs = endDate.getTime() - stDate.getTime() ;
				var btDay = Math.ceil(btMs / (1000*60*60*24)) ;
				if(btDay==0){
					btDay="당일 마감"
				}else if(btDay>0){
					btDay+=" 일 남음";
				}else{
					btDay=productStatus[pvo.status];
				}
				pvo.current_funding = (pvo.current_funding==null||pvo.current_funding=="")?0:pvo.current_funding;
				var per = (pvo.current_funding>pvo.price)?100:+Math.floor(pvo.current_funding*100/pvo.price);
				pushItem += '<div class="reward-item">\
					<a href="/product/product?id='+pvo.id+'">\
						<div class="reward-img-box">\
							<img src="'+pvo.img_upload_dir+pvo.main_img+'" alt="">\
						</div>\
						<div class="reward-text-box">\
							<h3 class="reward-box-title text-max-line line2 line-fix">'+pvo.title+'</h3>\
							<p class="reward-sub-title text-max-line line1">'+pvo.cate+' | '+pvo.marker_name+'</p>\
							<div class="progress-bar mb10">\
								<!--상품 펀딩 진척도(최대100%)-->\
								<span class="percent" style="width: '+per+'%;"></span>\
							</div>\
							<div class="reward-per">\
								<div>\
									<span>'+Math.floor(pvo.current_funding*100/pvo.price)+'%</span>\
									<span class="reward-mobile-display-none">'+comma(pvo.current_funding)+' 원</span>\
								</div>\
								<span>'+btDay+'</span>\
							</div>\
						</div>\
					</a>\
				</div>\
				';

			}
			$(opt).data("page",ajaxReturn.data.nextPage);
			if(ajaxReturn.data.pageCnt<ajaxReturn.data.nextPage){
				$(opt).hide();
			}
		}else{
			pushItem=ajaxReturn.data.msg;
			$(opt).hide();
		}
	}else{
		alert("시스템 오류 입니다.")
		return false;
	}
	target.append(pushItem);

}