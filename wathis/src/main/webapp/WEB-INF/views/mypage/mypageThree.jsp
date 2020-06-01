<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@include file="../hong-include/head.jspf"%>
<link rel="stylesheet" href="/css/reset.css">
<link rel="stylesheet" href="../hongcss/mypage/common.css">
<link rel="stylesheet" href="../hongcss/mypage/mypageThree.css">
<!-- fontawesome 코드 -->
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.2.0/css/all.css">
<script src="https://kit.fontawesome.com/8838b56230.js" crossorigin="anonymous"></script>
<!-- fontawesome 코드 -->

<link rel="stylesheet" href="/css/datepicker/daterangepicker.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.16.0/moment.min.js"></script>
<script src="/js/datepicker/jquery.daterangepicker.min.js"></script>

<!-- CK -->
<script src="/plugin/ckeditor/ckeditor.js"></script>


        <div class="box2-funReady">
            <!-- 기본 정보 박스 -->
            <!-- <div class="flex-basic-adver"> -->
            <div class="basic-box">
                <div class="mar-bo3">
                    <span class=" fon-col fon-wei fon-siz3 ">펀딩 준비</span>
                    <span class=" fon-col fon-wei fon-siz3"><i class="fas fa-chevron-right"></i></span>
                    <span class=" fon-wei fon-siz3">기본정보및 스토리 작성</span>
                </div>


                <div class="flex-basic1">
                    <div class="basic-box-one wid4">
                        <h1 class="di-in2 mar-bo6">스토리 작성</h1>
                        <div class="info-box">
                            <p class="info-box mar-bo3">
                             	   메이커님의 프로젝트를 소개해보세요. 스토리에는 메이커님의 진심과 목소리가 잘 녹여질 수 있도록 명확하고, 솔직하게, 친근한 어투로 작성하세요.
                            </p>
                        </div>
                    </div>

                    <!-- 가이드 박스 -->
                    <div class="ba-adver-guide box-ra1 mar-right1 wid5 cu-poin">
                        <div class="guide-box">
                            <a class="fon-wei1 fon-siz7 fon-co11 di-in1 ">
                                <i class="fal fa-book"></i>
                         	       메이커님을 위한 필수 가이드
                            </a>
                        </div>
                    </div>

                </div>

            </div>

            <!-- 1번 -->
            <div class="ba-project">
                <div class="flex-basic2 ba-pro-img">
                    <div class="mar-bo2 wid1">
                        <div class="box-container">
                            <div class="box-text-one">
                                <h4>소개 영상·사진 등록<span class="fon-co5">
                                        *</span></h4>
                                <p class="fon-col fon-siz3  mar-bo4">프로젝트 페이지 상단에 노출될 영상 또는 사진을 올려주세요.</p>
                            </div>
                            <div class="one-radio-box1">
                                <input class="ra-size" type="radio" name="ra1" id="projectimg1">
                                <label for="projectimg1" class="di-la1 mar-top1 fon-wei1 fon-siz2"> 소개 영상</label>
                                <div class="one-text-box1 text-padding4">
                                    <input class="hei1 fon-bor1 text-padding1" type="text" id="projectimg"
                                        placeholder="영상 URL 입력">
                                    <button class="hei1 box-back4 ra-btn fon-wei1 wid8 fon-co11 fon-siz2 box-ra1"
                                        type="button" id="">등록</button>
                                    <p class="fon-siz3 fon-co5 ">영상 URL을 확인하고 다시 등록하세요.</p>
                                    <p class="fon-siz3 fon-col">Youtube와 Vimeo의 URL등록 가능</p>
                                    <p class="fon-siz3 fon-col">영상 썸네일 이미지 사이즈 : 600 픽셀 이상</p>
                                </div>
                            </div>
                            <div class="one-radio-box2">
                                <input class="ra-size" type="radio" name="ra1" checked id="projectimg2">
                                <label for="projectimg2" class="di-la1 mar-top1 fon-wei1 fon-siz2"> 소개 사진</label>

                                <div class="one-text-box2 text-padding4">
                                    <div class="file-box">
                                        <label for="file1"><i class="fas fa-camera fon-co11"></i> 등록하기</label>
                                        <input type="file" id="file1">
                                    </div>
                                    <p class="fon-siz3 fon-col ">2MB 이하의 JPEG, JPG, GIF, PNG 파일</p>
                                    <p class="fon-siz3 fon-col">사이즈 : 최소 630X400 픽셀 이상</p>
                                    <p class="fon-siz3 fon-col">여러 장 등록 가능.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ba-guide3">
                        <div class=" text-padding3 box-li1 box-back1">
                            <h4 class="mar-bo5 fon-siz4 fon-co7">
                                <a href="#" class="fon-co4 ">소개 영상·사진</a>
                            </h4>
                            <p class="fon-siz4 mar-bo3 fon-co7">
                            	    사진과 영상을 모두 업로드하실 경우,영상만 노출됩니다. </p>
              	              <h4 class="mar-bo5 fon-siz4 fon-co7">
                               	 영상 썸네일 이미지
                            </h4>
                            <p class="fon-siz4 mar-bo3 fon-co7">
                                youtube, vimeo 등에서 영상 썸네일을 지정할 수 있으며, 와디즈에서는 썸네일 지정 기능을 제공하지 않습니다.
                            </p>
                        </div>
                    </div>
                </div>
                	<!-- 기본 정보 부분 -->
                	<!-- 1번 -->
				<div class="flex-basic2 ba-pro-name">
					<div class="wid4">
						<div class="name-left">
							<label for="projectname" class="di-ia1 mar-bo6 fon-wei1">프로젝트
								제목 <span class="fon-co5"> *</span>
							</label> <input class="wid1 hei1 fon-bor1 text-padding1" type="text" id="projectname"
								placeholder="제목 입력">
							<p class="fon-siz4 fon-col mar-bo6 fon-wei1">40자 남음</p>
						</div>
					</div>
					<div class="ba-guide1">
						<div class=" text-padding3 box-li1 box-back1">
							<h3 class="fon-siz4 fon-co7 mar-bo6 fon-wei1 ">프로젝트 제목은 핵심만
								매력적으로!</h3>
							<p class="fon-siz4 mar-bo5 fon-co7">· 제품·서비스의 매력포인트나 프로젝트의
								주제가 잘 드러날 수 있는 키워드를 한 가지 이상 포함하는 간결한 제목을 써주시는 것이 좋습니다.</p>
							<p class="fon-siz4 mar-bo5 fon-co7">(예시) [ 로얄테일즈 반려차 ] 7가지
								기능이 가능한 올인원 반려동물 유모차</p>

							<p class="fon-siz4  fon-co7">· 국내 최초, 월경컵(생리컵) 식약처 허가를 위한
								#블랭크컵 프로젝트!</p>
						</div>
					</div>
				</div>
				<!-- 2번 -->
				<div class="flex-basic2 ba-pro-price">
					<div class="wid4 mar-top3">
						<label for="projectprice" class="di-ia1 mar-bo6 fon-wei1">목표금액<span class="fon-co5">
								*</span></label>
						<p class="fon-siz4 fon-col mar-bo6 fon-wei1">최소 50 만원 ~ 최대 1억
							원으로 설정하세요.</p>
						<div class="flex-box">
							<div class="money-box wid1">
								<input class="wid1 hei1 fon-bor1 text-padding1" type="text" id="projectprice"
									placeholder="목표 금액 입력">
							</div>
							<div class="paybox hei1 box-back13 wid8  fon-co11 text-padding2">
								<h4 class="mar-left3">원</h4>
							</div>
						</div>
					</div>

					<div class="ba-guide2">
						<div class=" text-padding3 box-li1 box-back1">
							<h4 class="fon-siz4 fon-co7 mar-bo6 fon-wei1">목표금액은 너무
								낮지도,너무 높지도 않게!</h4>
							<p class="fon-siz4 mar-bo5 fon-co7">· 마감일 자정 기준 목표금액을 달성해야
								프로젝트 성공되어 결제가 실행되니, 리워드 제작 및 배송비, 인건/ 운영비 등을 고려해서 금액을 설정해 주세요.</p>
							<p class="fon-siz4 fon-co7">· 고민 없이 목표금액을 설정할 경우 프로젝트가 실패하거나
								성공해서 제품/서비스 제작을 하지 못할 수 있어요.</p>
						</div>
					</div>
				</div>

				<!-- 3번 -->
				<div class="flex-basic2 ba-pro-img ">
					<div class="wid4 mar-top3">
						<label for="projectimg" class="di-ia1 mar-bo3 fon-wei1 ">대표
							이미지<span class="fon-co5"> *</span>
						</label> <br>
						<!-- <input class="" type="file" id="projectimg"> -->
						<div class="file-box">
							<label for="file1" class="fon-co9">등록하기</label>
							<input type="file" id="file1">
						</div>

						<p class="fon-siz4 fon-co7 fon-wei1 mar-top1">3MB 이하의 JPEG,PNG
							파일</p>
						<p class="fon-siz4 fon-co7 fon-wei1">텍스트 및 로고 삽입 금지</p>
					</div>
					<div class="ba-guide3">
						<div class=" text-padding3 box-li1 box-back1">
							<h4 class="mar-bo5 fon-siz4 fon-co7">
								<a href="" class="fon-siz4 fon-co7 mar-bo6 fon-wei1 ">클릭할
									수밖에 없는 매력적인 이미지 만들기</a>
							</h4>
							<p class="fon-siz4 mar-bo5 fon-co7">· 프로젝트의 첫인상인 대표 이미지는 프로젝트
								주제에 따라 리워드가 가장 매력적으로 보이는 사진으로 골라주세요!</p>
							<p class="fon-siz4  fon-co7">· 텍스트가 삽입되어 있거나 비율이 맞지 않는 이미지는
								화면(웹, 앱,지지서명,외부 공유)에서 매력적이지 않답니다.</p>
						</div>
					</div>
				</div>
                <!-- 4번 -->
				<div class="flex-basic2 ba-pro-ka ">
					<div class="wid4 mar-top3">
						<label for="project-ka" class="di-ia1 mar-bo6 fon-wei1">카테고리
							선택<span class="fon-co5"> *</span>
						</label>
						<!-- <input class="" type="text" id="projectname" placeholder="카테고리 선택"> -->
						<select class="wid1 hei1 fon-bor1 fon-siz1 text-padding1 ::placeholder" name="" id="project-ka">

							<option value="">카테고리선택</option>
							<c:forEach items="${cate}" var="cate">
							<option value="${cate.id}">${cate.title}</option>
							
							</c:forEach>
						</select>
					</div>
					<div class="ba-guide4">
						<div class=" text-padding3 box-li1 box-back1">
							<h4 class="fon-siz4 fon-co7 mar-bo6 fon-wei1 ">어떤 서포터를 만나고
								싶으세요?</h4>
							<p class="fon-siz4 mar-bo5 fon-co7">· 프로젝트 펀딩할 서포터들이 관심을 가질만한
								카테고리를 1개만 선택해주세요.</p>
							<p class="fon-siz4 fon-co7">· (예시) 반려동물 정수기 : 테크·가전 or 반려동물
								or 홈리빙</p>
						</div>
					</div>
				</div>

				<!-- 5번  프로젝트 일정을 삭제 하였음-->
				<!-- 5번-->
				<div class="flex-basic2 ba-pro-seach">
					<div class=" mar-bo3  wid4">
						<label for="projectname" class="di-ia1 mar-bo6 fon-wei1">검색용
							태그<span class="fon-co5"> *</span>
						</label>
						<p class="fon-siz4 fon-col mar-bo6 fon-wei1">엔터를 누르면 태그가 등록
							됩니다.(최대 10개까지 입력가능)</p>

						<input class="wid1 hei1 fon-bor1 text-padding1" type="text" id="projectname"
							placeholder="태그 입력">
						<div class="tag fon-co4 fon-siz3 fon-wei1 mar-bo4">0/10개의 태그
						</div>
					</div>

					<div class="ba-guide7">
						<div class=" text-padding3 box-li1 box-back1">
							<h4 class="fon-siz4 fon-co7 mar-bo6 fon-wei1">어떤 해시태그가 검색하기
								좋을까요?</h4>
							<p class="fon-siz4 mar-bo5 fon-co7">· 내/외부 검색엔진에서 잘 검색될 수 있는
								키워드를 적어주세요.</p>
							<p class="fon-siz4 mar-bo5 fon-co7">· (예) 이어폰,무선이어폰,블루투스
								이어폰,블루투스무선이어폰,tws이어폰</p>
							<p class="fon-siz4 fon-co7">· *상표권을 취득한 타인 상표를 무단으로 사용 할 경우
								사전 안내 없이 삭제 될수 있습니다.</p>
						</div>
					</div>
				</div>   
                <!-- 2번 -->
                <div class="flex-basic1 ba-pro-price">
                    <div class="mar-bo3 wid4">
                        <div class="name-left ">
                            <div class="box-text-one">
                                <h4>프로젝트 요약<span class="fon-co5">
                                        *</span></h4>
                                <p class="fon-col fon-siz3 mar-bo4">프로젝트 페이지 상단 및 지지서명 시 노출됩니다.</p>
                            </div>
                            <div class="text-area">

                                <textarea name="" id="" cols="30" rows="3" maxlength="100"
                                    style="margin-top: 0px; margin-bottom: 0px; height: 125px; width: 100%;"
                                    placeholder="내용을 입력하세요."></textarea>
                                <p class="fon-siz4 fon-col mar-bo6 fon-wei1">100자 남음</p>

                            </div>

                        </div>
                    </div>
                    <!-- 가이드 박스 -->
                    <div class="ba-guide2">
                        <div class=" text-padding3 box-li1 box-back1">
                            <h4 class="mar-bo5 fon-siz4 fon-co7">
                                이것만은 알아주었으면 좋겠어요!
                            </h4>
                            <p class="fon-siz4 mar-bo3 fon-co7">서포터들이 꼭 알아주었으면 하는 리워드/프로젝트의 매력 포인트가 있다면 적어주세요.</p>
                        </div>
                    </div>
                </div>
                <!-- 3번,4번  각종 가이드 부분에서 달력으로 수정-->

                <div class="flex-basic2 ba-pro-day ">
					<div class="wid4 mar-top3">
						<label for="project-day" class="di-ia1 mar-bo6 fon-wei1">프로젝트 시작일<span class="fon-co5"> *</span>
						</label>
						<p class="fon-siz4 fon-col mar-bo6 fon-wei1">리워드를 설계하기 위해 프로젝트
							시작을 선택하세요.</p>
						<input class="wid1 hei1 fon-bor1 text-padding1" type="text" id="project-day"
							placeholder="예? 20200401">
					</div>

					<div class="ba-guide5">
						<div class=" text-padding3 box-li1 box-back1">
							<h4 class="fon-siz4 fon-co7 mar-bo6 fon-wei1 ">
								오픈일을 기준으로 최소 7일 ~ 최대 60일로 설정해 주세요.</h4>
							<p class="fon-siz4 mar-bo5 fon-co7">· 요건 및 콘텐츠 확인이 완료된 후 오픈이
								가능하며, 종료일을 기준으로 3개월 내에 리워드 발송이 완료되어야 합니다.</p>
							<p class="fon-siz4 fon-co7">· 프로젝트 평균 진행 기간은 평균 30일입니다.</p>
						</div>
					</div>

				</div>

				
				<!-- 4번-->
				<div class="flex-basic2 ba-pro-adult mar-bo3">
					<div class="wid4 mar-top3">
						<label for="project-day" class="di-ia1 mar-bo6 fon-wei1">프로젝트 종료일<span class="fon-co5"> *</span>
						</label>
						<p class="fon-siz4 fon-col mar-bo6 fon-wei1">
							리워드를 설계하기 위해 프로젝트 종료일을 선택하세요.</p>
						<input class="wid1 hei1 fon-bor1 text-padding1 mar-bo7" type="text" id="project-day"
							placeholder="예? 20200401">
					</div>

					<div class="ba-guide6">
						<div class=" text-padding3 box-li1 box-back1">
							<h4 class="fon-siz4 fon-co7 mar-bo6 fon-wei1 ">
								오픈일을 기준으로 최소 7일 ~ 최대 60일로 설정해 주세요.</h4>
							<p class="fon-siz4 mar-bo5 fon-co7">· 요건 및 콘텐츠 확인이 완료된 후 오픈이
								가능하며, 종료일을 기준으로 3개월 내에 리워드 발송이 완료되어야 합니다.</p>
							<p class="fon-siz4 fon-co7">· 프로젝트 평균 진행 기간은 평균 30일입니다.</p>
						</div>
					</div>

				</div>
                <!-- 5번 -->

                <div class="flex-basic2 ba-pro-name">
                    <div class="mar-bo2 wid4">
                        <div class="name-left">
                            <div class="box-text-one">
                                <h4>프로젝트 스토리<span class="fon-co5">
                                        *</span></h4>
                                <p class="fon-col fon-siz3 mar-bo4">
                                    진정성 있고 매력적인 스토리로 서포터의 마음을 움직여볼까요? 우측의 스토리 필수 항목을
                                    꼼꼼하게 확인
                                    후 작성해 주세요. 필수 항목이 누락될 경우 오픈이 지연될 수 있습니다.
                                </p>
                            </div>

                            <div class="text-area">
                                <textarea id="editor1" name="content" class="ckeditor">
                                    <p>필수 항목이 누락되거나 미비할 경우, 오픈 승인이 어렵습니다. 아래 내용을 꼼꼼히 확인해 주시고, 스토리 필수항목은 프로젝트의 성격에 맞게 자유롭게 배치해주세요.</p><h2>1. 메이커 소개</h2><ul><li>“안녕하세요” 라는 인사와 함께 간단한 자기소개를 넣어주세요. 브랜드/팀명은 무엇이고, 이번 프로젝트에서 어떤 역할을 담당하는 지 소개해보세요.</li><li>메이커님의 얼굴을 확인할 수 있는 실물사진은 필수 항목입니다. 일러스트나 뒷모습, 선글라스 착용 등 얼굴이 가려진 사진은 사용 불가합니다.</li></ul><h2>2. 프로젝트 진행 동기 및 목적</h2><ul><li>와디즈에서 펀딩을 하게 된 동기, 펀딩을 통해 이루고자 하는 목표와 함께, 목표금액은 무엇을 기준으로 설정하셨는 지도 함께 얘기해주세요.</li><li>펀딩 종료 후, 펀딩금액을 어떻게 사용하실 지와 더불어 앞으로의 계획을 알려주세요.</li></ul><p>(TIP) 현재 리워드는 어디까지 완성되었나요? 현재 리워드의 제작 진행 상황과 함께, 펀딩 이후의 계획도 같이 밝혀주시면 신뢰감을 주실 수 있답니다.</p><h2>3. 리워드 소개와 상세정보</h2><ul><li>리워드의 이름은 무엇이고, 어떤 용도로 사용하는 제품/서비스인가요?</li><li>리워드를 직접 보고 펀딩할 수 없으므로 서포터분들이 참고할 수 있는 사진, 영상과 같은 시각 자료를 넣어주세요.</li><li>리워드 품목에 따라 서포터가 꼭 알아야 할 상세 스펙 (특징, 사양, 사용법, 인증서, 주의사항 등)을 빠짐없이 넣어주세요.</li></ul><h2>4. 리워드 리스트</h2><ul><li>리워드 탭에 추가해두신 리워드의 구성과 가격, 명칭 한눈에 들어올 수 있도록 리스트를 넣어주세요. 아래와 같이, 표를 이용해도 좋습니다.</li></ul><table style="width: 100%;"><tbody><tr><td style="width: 25.0000%;">리워드명</td><td style="width: 25.0000%;">구성</td><td style="width: 25.0000%;">가격</td><td style="width: 25.0000%;">가격혜택</td></tr><tr><td style="width: 25.0000%;">[패밀리버드] 와디즈텀블러</td><td style="width: 25.0000%;">와디즈 텀블러*4개, 코스터*4개</td><td style="width: 25.0000%;">35,000원</td><td style="width: 25.0000%;">12%</td></tr><tr><td style="width: 25.0000%;">[커플버드] 와디즈텀블러</td><td style="width: 25.0000%;">와디즈 텀블러*4개, 코스터*4와디즈 텀블러*2개, 코스터*2개</td><td style="width: 25.0000%;">20,000원</td><td style="width: 25.0000%;">10%</td></tr><tr><td style="width: 25.0000%;">[솔로버드] 와디즈텀블러</td><td style="width: 25.0000%;">와디즈 텀블러*1개</td><td style="width: 25.0000%;">10,000원</td><td style="width: 25.0000%;">8%</td></tr></tbody></table><h2>5. 프로젝트 일정</h2><p>아이디어가 처음 나온 날, 샘플을 처음 제작한 날 등 프로젝트를 처음 준비하기 시작한 시점부터 적어주세요. 프로젝트 시작/마감일, 리워드 발송일은 물론, 향후 일정까지 포함해주세요.</p><ul><li>아이디어 구상시점 : Ο월 Ο일&nbsp;</li><li>와디즈 펀딩 시작일 : 현재&nbsp;</li><li>와디즈 펀딩 마감일 : Ο월 Ο일&nbsp;</li><li>리워드 제작 시작일 : Ο월 Ο일</li><li>리워드 발송 시작일 : Ο월 Ο일</li></ul><h2>6. 리워드&nbsp;발송&nbsp;안내</h2><p>리워드&nbsp;발송&nbsp;방법,&nbsp;순차&nbsp;발송인&nbsp;경우&nbsp;1일&nbsp;최대&nbsp;발송&nbsp;수량,&nbsp;리워드&nbsp;발송&nbsp;관련&nbsp;메이커&nbsp;연락처,&nbsp;도서/산간&nbsp;지역에&nbsp;대한&nbsp;발송&nbsp;방침을&nbsp;알려주세요.</p><ul><li>발송 방법 : §택배,&nbsp;직접&nbsp;전달,&nbsp;SMS,&nbsp;우편,&nbsp;등기&nbsp;등§</li><li>발송 택배사 : 이용하시는&nbsp;택배사명</li><li>발송 일정 : Ο월 Ο일 ~ Ο월 Ο일 (1일 최대 ΟΟ개씩 순차 발송)</li><li>도서/산간지역 발송 안내 : §추가&nbsp;배송비&nbsp;및&nbsp;배송비&nbsp;추가&nbsp;방법&nbsp;기재§</li><li>문의 채널 : §카카오채널 @ΟΟΟ, 메이커에게 문의하기, 메일, 연락처 등§</li><li>수령 후 보관 시 유의사항 :</li></ul><h2>7. 리워드&nbsp;특이사항과&nbsp;A/S 정책</h2><p>서포터분들이 리워드의 하자나 불량으로 착각할 수 있는 경우에 무엇이 있는지 구체적으로 작성해주세요. 또한, 리워드 초기 하자(수령 후 7일 이내에 발생)가 아니라, 서포터 사용 중 발생하는 하자를 어떻게 처리할 것인지에 대한 정책을 구체적으로 작성해주세요. <u>굵게 표시되어있는 내용은 변경하지 마시고, 메이커님의 리워드 특성에 맞게 작성해야 하는 부분만 변경해주시면 됩니다.&nbsp;</u></p><p><strong>펀딩 종료 후 와디즈 펀딩금 반환 정책에 따라 리워드에 하자가 있을 경우 펀딩금 반환 신청을 할 수 있습니다. 자세한 정책 내용은 &lt;펀딩 안내&gt; 탭을 클릭해서 확인해주세요.&nbsp;</strong></p><h3>1) 리워드 하자가 아닌 경우</h3><p><strong>리워드의 특성상, 아래의 항목들이 발생할 수 있으며 이는 리워드의 하자/불량이 아닙니다. 펀딩 시 이 점을 유의해주세요.&nbsp;</strong></p><ul><li>겉면의 하얀 가루는 당분이 농축된 것으로, 리워드의 이상이 아니며 드셔도 괜찮습니다.&nbsp;</li><li>파일 양말의 특성 상, 실이 튀어나오거나 줄이 간 것처럼 보일 수 있습니다.&nbsp;</li><li>양가죽의 특성 상, 주름 혹은 미세한 스크래치가 있을 수 있습니다.&nbsp;</li><li>통주물 공법 과정에서 표면에 좁쌀보다 작은 크기의 기포자국이 생길 수 있습니다.&nbsp;</li></ul><h3>2) 리워드 A/S 정책</h3><p><strong>리워드 수령으로부터<u>&nbsp;7일 이내에 발생한 초기 하자</u>에 대해서는 본 A/S정책이 적용되지 않습니다.&nbsp;</strong></p><ul><li><strong>보증 기간</strong> : 리워드 수령일로부터 Ο년</li><li><strong>A/S 규정</strong> : 수령 후 초기하자가 아닌, <u>사용 중 발생한 하자</u>에 대하여 1:1 교체</li><li><strong>A/S가 불가한 경우</strong> : 보증기간 이내일지라도, 사용자의 고의 또는 과실로 인하여 수리 및 재생이 불가능한 경우</li><li><strong>A/S 접수 방법</strong> : 아래 접수처를 통해 구체적인 하자 내용과 함께 접수해주시면, 정확한 소명 후 처리됩니다.&nbsp;</li><li><strong>&nbsp;A/S 접수처</strong> : §카카오채널 @ΟΟΟ, 메이커에게 문의하기, 메일, 연락처 등§&nbsp;</li></ul><h2>8. FAQ</h2><p>메이커님의 프로젝트만의 강점을 한 번 더 강조해 주시거나 서포터가 궁금해 할만한 내용을 적어주세요.</p><p>Q. 펀딩과 쇼핑은 무엇이 다른가요?&nbsp;</p><p>Q. 프로젝트의 후원금은 어떻게 사용하실 계획인가요?&nbsp;</p><p>Q. 리워드의 가장 큰 강점은 무엇인가요?&nbsp;</p><p>Q. 해당 프로젝트에 펀딩 시, 서포터가 꼭 알아야 하는 점이 있나요?</p><p><br></p>
                                </textarea>
                                <script>
                                    CKEDITOR.replace('editor1', {
                                        customConfig: '/plugin/ckeditor/config.js',
                                        width: '100%',
                                        height: '600px',
                                        filebrowserImageUploadUrl: '/cke/imageUpload'
                                    });
                                </script>
                            </div>

                        </div>
                    </div>
                    <div class="ba-guide1">
                        <div class=" text-padding3 box-li1 box-back1">
                            <h4 class="mar-bo5 fon-siz4 fon-co7">
                                이것만은 알아주었으면 좋겠어요!
                            </h4>
                            <p class="fon-siz4 mar-bo3 fon-co7">서포터들이 꼭 알아주었으면 하는 리워드/프로젝트의 매력 포인트가 있다면 적어주세요.</p>
                        </div>
                    </div>
                </div>
                <!-- 5번 -->
            </div>

            <!-- 6번 -->
            <div class="btn-save">
                <button class="btn-end" type="button">저장하기</button>
            </div>
        </div>


    </div><!-- 중간 container 박스 -->

    </div><!-- 전체 container 박스 -->

</main>
<footer></footer>
</body>

<%@include file="../hong-include/foot.jspf"%>