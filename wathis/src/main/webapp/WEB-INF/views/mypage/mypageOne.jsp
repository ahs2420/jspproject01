<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../hongcss/mypage/mypageOne.css">
<!-- fontawesome 코드 -->
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.2.0/css/all.css">
<!-- fontawesome 코드 -->
<!-- CKeditor -->
<script src="/plugin/ckeditor/ckeditor.js"></script>

<!-- 리워드 고지 js -->
<script src="../hongjs/mypage/mypageOne.js"></script>



<div class="box2-funReady">
    <form action="/page/mypageModify" enctype="multipart/form-data" method="post" class="chkFormCke" id="uploadForm">
        <input type="hidden" name="member_id" value="${sessionScope.id }" />
        <div class="ba-project">

            <!-- 				정보 및 요건 중간선 -->
            <!-- 				<div class="end-start  wid4 fon-bor1 mar-top3 mar-top3"></div> -->

            <!-- 기본 요건 -->
            <div class="basic-box">
                <div class="basic-head mar-bo3">
                    <span class=" fon-col fon-wei fon-siz3 ">펀딩 준비</span> <span class=" fon-col fon-wei fon-siz3"><i
                            class="fas fa-chevron-right"></i></span> <span class=" fon-wei fon-siz3">기본
                        요건</span>
                </div>


                <div class="flex-basic1 ">
                    <div class="basic-box-one wid4">
                        <h1 class="di-la2 mar-bo6">기본 요건</h1>
                        <br />
                        <div class="info-box">
                            <p class="">
                                펀딩 진행을 위한 기본 요건을 확인하고자 합니다. 심사 시 확인하는 중요한 정보이므로 반드시 정확한 정보를
                                입력하세요. <br> 답변 내용이 사실과 다른 경우, 약정 위반에 따른 불이익이 발생할 수 있습니다.
                            </p>

                        </div>
                    </div>

                    <!-- 가이드 박스 -->
                    <div class="ba-adver-guide box-ra1 mar-right1 wid5 cu-poin">
                        <div class="guide-box">
                            <i class="fal fa-book"></i>
                            <a class="fon-wei1 fon-siz6 fon-co11 di-la1 ">
                                메이커님을 위한 필수 가이드
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="flex-basic2 q1-text">
                <div class="mar-top2 wid1" id="q1-text">
                    <div class="name-left">
                        <p class=" di-ia1 mar-bo6 fon-wei1 fon-siz1">
                            Q1. 리워드가 타 크라우드펀딩사 및 온라인 커머스, 자사 홈페이지 등 다른 판매처에서 유통된 적이 있거나 현재
                            유통 중인가요? <span class="fon-co5"> *</span></label>
                        </p>
                        <div class="radio-box mar-bo5 mar-top4">
                            <input class="ra-size" name="circulation_chk" type="radio" id="ra-q1-no" value="0"> <label
                                for="ra-q1-no">
                                <span class="fon-siz1 fon-co8 text-padding2 fon-siz2">아니요. 다른
                                    곳에서 유통한 적이 없으면 와디지를 통해 처음 선보이는 제품입니다.</span>
                            </label>
                        </div>
                        <div class="radio-box mar-bo3 mar-top4">
                            <input class="ra-size" name="circulation_chk" type="radio" id="ra-q2-yes" value="1">
                            <label for="ra-q2-yes">
                                <span class="fon-siz1 fon-co8 text-padding2 fon-siz2">
                                    예. 다른 곳에서 유통한 적이 있습니다.또는 현재 유통 중입니다.</span>
                            </label>
                            <div class="yes-box">
                                <h4 class="fon-siz4 fon-co7 fon-wei1 mar-top3 mar-bo4">
                                    리워드가 다른 판매처에서 유통된 적이 있다면 리워드로 제공 할 수 없습니다. <br> 기존에 유통하던
                                    제품/ 서비스에 비해 개선된 점이 있다면 아래에 상세하게 작성해주세요.
                                </h4>
                                <div class="text-area">
                                    <textarea name="circulation_content" id="" cols="30" rows="3" maxlength="500"
                                        style="margin-top: 0px; margin-bottom: 0px; height: 125px; width: 65%;"
                                        placeholder="ex)리워드의 개선점을 보완하여 세부기능 00이 추가되었고, 이전에 판매된 적이 없는 새로운 브라운 컬로로 리워드 프로젝트를 진행하려합니다."></textarea>
                                    <p class="fon-siz4 fon-col mar-bo6 fon-wei1">500자 남음</p>
                                </div>

                            </div>


                        </div>
                    </div>
                </div>
                <div class="q1-guide cu-poin">
                    <div class=" text-padding3 box-li1 box-back1" id="q1-guide">
                        <h4 class="fon-siz4 fon-co7 mar-bo6 fon-wei1">
                            <a href="">와디지 심사기준 확인하기</a>
                        </h4>
                        <p class="fon-siz4 mar-bo3 fon-co7">
                            · 요건확인 Q1~4 질문에 대한 답변이 미흡한 경우, 다시 확인 요청드리며, 프로젝트 검토 기간이 늘어날 수
                            있습니다. <br> · 다른 판매처에서 유통된 적이 있거나 유통중인 제품·서비스는 리워드로 부적절합니다.
                        </p>


                    </div>
                </div>
            </div>

            <!-- Q2 금형 부분 -->

            <!-- 질문 3 번 -->
            <div class="flex-basic2 q3-text">
                <div class="mar-bo2 wid1">
                    <div class="name-left">
                        <p class=" di-ia1 mar-bo6 fon-wei1 fon-siz1">
                            Q2. 현재까지 진행된 리워드의 준비 상태 및 앞으로의 계획을 구체적으로 설명해주세요. <span class="fon-co5"> *</span></label>
                        </p>
                        <div class="q3-texe wid4">
                            <p class="fon-siz4 fon-co7 fon-wei1 mar-top5 mar-bo4">
                                1) 리워드가 유형의 제품인 경우 제작 공정에 따른 현재 리워드의 제작 상태 및 제조 시설명과 일일 최대 생상
                                가능량을 포함한 앞으로의 생상 계획을 작성해주세요. <br> 2) 공연,영화, 전시 등 무형 서비스인
                                경우, 장소 대관, 촬영 일정 등의 현재 준비 상태 및 앞으로의 계획을 작성해 주세요.
                            </p>
                            <div class="text-area">
                                <textarea name="Preparations_plan" id="" cols="30" rows="3" maxlength="500"
                                    style="margin-top: 0px; margin-bottom: 0px; height: 125px; width: 100%;"
                                    placeholder="내용을 입력하세요." class="Preparations_plan"></textarea>
                                <p class="fon-siz4 fon-col mar-bo6 fon-wei1" id="counter-q2">[ 0 자 작성 / 최대 500자]</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="q3-guide">
                    <div class=" text-padding3 box-li1 box-back1">
                        <h4 class="mar-bo5 fon-siz4 fon-co7">Q2에 대한 예씨 답변을 참고하여 작성해
                            주세요.</h4>
                        <p>1)리워드가 유형의 제품인 경우</p>
                        <a href="">금형을 사용하여 생산되는 제품인 경우</a>
                        <p class="fon-siz4 mar-bo3 fon-co7">
                            · 워킹 샘플을 보유하고 있습니다. <br> · 현재 제조사 A와 위탁 제조 계약을 맺고 양산 금형까지
                            제작했습니다. <br> · 최종 양산품은 M월 N일에 완성될 예정입니다. <br> · 양산품 기준
                            일일 최대 생산 가능량은 XXXX대로 예상합니다.
                        </p>
                        <a href="">금형을 사용하지 않고 생산되는 제품인 경우(푸드 기준)</a>
                        <p class="fon-siz4 mar-bo3 fon-co7">
                            · 제조사 A와 위탁 제조 계약을 맺고 현재 리워드에 대한 품목제조보고를 마쳤습니다. <br> · 양산품
                            기준 일일 최대 생산 가능량은 XXXX대로 예상합니다.
                        </p>
                        <p>2) 리워드가 무형의 서비스인 경우</p>
                        <p class="fon-siz4 mar-bo3 fon-co7">
                            · 공연 장소는 A, 일정은 M월 N일 부터 M월 N일까지로 예상합니다. <br> · 프로젝트 진행 기간
                            동안 원활한 공연 진행을 위해 B와 C를 M월 N일까지 준비 할 예정입니다.
                        </p>
                    </div>
                </div>
            </div>

            <!-- 4 번 -->
            <div class="flex-basic2 q4-text">
                <div class="q4-text mar-bo2 wid4">
                    <div class="name-left">
                        <p class="di-ia1 mar-bo6 fon-wei1 fon-siz1">
                            Q3. 리워드의 전달 계획을 알려주세요. <span class="fon-co5"> *</span></label>
                        </p>
                        <div class="q3-texe">
                            <p class="fon-siz4 fon-co7 fon-wei1 mar-top5 mar-bo4">
                                1)리워드의 전달 방법(택배 or SMS 등)을 입력하고, 리워드 제작 및 전달 일정이 변동 될 가능성이 있다면
                                사유를 알려주세요. <br> 2)발송 업체명 및 일일 최대 발송 가능량을 입력해주세요. <br>
                                3)공연,영화,전시 등 무형 서비스의 경우 좌석수, 일 최대 예약 가능 수량 등을 작성해주세요.
                            </p>
                            <div class="text-area">
                                <textarea name="relay_plan" id=" " cols="30" rows="3" maxlength="500"
                                    class="relay_plan noresize"
                                    style="margin-top: 0px; margin-bottom: 0px; height: 125px; width: 100%;"
                                    placeholder="내용을 입력하세요."></textarea>
                                <p class="fon-siz4 fon-col mar-bo6 fon-wei1" id="counter-q3">[ 0 자 작성 / 최대 500자]</p>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="q4-guide cu-poin">
                    <div class=" text-padding3 box-li1 box-back1">
                        <h4 class="mar-bo5 fon-siz4 fon-co7">Q3에 대한 예시 답변을 참고하여 작성해
                            주세요.</h4>
                        <p class="fon-siz4 mar-bo3 fon-co7">
                            · 리워드는 A 물류 창고에서 보관 루 택배사 B를 통해 일괄 발송 될 예정입니다. <br> · 명절 연휴
                            기간으로 배송이 지연될 가능성이 있어 리워드 배송 일정을 M월 N일로 설정했습니다. <br> · 일일 최대
                            발송 가능량은 XXXX개로 예상합니다. <br> · 예상하지 못한 이유로 일일 최대 배송 가능량을 소화하지
                            못 할 경우 택배사 C와 추가 계약하여 남은 물량을 배송할 예정입니다.
                        </p>
                    </div>
                </div>
            </div>

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
                        <textarea id="editor1" name="content Policy_Agreement" class="ckeditor"></textarea>
                        <script>
                            CKEDITOR.replace('editor1', {
                                customConfig: '/plugin/ckeditor/config.js',
                                width: '100%',
                                height: '500',
                                filebrowserImageUploadUrl: '/cke/imageUpload'
                            });
                        </script>
                        <!-- inline 타입으로 생성 -->
                        <textarea id="editor2" name="content Policy_Agreement" class="ckeditor"></textarea>
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

        </div>
        <!-- 5번 -->
        <div class="flex-basic2 q5-text">
            <div class="mar-bo2 wid4">
                <div class="name-left">

                    <!-- 파일 업로드 -->
                    <div class="re-file-box">
                        <h4 class="di-ia1 mar-bo6 fon-wei1 fon-siz1 mar-top3">
                            리워드 인증 서류 <span class="fon-co5"> *</span>
                        </h4>
                        <div class="file-box-oth mar-top3">
                            <label for="file1"><i class="fas fa-camera fon-co9 fon-wei1 "></i> 업로드</label>
                            <input type="file" id="file1" name="files">
                        </div>


                    </div>
                </div>

                <div class="q5-guide cu-poin">
                    <div class=" text-padding3 box-li1 box-back1 ">
                        <h4 class="mar-bo5 fon-siz4 fon-co7">리워드 필수 인증 서류</h4>
                        <p class="fon-siz4 mar-bo3 fon-co7">· 서포터에게 제공한 리워드(제품/서비스)의
                            생산, 유통 및 스토리 사실 확인에 필요한 인증 서류를 확인하여 첨부해주세요. 첨부해주신 서류는 유출되지 않고,
                            리워드 배송 완료 후 파기 합니다.</p>

                    </div>
                </div>
            </div>
        </div>
        <!-- 6번 -->
        <div class="flex-basic2 q6-text ">
            <div class="mar-bo2 wid4">
                <div class="name-left">
                    <h3 class="di-ia1 mar-bo6 fon-wei1 fon-siz1">
                        수수료 정책 동의 <span class="fon-co5"> *</span></label>
                    </h3>
                    <div class="q6-texe fon-bor1">
                        <div class="q6-text-box">
                            <p class="fon-siz4 fon-co7 fon-wei1 mar-top5 mar-bo4 text-padding2">
                                리워드 오픈 수수료는 7% (VAT별도)입니다. <br> · 부가 서비스 이용 시, 추가 수수료가
                                발생될 수 있습니다. <br> · 리워드가 없는 기부후원 프로젝트의 경우, 수수료가 다르게 적용됩니다.
                                <br> · 자세한 내용은와디즈 수수료 정책을 확인해주세요.
                            </p>
                        </div>
                    </div>
                    <div class="q6-check ">
                        <label for="q6-check-box"> <input class="ra-size" name="fees_chk" type="checkbox"
                                id="q6-check-box" value="1">
                            <span class="fon-siz1 fon-co3 text-padding2"> 리워드 발송 전까지
                                서류 제출 가능한 리워드 </span></label>
                    </div>

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
                <button class="box-back6 fon-co9 all-btn wid9 hei4 fon-wei1 cu-poin box-ra1 bubu" data-ton=".modal">
                    펀딩안내 미리보기</button>
            </div>
        </div>
        <!-- 8번 -->
        <div class="end-radio">
            <input class="end-box" name="policy_agreement" type="radio" id="end-radio" value="1">

            <label for="end-radio">
                <span class="fon-siz1 fon-co3 text-padding2">
                    (필수) 펀딩안내 탭에 노출되는 위험요인 및 정책을 모두 확인하였습니다.
                </span></label>
        </div>
<!-- 확인하세요확인하세요확인하세요확인하세요확인하세요 -->
        <div class="btn-save">
            <button class="btn-end" type="submit">저장하기</button>
        </div>
    </form>
</div>

</main>


<footer></footer>
</body>