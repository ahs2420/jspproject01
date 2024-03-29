<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@include file="../hong-include/head.jspf"%>
<link rel="stylesheet" href="../hongcss/mypage/mypageFive.css">

<!-- fontawesome 코드 -->
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.2.0/css/all.css">
<!-- fontawesome 코드 -->
<!-- CKeditor -->
<script src="/plugin/ckeditor/ckeditor.js"></script>
<!-- 리워드 고지 js -->
<script src="../hongjs/mypage/mypage-four.js"></script>

<!-- <script src="../hongjs/mypage/common.js"></script> -->



            <div class="box2-funReady">
                <!-- 기본 정보 박스 -->
                <!-- <div class="flex-basic-adver"> -->
                <div class="basic-box">
                    <div class="mar-bo3">
                        <span class=" fon-col fon-wei2 fon-siz3 ">펀딩 준비</span>
                        <span class=" fon-col fon-wei2 fon-siz3"><i class="fas fa-chevron-right"></i></span>
                        <span class=" fon-wei2 fon-siz3">위험요인 및 정책</span>
                    </div>


                    <div class="flex-basic1 wid1">
                        <div class="basic-box-one wid4">
                            <h1 class="di-la2 mar-bo6">위험요인 및 정책</h1>
                            <div class="info-box">
                                <p class="info-box mar-bo3">
                                    크라우드펀딩 특성상, 리워드 발송 예상 변동 기간에 대하여 서포터에게 미리 알리고, 교환/펀딩금반환/AS 정책을 고지하여야 합니다. 서포터에게 하는
                                    약속인 만큼, 프로젝트 오픈 후에는 수정이 불가하니 신중하게 작성하세요.
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
                        <div class="flex-basic2 wid1 ba-pro-img">
                            <div class="mar-bo2 wid4">
                                <div class="box-container">
                                    <div class="box-text-one">
                                        <h4>리워드 정보 제공 고시<span class="fon-co5">*</span></h4>
                                        <p class="fon-siz3 fon-col">서포터에게 리워드를 제공하는 경우, 전자 상거래 등에서의 상품 등의 정보제공에 관한 고시법에
                                            따라 리워드 정보 제공 고시를 반드시 입력해야
                                            합니다.</p>
                                    </div>
                                    <!-- 리워드 정보 고시 -->
                                    <!-- <div class="file-box mar-top4">
                                        <label for="file1"><i class="fas fa-plus fon-co9"></i> 추가하기</label>
                                        <input type="file" id="file1">
                                    </div> -->
                                    <select id="Reward-documents" class="wid1 hei1 fon-bor1 fon-siz1 text-padding1 ::placeholder">
                                        <option value="0">주요 카테고리별 작성 예시</option>
                                        <option value="1">의류</option>
                                        <option value="2">구두/신발</option>
                                        <option value="3">가방</option>
                                        <option value="4">패션잡화(모자/벨트.액세서리)</option>
                                        <option value="5">침구류/커튼</option>
                                        <option value="6">가구(침대/소파/싱크대/DTY제품)</option>
                                        <option value="7">주방용품</option>
                                        <option value="8">화장품</option>
                                        <option value="9">귀금속/보석/시계류</option>
                                        <option value="10">식품(농・축・수산물)</option>
                                        <option value="11">건강 기능 식품</option>
                                        <option value="12">가공식품</option>
                                        <option value="13">영유아 용품</option>
                                        <option value="14">서적</option>
                                        <option value="15">디지털 콘텐츠(음원, 게임, 인터넷강의 등)</option>
                                    </select>
                                    <textarea id="editor1" name="content" class="ckeditor"></textarea>
                                    <script>
                                        CKEDITOR.replace('editor1', {
                                            customConfig: '/plugin/ckeditor/config.js',
                                            width: '100%',
                                            height: '500',
                                            filebrowserImageUploadUrl: '/cke/imageUpload'
                                        });
                                    </script>
                                    <!-- inline 타입으로 생성 -->
                                    <textarea id="editor2" name="content" class="ckeditor"></textarea>
                                    <script>
                                        CKEDITOR.inline('editor2', {
                                            customConfig: '/plugin/ckeditor/config.js',
                                            width: '100%',
                                            height: '500',
                                            filebrowserImageUploadUrl: '/cke/imageUpload'
                                        });
                                    </script>
                                </div>
                            </div>
                            <div class="ba-guide3">
                                <div class="box-li1 box-back1 text-padding3">
                                    <h4 class="mar-bo5 fon-siz4 fon-co7">
                                        <a href="#" class="fon-co4 fon-wei1">리워드 정보 제공 고시 작성 가이드</a>
                                    </h4>
                                    <p class="fon-siz4 mar-bo6 fon-co7">
                                        · 여러 리워드를 제공하나 동일한 종류의 리워드인 경우, 종류를 한가지만 선택하고 모든 리워드의 내용을 함께 작성하여도 무방합니다. </p>
                                    <p class="fon-siz4 mar-bo6 fon-co7">
                                        · 해당 사항이 없는 항목에 대해서는 '해당 사항 없음' 으로 입력하세요.</p>
                                    <p class="fon-siz4 mar-bo6 fon-co7">
                                        · 기재 내용이 많고 스토리 상에 표시한 경우, '스토리 상세 내용 참조'로 입력 가능합니다.</p>
                                </div>
                            </div>
                        </div>
                        <!-- 2번 -->
                        <div class="flex-basic2 wid1">
                            <div class="box-text-one wid4">
                                <h4 class="">펀딩금 반환 정책</h4>
                                <div class="box-li1 mar-top4 box-back5 text-padding3 wid1 tex-al1">
                                    <h4 class="mar-bo5 fon-siz2 fon-co7 fon-wei1 ">
                                        <i class="fas fa-exclamation-circle"></i> 본 프로젝트는 와디즈 펀딩금 반환 정책이 적용됩니다.
                                    </h4>
                                    <p class="fon-siz2 mar-bo3 fon-co8">
                                        자세한 내용은 <a href="#" class="fon-co4 cu-poin"> 운영 정책</a>에서 확인해주세요.
                                        <br />
                                        시행일: 2020. 01. 17</p>
                                    <h4 class="mar-bo5 fon-siz2 fon-co7 fon-wei1 ">
                                        <i class="fas fa-exclamation-circle"></i> 본 프로젝트는 와디즈 펀딩금 반환 정책이 적용됩니다.
                                    </h4>
                                    <p class="fon-siz2 mar-bo3 fon-co8">
                                        • 메이커가 프로젝트 페이지에 기재한 바와 동일한 품질의 리워드를 약속한 일자에 제공하지 못할 경우, 서포터는 아래 정책에 따라 펀딩금 반환
                                        신청을 할
                                        수 있습니다.</p>
                                    <p class="fon-siz2 mar-bo3 fon-co8">
                                        • 이때, 와디즈는 고객센터에서 서포터로부터 접수된 내용을 메이커와 소통 과정을 거쳐 펀딩금 반환 여부를 결정하고, 그 사항을 와디즈가
                                        서포터에게
                                        안내하는 방식으로 진행됩니다.</p>
                                    <p class="fon-siz2 mar-bo3 fon-co8">
                                        • 펀딩금 반환이 확정되면, 메이커가 서포터에게 계좌이체하는 방식이 아닌 와디즈에서 카드 결제 취소하는 방식으로 진행합니다. 메이커가 계좌
                                        이체를 통해
                                        서포터에게 별도로 환불을 진행하여 와디즈 결제 취소와 중복 적용될 경우, 와디즈는 해당 계좌 이체건에 대해서 책임지지 않습니다.</p>
                                </div>
                                <p class="mar-top4 mar-bo4">펀딩 종료 후 아래 정책에 따라 펀딩금 반환 신청을 할 수 있습니다. 펀딩금 반환은 서포터가 펀딩한 카드
                                    결제건을 취소하는 방식으로 이뤄집니다. 펀딩금 반환은
                                    <a href="#" class="fon-co4 cu-poin">펀딩금 반환 문의처</a>을 통해 신청하실 수 있습니다.</p>
                            </div>
                        </div>
                        <!-- 3번 -->
                        <div class="ba-pro-name mar-bo2 wid4">
                            <div class="box-text-one">
                                <h4 class="fon-wei1">리워드가 지연될 경우</h4>
                                <h4 class="di-la1">메이커가 최대 발송 지연 가능일까지 리워드를 발송하지 않을 경우,
                                </h4><span class="fon-siz2">서포터는 펀딩금 반환 신청을 할
                                    수 있습니다. 최대 발송 지연 가능일은 리워드 발송 시작의 마지막 날로부터 90일 이후 입니다.</span>
                                <p class="fon-siz2  mar-top3 mar-bo4">(예) 리워드 발송 시작일: 2020년 01월 초(1~10일) → 리워드 최대 발송
                                    지연일: 2020년 04월 08일</p>
                                <p class="fon-siz2">
                                    • 리워드의 유통 및 제작에 법적으로 문제가 있는 경우</p>
                                <p class="fon-siz2">
                                    • 리워드의 내용이 표시/광고 내용과 현저하게 상이한 경우</p>
                                <p class="fon-siz2">
                                    • 정상적인 사용상태에서 리워드의 기능/성능상 오작동이 발생되는 경우</p>
                                <p class="fon-siz2">
                                    • 리워드가 미작동될 경우</p>
                                <p class="fon-siz2">
                                    • 주요 성분 미기재로 인해 서포터에게 중대한 신체 피해를 입힌 경우</p>
                            </div>
                        </div>
                        <!-- 4번 -->
                        <div class="ba-pro-name mar-bo2 wid4">
                            <div class="box-text-one">
                                <h4 class="mar-bo5 fon-wei1">단, 아래 어느 하나에 해당될 경우 펀딩금 반환은 불가합니다.</h4>

                                <p class="fon-siz2">
                                    • 메이커가 프로젝트 페이지 내에 명시적으로 고지한 하자 불인정 사유에 해당하는 경우</p>

                                <p class="fon-siz2">
                                    예) 공장 제작 과정상 벌어짐 방지를 위해 봉제되어 제공되는 포켓은 하자 사유가 되지 않습니다.</p>

                                <p class="fon-siz2">
                                    • 서포터의 귀책 사유로 리워드의 일부 혹은 전체가 분실/파손/고장/오염/훼손이 발생된 경우</p>
                                <p class="fon-siz2">
                                    • 모니터 해상도의 차이로 인해 색상이나 이미지가 실제와 다른 경우</p>
                                <p class="fon-siz2">
                                    • 공연, 디지털컨텐츠, 여행 패키지 상품, 무형 서비스 및 컨텐츠의 제공이 완료되었을 경우</p>
                                <p class="fon-siz2">
                                    • 신선식품 혹은 정기구독 서비스일 경우</p>
                                <p class="fon-siz2">
                                    • 서포터의 제품 숙지 미숙으로 인해 문제가 발생했을 경우</p>
                            </div>
                        </div>
                        <!-- 5번 -->
                        <div class="ba-pro-name mar-bo2 wid4">
                            <div class="box-text-one">
                                <h4 class="mar-bo5 fon-wei1">기타 주의사항</h4>

                                <p class="fon-siz2">
                                    • 크라우드펀딩의 특성상 프로젝트 종료 후 서포터의 단순변심으로 인한 펀딩금 반환은 불가합니다.</p>

                                <p class="fon-siz2">
                                    • 회사는 메이커와 상호 협의 하에 프로젝트를 취소할 수 있으며, 펀딩 종료 후 프로젝트가 취소될 경우에는 펀딩금이 반환됩니다.</p>

                                <p class="fon-siz2">
                                    • 하자가 있는 경우, 리워드 반송을 위한 배송비는 메이커가 부담하여야 하고 하자가 없는 경우에는 리워드 반송 및 재반송에 대한 배송비를 서포터에게
                                    청구될 수
                                    있습니다.</p>

                            </div>
                        </div>
                        <!-- 6번 -->
                        <div class="ba-pro-name mar-bo2 wid4">
                            <div class="box-text-one">
                                <span>리워드 발송 예상 변동 기간</span>

                                <p class="fon-siz3 mar-bo3 fon-col">
                                    혹시라도 리워드 발송이 예정된 일정보다 최대 90일까지 지연될 가능성이 있다면, 아래 정책을 지켜야합니다.</p>
                                <span class="mar-bo4">
                                    <h4 class="fon-wei1 di-in1 mar-bo5">리워드 발송 예상 변동 기간</h4><span class="mar-left4">최대
                                        90일</span>
                                </span>

                                <div class="box-li1 box-back1 text-padding3">
                                    <p class="fon-siz2 mar-bo7">
                                        펀딩 받은 후, 리워드를 제작할 수 있는 크라우드펀딩의 특성과 생산 과정에서의 예상치 못한 상황으로 인하여 리워드 발송이 지연되거나 발송이
                                        불가할 수
                                        있습니다.</p>
                                    <p class="fon-siz2">
                                        리워드 발송일 변동이 예상되는 시점에 즉시 새소식으로 변경된 리워드 제공일을 알려주어야 합니다.</p>
                                </div>
                            </div>
                        </div>
                        <!-- 7번 -->
                        <div class="ba-pro-name mar-bo2 wid4 flex-basic2">
                            <div class="box-text-one wid4">
                                <p class="fon-siz2">
                                    위험요인 및 정책에서 작성하는 정보들은 <a href="#" class="fon-co4">프로젝트 상세 페이지 내 펀딩안내 탭</a>에 노출됩니다.
                                    어떻게 보여지는지 궁금하신가요?</p>
                            </div>
                            <div class="box-text-one">
                                <button class="box-back6 fon-co9 all-btn wid9 hei4 fon-wei1 cu-poin box-ra1 bubu" data-ton=".modal">펀딩안내
                                    미리보기</button>
                            </div>
                        </div>
                        <!-- 8번 -->
                        <div class="end-radio">
                            <input class="end-box" name="q2" type="radio" id="end-radio">

                            <label for="end-radio">
                                <span class="fon-siz1 fon-co3 text-padding2">
                                    (필수) 펀딩안내 탭에 노출되는 위험요인 및 정책을 모두 확인하였습니다.
                                </span></label>
                        </div>
                        <div class="btn-save">
                            <button class="btn-end" type="button">저장하기</button>
                        </div>
                    </div>
                </div>
            </div><!-- 전체 container 박스 -->


    </main>
    <div class="modal">
        <div class="text-box-mo">
            모달내용 
            <button class="moX" onclick="toggleOn('.modal')" data-ton=".modal">X</button>
        </div>
    </div>
    <footer></footer>
</body>
<script>
    $(function(){
        $(".bubu").click(function(){
            $(this).toggleOn();
        });
    });
    function toggleOn(item){
        var $ton = $(item);
        $ton.toggleClass("on");
    }
    $.fn.toggleOn=function(){
        var ton = $(this).data("ton");
        $(ton).toggleClass("on");
    }

</script>
<%@include file="../hong-include/foot.jspf"%>