<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@include file="../hong-include/head.jspf"%>

<link rel="stylesheet" href="../hongcss/mypage/mypageFour.css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>



<div class="box2-funReady">
    <!-- 기본 정보 박스 -->
    <!-- <div class="flex-basic-adver"> -->
    <div class="basic-box">
        <div class="mar-bo3">
            <span class=" fon-col fon-wei fon-siz3 ">펀딩 준비</span>
            <span class=" fon-col fon-wei fon-siz3"><i class="fas fa-chevron-right"></i></span>
            <span class=" fon-wei fon-siz3">리워드 설계</span>
        </div>


        <div class="flex-basic1 wid1">
            <div class="basic-box-one wid4">
                <h1 class="di-la2 mar-bo6">리워드 설계</h1>
                <div class="info-box">
                    <p class="info-box mar-bo3">
                        서포터에게 제공할 리워드 내용을 입력하세요. 서포터가 쉽게 펀딩할 수 있는 저렴한 리워드부터 서포터의 보다 빠른 펀딩을 유도할 수 있는 얼리버드
                        리워드까지 다양한 리워드를 구성하세요.
                    </p>
                </div>
            </div>
            <!-- 가이드 박스 -->
            <div class="ba-adver-guide box-ra1 mar-right1 wid5 cu-poin">
                <div class="guide-box">
                    <a class="fon-wei1 fon-siz7 fon-co11 di-la1 ">
                        <i class="fal fa-book "></i>
                        메이커님을 위한 필수 가이드
                    </a>
                </div>
            </div>

        </div>
        <!-- 1번 -->
        <div class="ba-project">
            <div class="flex-basic2 ba-pro-img">
                <div class=" mar-bo2 wid4">
                    <div class="box-container bor-box1 text-padding3 fon-bor1">
                        <div class="box-text-one">
                            <h4>리워드 설계 조건</h4>
                        </div>
                        <div class="one-radio-box">
                            <ul>
                                <li>
                                    <span class="fon-siz3 fon-wei1">정렬 순서</span>
                                    <span class="mar-left1 fon-siz3">
                                        혜택이 높은 순으로 나오도록 정렬 순서를 등록하세요.
                                    </span>
                                </li>
                                <li class="">
                                    <span class="fon-siz3 fon-wei1">제한 수량</span>
                                    <span class="mar-left1 fon-siz3">
                                        생산 및 제공할 수 있는 리워드의 총 수량으로 해당 수량이 모두 펀딩되면 더 이상 펀딩 불가합니다.
                                    </span>
                                </li>
                                <li class="">
                                    <span class="fon-siz3 fon-wei1">발송 시작일</span>
                                    <span class="mar-left1 fon-siz3">
                                        프로젝트 종료일 이후부터 3개월 이내로 설계 가능합니다.
                                    </span>
                                </li>
                                <li class="">
                                    <span class="fon-siz3 fon-wei1">옵션 조건</span>
                                    <span class="mar-left1 fon-siz3">
                                        혜택이 높은 순으로 나오도록 정렬 순서를 등록하세요.
                                        <a href="#" class="fon-co4">리워드 옵션 2개 이상 설계 방법 알아보기</a>
                                    </span>
                                </li>
                            </ul> 
                        </div>
                    </div>
                    <div class="ba-guide3 box-back1 text-padding3">
                        <a href="#" class="fon-siz3 fon-co4">리워드를 잘 설계해야 펀딩률이 쑥쑥!</a>
                        <p class="fon-siz3 fon-co3">오픈하자마자 빠른 펀딩을 유도할 수 있는 얼리버드 리워드! 가이드를 통해 리워드를 만들어보세요.</p>
                    </div>
                </div>
            </div>
            <!-- 2번 -->
            <div class="add-box">
                <div class="file-box">
                    <label class="mobu" data-ton=".insert-reward"><i class="fas fa-plus fon-co11"></i> 추가하기</label>
                </div>
                <div class="add-text-box mar-top4">
                    <span class="fon-siz3 fon-co5">
                        <i class="fas fa-exclamation-circle"></i>
                        리워드를 추가하기 전에 프로젝트 종료일을 설정해주세요.
                    </span>
                    <div class="add-box fon-siz3 mar-left3 mar-bo3">
                        프로젝트 종료일은 <strong>펀딩 준비</strong> > <a href="#" class="fon-co4">기본정보</a>
                        기본정보에서 설정할 수 있습니다.
                    </div>
                </div>
            </div>

            <!-- 3번 -->

            <div class="mar-bo2 text-padding2 flex-box" id="optionWrap">
            </div>
        </div>

        <div class="btn-save tex-al2">
            <button class="btn-end" onclick="location.href='/page/mypageListModify?template=Reward&mypage=information&id=${audit_id}'" type="button">목록으로</button>
        </div>
    </div>
</div>
</div><!-- 전체 container 박스 -->
</main>
<div class="modal update-reward">
    <div class="text-box-mo">
        <div class="Reward-Edit-box">
        
        
            <div class="icon-X ">
                <button class="moX " onclick="toggleOn('.update-reward')" data-ton=".update-reward">
                    <i class="fal fa-times fon-siz9"></i>
                </button>
            </div>
            <div class="Reward-Edit-sub flex-basic2 mar-bo2">
                <h2 class="wid14 tex-al2">리워드 편집</h2>
            </div>
            <form action="" name="" id="updateForm">
                <input type="hidden" name="id" />
                <div class="edit-box">
                    <div class="edit-pay flex-box1 mar-bo7">
                        <h4 class="flex-box-ba1 flex-box-ba1 box-li2  tex-al2">금액</h4>
                        <input type="text" name="price_format" id="" class="flex-box-ba2 hei1 text-padding3" value="5,000">
                    </div>
                    <div class="edit-pay flex-box1 mar-bo7">
                        <h4 class="flex-box-ba1 box-li2  tex-al2 ">리워드명</h4>
                        <input type="text" name="title" id="" class="flex-box-ba2 hei1 text-padding3"
                            placeholder="타이틀 입력 ex)[얼리버드]기본리워드">
                    </div>
                    <div class="edit-pay flex-box1 mar-bo7">
                        <h4 class="flex-box-ba1 box-li3  tex-al2 ">상세설명</h4>
                        <textarea name="description" id="" cols="30" rows="3" maxlength="500"
                            style="margin-top: 0px; margin-bottom: 0px; height: 100px; width: 60%; padding: 16px;"
                            placeholder="제공하는 리워드가 무엇인지 간략하게 입력해 주세요."></textarea>
                    </div>
                    <div class="edit-pay flex-box1 mar-bo7 ">
                        <h4 class="flex-box-ba1 box-li2  tex-al2 ">옵션조건</h4>
                        <!-- <input type="text" name="" id="" class="flex-box-ba2 hei1 text-padding3" value=""> -->
                        <div class="option-box wid13">
                            <select name="option_type" class="wid1 hei1 text-padding2 mar-bo7">
                            	<c:forEach items="${optionType}" var="optionType" varStatus="vs">
                                	<option value="${vs.index}">${optionType}</option>
                            	</c:forEach>
                            </select>

                            <span class="di-in1 fon-siz3 fon-wei1">옵션설정</span>
                            <textarea name="option_kind" id="" cols="30" rows="3" maxlength="500"
                                style="margin-top: 0px; margin-bottom: 0px; height: 100px; width: 100%; padding: 16px;"
                                placeholder="옵션 값을 입력하세요 옵션 값은 엔터로 구분 됩니다.ex) 블랙: 230mm , 화이트 : 240mm"></textarea>

                            <span class="di-in1 mar-top4 fon-siz3 fon-wei1">옵션미리보기</span>
                            <select class="wid1 hei1 text-padding2  mar-bo7">
                                <option value="">옵션 선택 미리보기</option>
                            </select>

                        </div>
                    </div>

                    <div class="edit-pay flex-box1 mar-bo7">
                        <h4 class="flex-box-ba1 box-li2  tex-al2 ">배송 조건</h4>
                        <div class="di-ra-box wid13">
                            <!-- 배달 라디오 -->
                            <div class="di-ra-box-do mar-bo5 mar-top4">
                                <input class="doit ra-size ve-al2" name="delevery_chk" value="1" type="radio" id="do"> <label for="do">
                                    <span class="fon-siz2 fon-co8 text-padding2">
                                        배송이 필요한 리워드 입니다.
                                    </span>
                                </label>

                                <div class="delivery-box">
                                    <h4 class="fon-siz3 fon-co7 fon-wei1 mar-top3 mar-bo4 di-in1">
                                        배송료
                                    </h4>
                                    <input type="text" placeholder="0" name="delevery_price" class="text-padding10 hei1"> <span
                                        class="fon-siz3 fon-co7 fon-wei1 mar-top3 mar-bo4 di-in1">원</span>
                                    <div class="text-area fon-siz4">(배송비가 없는 경우, 0원 입력)
                                    </div>
                                </div>
                            </div>
                            <div class="di-ra-box-donot mar-bo5 mar-top4">
                                <input class="donot ra-size ve-al2" name="delevery_chk" value="0" type="radio" id="donot">
                                <label for="donot">
                                    <span class="fon-siz2 fon-co8 text-padding2">
                                        배송이 필요하지 않은 리워드 입니다.
                                    </span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="edit-pay flex-box1 mar-bo7">
                        <h4 class="flex-box-ba1 box-li2  tex-al2 ">제한 수량</h4>
                        <input type="text" name="stock" id="" class="flex-box-ba2 hei1 text-padding3" value=""
                            placeholder="수량입력">
                    </div>
                    <div class="edit-pay flex-box1">
                        <h4 class="flex-box-ba1 box-li2  tex-al2 ">발송 시작일</h4>
                        <!-- <input type="text" name="" id="" class="flex-box-ba2 hei1 text-padding3" value=""> -->
                        <div class="day-option flex-box1 wid13">
                            <div class="day-option flex-box1 wid13">
                                <input type="text" name="delivery_date" class="datePicker" readonly />
                             </div>

                        </div>



                    </div>
                </div>
                <div class="btn-all-box flex-box1">
                    <div class="btn-up-box">
                        <button class="btn-up moX" onclick="toggleOn('.update-reward')" data-ton=".update-reward" type="button">취소</button>
                        <button class="btn-up" id="updateDO" data-target="#updateForm" data-ton=".update-reward" type="button">수정</button>
                    </div>
                </div>
            </form>

        </div>
    </div>
</div>
<div class="modal insert-reward">
    <div class="text-box-mo">
        <div class="Reward-Edit-box">
        
            <div class="icon-X ">
                <button class="moX " onclick="toggleOn('.insert-reward')" data-ton=".insert-reward">
                    <i class="fal fa-times fon-siz9"></i>
                </button>
            </div>
            <div class="Reward-Edit-sub flex-basic2 mar-bo2">
                <h2 class="wid14 tex-al2">리워드 등록</h2>
            </div>
            <form action="" name="" id="insertForm">
            <input type="hidden" name="product_id" value="${product_id}">
                <div class="edit-box">
                    <div class="edit-pay flex-box1 mar-bo7">
                        <h4 class="flex-box-ba1 flex-box-ba1 box-li2  tex-al2">금액</h4>
                        <input type="text" name="price_format" id="" class="flex-box-ba2 hei1 text-padding3" value="5,000">
                    </div>
                    <div class="edit-pay flex-box1 mar-bo7">
                        <h4 class="flex-box-ba1 box-li2  tex-al2 ">리워드명</h4>
                        <input type="text" name="title" id="" class="flex-box-ba2 hei1 text-padding3"
                            placeholder="타이틀 입력 ex)[얼리버드]기본리워드">
                    </div>
                    <div class="edit-pay flex-box1 mar-bo7">
                        <h4 class="flex-box-ba1 box-li3  tex-al2 ">상세설명</h4>
                        <textarea name="description" id="" cols="30" rows="3" maxlength="500"
                            style="margin-top: 0px; margin-bottom: 0px; height: 100px; width: 60%; padding: 16px;"
                            placeholder="제공하는 리워드가 무엇인지 간략하게 입력해 주세요."></textarea>
                    </div>
                    <div class="edit-pay flex-box1 mar-bo7 ">
                        <h4 class="flex-box-ba1 box-li2  tex-al2 ">옵션조건</h4>
                        <!-- <input type="text" name="" id="" class="flex-box-ba2 hei1 text-padding3" value=""> -->
                        <div class="option-box wid13">
                            <select name="option_type" class="wid1 hei1 text-padding2 mar-bo7">
                            	<c:forEach items="${optionType}" var="optionType" varStatus="vs">
                                	<option value="${vs.index}">${optionType}</option>
                            	</c:forEach>
                            </select>

                            <span class="di-in1 fon-siz3 fon-wei1">옵션설정</span>
                            <textarea name="option_kind" id="" cols="30" rows="3" maxlength="500"
                                style="margin-top: 0px; margin-bottom: 0px; height: 100px; width: 100%; padding: 16px;"
                                placeholder="옵션 값을 입력하세요 옵션 값은 엔터로 구분 됩니다.ex) 블랙: 230mm , 화이트 : 240mm"></textarea>

                            <span class="di-in1 mar-top4 fon-siz3 fon-wei1">옵션미리보기</span>
                            <select class="wid1 hei1 text-padding2  mar-bo7">
                                <option value="">옵션 선택 미리보기</option>
                            </select>

                        </div>
                    </div>

                    <div class="edit-pay flex-box1 mar-bo7">
                        <h4 class="flex-box-ba1 box-li2  tex-al2 ">배송 조건</h4>
                        <div class="di-ra-box wid13">
                            <!-- 배달 라디오 -->
                            <div class="di-ra-box-do mar-bo5 mar-top4">
                                <label for="do1">
                                    <input class="doit ra-size ve-al2" name="delevery_chk" value="1" type="radio" id="do1"> 
                                    <span class="fon-siz2 fon-co8 text-padding2">
                                        배송이 필요한 리워드 입니다.
                                    </span>
                                </label>

                                <div class="delivery-box">
                                    <h4 class="fon-siz3 fon-co7 fon-wei1 mar-top3 mar-bo4 di-in1">
                                        배송료
                                    </h4>
                                    <input type="text" value="0" name="delevery_price" class="text-padding10 hei1"> 
                                    <span class="fon-siz3 fon-co7 fon-wei1 mar-top3 mar-bo4 di-in1">원</span>
                                    <div class="text-area fon-siz4">(배송비가 없는 경우, 0원 입력)
                                    </div>
                                </div>
                            </div>
                            <div class="di-ra-box-donot mar-bo5 mar-top4">
                                <label for="donot2">
                                <input class="donot ra-size ve-al2" name="delevery_chk" value="0" type="radio" id="donot2">
                                
                                    <span class="fon-siz2 fon-co8 text-padding2">
                                        배송이 필요하지 않은 리워드 입니다.
                                    </span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="edit-pay flex-box1 mar-bo7">
                        <h4 class="flex-box-ba1 box-li2  tex-al2 ">제한 수량</h4>
                        <input type="text" name="stock" id="" class="flex-box-ba2 hei1 text-padding3" value=""
                            placeholder="수량입력">
                    </div>
                    <div class="edit-pay flex-box1">
                        <h4 class="flex-box-ba1 box-li2  tex-al2 ">발송 시작일</h4>
                        <!-- <input type="text" name="" id="" class="flex-box-ba2 hei1 text-padding3" value=""> -->
                        <div class="day-option flex-box1 wid13">
                           <input type="text" name="delivery_date" class="datePicker" readonly />
                        </div>



                    </div>
                </div>
                <div class="btn-all-box flex-box1">
                    <div class="btn-up-box">
                        <button class="btn-up  moX" onclick="toggleOn('.insert-reward')" data-ton=".insert-reward" type="button">취소</button>
                        <button class="btn-up" id="insertDo" data-target="#insertForm"  data-ton=".insert-reward" type="button">등록</button>
                    </div>
                </div>
            </form>

        </div>
    </div>
</div>
<footer></footer>
</body>

<script>

    function toggleOn(item) {
        var $ton = $(item);
        $ton.toggleClass("on");
    }

    $.fn.toggleOn = function () {
        var ton = $(this).data("ton");
        $(ton).toggleClass("on");
    }
</script>

<script>
    $(function () {
        $(".delivery-box").hide();

        $("#do").click(function () {
            $(".delivery-box").show();
        });
        $("#donot").click(function () {
            $(".delivery-box").hide();
        });
        $("#do1").click(function () {
            $(".delivery-box").show();
        });
        $("#donot2").click(function () {
            $(".delivery-box").hide();
        });

    });
    $(document).ready(function(){
        $(".datePicker").datepicker({
            dateFormat : 'yy-mm-dd'
        });
        getOptionList();
    });
    $(function(){
        $("#insertDo").click(function(){
            var $form=$($(this).data("target"));
            var data=$form.serialize();
            var option={
                    "data":data,
                    "url":"/option/setOption"
                   };
            
        	var ajaxResult=ajaxStan(option);
            var target=$(this).data("ton");
        	if(ajaxResult.status){
				alert(ajaxResult.data.msg);
                getOptionList();
                $(target).removeClass("on");

            }else{
				alert("시스템 오류입니다.\n관리자에게 문의해 주세요.");

            }
        });
        $("#updateDO").click(function(){
            var $form=$($(this).data("target"));
            var data=$form.serialize();
            var option={
                    "data":data,
                    "url":"/option/updateOption"
                   };
            
        	var ajaxResult=ajaxStan(option);
            var target=$(this).data("ton");
        	if(ajaxResult.status){
				alert(ajaxResult.data.msg);
                getOptionList();
                $(target).removeClass("on");

            }else{
				alert("시스템 오류입니다.\n관리자에게 문의해 주세요.");

            }
        });
        $(document).on("click",".mobu",function(){
            var target=$(this).data("ton");
            var id = $(this).data("id");
            $(target).toggleClass("on");
            if(id>0){
                getOptionDetail(id);
            }
        });
        $(document).on("click",".optionDelete",function(){
            if(confirm("해당 리워드를 삭제 하시겠습니까?")){
                var data={
                    "id":$(this).data("id")
                };
                var option={
                        "data":data,
                        "url":"/option/deleteOption"
                    };
                
                var ajaxResult=ajaxStan(option);
                if(ajaxResult.status){
                    alert(ajaxResult.data.msg);
                    getOptionList();
                }else{
                    alert("시스템 오류입니다.\n관리자에게 문의해 주세요.");
                }
            }else{
                return false;
            }
        });
        
    });
    function getOptionDetail(id){
        var data={
			"id":id
        };
        var option={
                "data":data,
                "url":"/option/getOptionDetail"
        };
    	var ajaxResult=ajaxStan(option);
        var $form =$("#updateForm");
        if(ajaxResult.status){
            //alert(ajaxResult.data.msg);
            var pvo =ajaxResult.data.pvo;
            $form.find("[name=price_format]").val(pvo.price);
            $form.find("[name=title]").val(pvo.title);
            $form.find("[name=description]").val(pvo.description);
            $form.find("[name=option_kind]").val(pvo.option_kind);
            $form.find("[name=delevery_price]").val(pvo.delevery_price);
            $form.find("[name=stock]").val(pvo.stock);
            $form.find("[name=delivery_date]").val(pvo.delivery_date);
            $form.find("[name=id]").val(pvo.id);
            $form.find("[name=delevery_chk]").each(function(){
                if($(this).val()==pvo.delevery_chk){
                    $(this).attr("checked",true);
                }else{
                    $(this).attr("checked",false);
                }
            });
            $form.find("[name=option_type] option").each(function(){
                if($(this).val()==pvo.option_type){
                    $(this).attr("selected",true);
                }else{
                    $(this).attr("selected",false);
                }
            });
            if(pvo.delevery_chk==1){
                $form.find(".delivery-box").css("display","block");
            }else{
                $form.find(".delivery-box").css("display","none");
            }
        }else{
            alert("시스템 오류입니다.\n관리자에게 문의해 주세요.");
        }

    }
	function getOptionList(){
        var data={
			"product_id":${product_id}
                };
        var option={
                "data":data,
                "url":"/option/getOptionList"
        };
    	var ajaxResult=ajaxStan(option);
    	if(ajaxResult.status){
			//alert(ajaxResult.data.msg);
			var addItem="";
            var delivery="";
			for(var option of ajaxResult.data.optionList){
                delivery=(option.delevery_chk==0)?"해당없음":option.delevery_price+"원";
				addItem+='\
				<div class="name-left bor-box1 fon-bor2 text-padding5 wid15 box-sh hei9" >\
	                <!-- 마이페이지3 번 영수증 부분 -->\
	                <div class="flex-box text-padding2 box-li4">\
	                    <span class="fl-sp fon-wei4 ">'+option.price+'원</span>\
	                    <span class="flex-box-ba6 box-back6 fon-co12 fon-siz3 tex-al2 fon-wei1 text-padding13"> 제한 수량 '+option.stock+'개</span>\
	                </div>\
	                <div class="line-one"></div>\
	                <div class="receipt text-padding3 hei2">\
	                    <div class="flex-box fl-sp">\
	                        <span class="fl-sp fon-siz3 mar-bo4">리워드명</span>\
	                        <span class="fl-sp fon-siz3 mar-bo4">'+option.title+'</span>\
	                    </div>\
	                    <div class="flex-box fl-sp fon-siz3 mar-bo7">\
	                        <span class="fl-sp fon-siz3 mar-bo4"> 배송비</span>\
	                        <span class="fl-sp fon-siz3 mar-bo4 mar-left3">'+delivery+'</span>\
	                    </div>\
	                    <div class="flex-box fl-sp fon-siz3 mar-bo4">\
	                        <span class="fl-sp fon-siz3 mar-bo4 "> 리워드 발송 시작일</span>\
	                        <span class="fl-sp fon-siz3 mar-bo4 mar-left3">'+option.delivery_date+' 예정</span>\
	                    </div>\
	                    <div class="flex-box mar-top2">\
	                        <div class="update-box tex-al2 cu-poin">\
	                            <span class="mobu fl-sp fon-siz3" data-id="'+option.id+'" data-ton=".update-reward"> 편집 </span>\
	                        </div>\
	                        <div class="update-box tex-al2 cu-poin mar-left4">\
	                            <span class="fl-sp fon-siz3 optionDelete" data-id="'+option.id+'"> 삭제</span>\
	                        </div>\
	                    </div>\
	                </div>\
	            </div>\
				';
			}
            $("#optionWrap").html(addItem);
        }else{
			//alert("시스템 오류입니다.\n관리자에게 문의해 주세요.");

        }
	}
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
</script>
<%@include file="../hong-include/foot.jspf"%>