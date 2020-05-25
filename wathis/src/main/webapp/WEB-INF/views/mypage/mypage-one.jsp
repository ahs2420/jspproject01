<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../hong-include/head.jspf"%>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../hongcss/mypage/mypage-one.css">
<!-- fontawesome 코드 -->
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.2.0/css/all.css">
<script src="https://kit.fontawesome.com/8838b56230.js" crossorigin="anonymous"></script>
<!-- fontawesome 코드 -->
<script src="../hongjs/mypage/mypage.js"></script>
<script src="../hongjs/mypage/common.js"></script>

<!-- 지우기 --><!-- 지우기 --><!-- 지우기 --><!-- 지우기 --><!-- 지우기 --><!-- 지우기 --><!-- 지우기 --><!-- 지우기 --><!-- 지우기 --><!-- 지우기 --><!-- 지우기 --><!-- 지우기 --><!-- 지우기 --><!-- 지우기 -->
<header>
	<div class="position-fix">
		<div class="head-con">
			<div class="logo">
				<a href="http://localhost:8888"><span class="main-color">W</span>a<span class="main-color">T</span>his</a>
			</div>

			<div class="head-userid">
				<div class="userlogo">
					<i class="fas fa-fan"></i>
				</div>

				<div class="username">WATHIS</div>
			</div>

			<div class="head-close">
				<button name="" id="" class="head-show mar-right1">임시저장</button>
				<button name="" id="" class="head-show">미리보기</button>
				<button name="" id="" class="head-out">나가기</button>
			</div>
		</div>
	</div>

</header>
<main>
	<div class="mypage-container" style="max-width: 100%;">
		<div class="menu-box">
			<div class="box1-menu">

				<div class="reward-box-btn">

					<button class="box-btn1" type="button" id="reward">리워드</button>
					<button class="box-btn2" type="button" id="reward">펀딩 준비
						작성 중</button>
				</div>

				<div class="reward-box">
					<h2>123의 멋진 프로젝트</h2>
				</div>

				<ul class="jq-box">
					<li class="mypage-li-menu-not">
						<div class="reward-box-num">
							<a href="#">프로젝트 번호
								<!-- <i class="fas fa-angle-down"></i> -->
							</a>

							<ul class="hide">
								<li>와디지 담당자와의 소통은 프로젝트 번호로 진행됩니다. 상세페이지는 프로젝트 번호를 포함한 URL
									주소로 오픈 된 후 진입 가능합니다.</li>
								<li class="reward-box-url">url 복사하기</li>
							</ul>
						</div>
					</li>
				</ul>

			</div>
			<ul class="menu-text" style="list-style: none;">
				<li class="mypage-li-menu">
					<div class="menu-text1">
						<a href="/page/mypage">펀딩 준비</a><i class="fas fa-angle-down"></i>
						<ul class="hide">
							<li><a href="/page/mypage-one">기본 요건 및 정보</a></li>
							<li><a href="/page/mypage-two">스토리 작성</a></li>
							<li><a href="/page/mypage-three">리워드 설계</a></li>
							<li><a href="/page/mypage-four">위험요인 및 정책</a></li>
							<li><a href="/page/mypage-five">메이커 정보</a></li>
						</ul>
					</div>
				</li>
				<li class="mypage-li-menu">
					<div class="menu-text1">
						<a href="#">결제 현황<i class="fas fa-angle-down"></i></a>
					</div>
				</li>
				<li class="mypage-li-menu">
					<div class="menu-text1">
						<a href="#">새소식<i class="fas fa-angle-down"></i></a>
					</div>
				</li>
				<li class="mypage-li-menu">
					<div class="menu-text1">
						<a href="#">서포터<i class="fas fa-angle-down"></i></a>
					</div>
				</li>	
			</ul>


		</div>
		<div class="box2-funReady">
			<!-- 기본 정보 박스 -->
			<!-- <div class="flex-basic-adver"> -->
			<div class="basic-box-one">
				<div class="mar-bo3 wid4">
					<span class=" fon-col fon-wei fon-siz3 ">펀딩 준비</span>
					<span class=" fon-col fon-wei fon-siz3"><i class="fas fa-chevron-right"></i></span>
					<span class=" fon-wei fon-siz3">기본 정보</span>
				</div>


				<div class="flex-basic1 wid1">
					<div class="basic-box-one wid4">
						<h1 class="di-la2 mar-bo6">기본 정보</h1>
						<div class="info-box">
							<p class="info-box mar-bo3">프로젝트를 대표할 주요 기본 정보를 입력하세요.</p>
						</div>
					</div>

					<!-- 가이드 박스 -->
					<div class="ba-adver-guide box-ra1 mar-right1 wid5 cu-poin">
						<div class="guide-box">
							<a class="fon-wei1 fon-siz6 fon-co11 di-la1 ">
								<i class="fal fa-book"></i>
								메이커님을 위한 필수 가이드
							</a>
						</div>
					</div>
				</div>


			</div>
			<div class="ba-project">
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
							<option value="">테크.가전</option>
							<option value="">패션,잡화</option>
							<option value="">뷰티</option>
							<option value="">푸드</option>
							<option value="">홈리빙</option>
							<option value="">디자인소품</option>
							<option value="">여행.레저</option>
							<option value="">스포츠,모빌리티</option>
							<option value="">반려동물</option>
							<option value="">모임</option>
							<option value="">공연,컬쳐</option>
							<option value="">소셜,캠페인</option>
							<option value="">교육,키즈</option>
							<option value="">게임,취미</option>
							<option value="">출판</option>
							<option value="">기부,후원</option>
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

				<!-- 정보 및 요건 중간선 -->
				<div class="end-start  wid4 fon-bor1 mar-top3 mar-top3"></div>

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
								<input class="ra-size" name="q1" type="radio" id="ra-q1-no"> <label for="ra-q1-no">
									<span class="fon-siz1 fon-co8 text-padding2 fon-siz2">아니요. 다른
										곳에서 유통한 적이 없으면 와디지를 통해 처음 선보이는 제품입니다.</span>
								</label>
							</div>
							<div class="radio-box mar-bo3 mar-top4">
								<input class="ra-size" name="q1" type="radio" id="ra-q2-yes">
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
										<textarea name="" id="" cols="30" rows="3" maxlength="500"
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
									<textarea name="" id="" cols="30" rows="3" maxlength="500"
										style="margin-top: 0px; margin-bottom: 0px; height: 125px; width: 100%;"
										placeholder="내용을 입력하세요."></textarea>
									<p class="fon-siz4 fon-col mar-bo6 fon-wei1">500자 남음</p>
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
									<textarea name="" id="" cols="30" rows="3" maxlength="500" class="noresize"
										style="margin-top: 0px; margin-bottom: 0px; height: 125px; width: 100%;"
										placeholder="내용을 입력하세요."></textarea>
									<p class="fon-siz4 fon-col mar-bo6 fon-wei1">500자 남음</p>
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
				<!-- 5번 -->
				<div class="flex-basic2 q5-text">
					<div class="mar-bo2 wid4">
						<div class="name-left">
							<h4 class="di-ia1 mar-bo6 fon-wei1 fon-siz1 mar-top3">
								리워드 필수 인증 코드 <span class="fon-co5"> *</span>
							</h4>
							<select class="wid1 hei1 fon-bor1 fon-siz1 text-padding1 ::placeholder" name=""
								id="project-ka">

								<option value="">리워드의 종류를 선택하세요</option>
								<option value="">HW(하드웨어)</option>
								<option value="">SW(소프트웨어)</option>
								<option value="">HW+SW(하드웨어+소프트웨어)</option>
								<option value="">화장품</option>
								<option value="">의약외품</option>
								<option value="">디자인제품(소품,패션,잡화,액세서리</option>
								<option value="">디퓨저,향초,탈취제</option>
								<option value="">신선식품</option>
								<option value="">가공식품</option>
								<option value="">건강기능식품</option>
								<option value="">문화(공연,전시,영화)</option>
								<option value="">출판</option>
								<option value="">기타</option>
							</select>
							<div class="re-file-ch">
								<a href="#" class="di-ia1 fon-co4 fon-siz3 fon-wei1 mar-bo3 ">리워드
									종류 별 필수 인증 서류 확인하러가기</a>
							</div>
							<div class="re-file-box">
								<input class="ra-size" name="q5-ra" type="radio" id="upload-file">
								<label for="upload-file"> <span class="fon-siz1 fon-co3 text-padding2"> 필수 인증 서류 업로드
									</span></label>
								<div class="upload">
									<h4 class="di-ia1 mar-bo6 fon-wei1 fon-siz1 mar-top3">
										리워드 인증 서류 <span class="fon-co5"> *</span>
									</h4>
									<div class="flex-box">
										
											<label for="file1" class="fon-co9">업로드</label>
											<input type="file" id="file1">
									</div>
									
									<p class="fon-siz2 fon-col mar-top1">리워드 종류에 맞는 최소한의 인증 서류를
										확인하고,서류를 첨부하세요.</p>
									<p class="fon-siz2 fon-col">jpg, jpeg, png, pdf, zip, xlsx,
										hwp / 10MB 이하 10개의 파일 업로드 가능</p>
									<div class="hr-bar fon-bor1"></div>
									<div class="flex-box">
										<div class="no-file-box1">
											<p>파일 첨부가 제한될 경우</p>
										</div>
										<div class="no-file-box2">
											<p>메일 보내기 전에 확인 사항(이미지 ?)</p>
										</div>
									</div>
									<input class="" type="checkbox" id="email"> <label for="email"
										class="di-ia1 mar-top1 fon-wei1">메일로
										전송하였습니다.</label>
									<p class="fon-co5">필수 항목 값을 등록하세요.</p>
									<div class="hr-bar fon-bor1"></div>
								</div>
								<div class="not-upload">
									<div class="flex-box">
										<div class="not-up-left">
											<label for="not-upload-file"> <input class="ra-size" name="q5-ra"
													type="radio" id="not-upload-file"> <span
													class="fon-siz1 fon-co3 text-padding2">
													서류를 첨부하지
													않습니다. </span></label>
										</div>
										<div class="not-up-right">
											<a href="#" class="di-ia1 fon-siz4 mar-bo3 fon-co7">해당되는지
												학인하기</a>
										</div>
									</div>
									<div class="not-upload-rabox">
										<div class="not-up-ra-one">
											<label for="q5-not-ra-one"> <input class="text-padding3" name="q5-not-ra "
													type="radio" id="q5-not-ra-one"> <span
													class="fon-siz3 fon-co3 text-padding2"> 서류를 제출하지 않아도
													되는 리워드 </span></label>
										</div>
										<div class="not-up-ra-two">
											<label for="q5-not-ra-two"> <input class="text-padding3" name="q5-not-ra "
													type="radio" id="q5-not-ra-two"> <span
													class="fon-siz3 fon-co3 text-padding2"> 리워드 발송 전까지 서류
													제출 가능한 리워드 </span></label>
										</div>
									</div>
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
								<label for="q6-check-box"> <input class="ra-size" name="q6-check-box" type="checkbox"
										id="q6-check-box">
									<span class="fon-siz1 fon-co3 text-padding2"> 리워드 발송 전까지
										서류 제출 가능한 리워드 </span></label>
							</div>

						</div>
					</div>
				</div>
				<!-- 7번 -->
				<div class="flex-basic2 q7-text ">
					<div class="mar-bo2 wid1 ">
						<div class="name-left ">
							<h3 class="di-ia1 mar-bo6 fon-wei1 fon-siz1">
								오픈예정 서비스 신청 <span class="di-ia1 mar-bo6 fon-wei1 fon-siz1 fon-co2">
									(선택사항)</span></label>
							</h3>
							<div class="q7-texe fon-bor1 wid4">
								<div class="q7-text-box">
									<p class="fon-siz4 fon-co7 fon-wei1 mar-top5 mar-bo4 text-padding2">
										오픈예정 서비스란? <br> 프로젝트 오픈에 대하여, 사전에 알림 홍보를 할 수 있는 서비스 페이지를
										말합니다. <br> 프로젝트 펀딩에 관심 있는 예비 서포터들이 펀딩 시작전에 내용을 둘러 보고, 관심이
										있을 경우 알림 신청을 할 수 있는 페이지입니다. <br> 성공 프로젝트의 경우 평균적으로 오픈 직후
										3일 안에 전체 펀딩액의 약 35%를 모집합니다.
									</p>
								</div>
							</div>
							<div class="q7-check">
								<label for="q7-check-box"> <input class="ra-size" name="q7-check-box" type="checkbox"
										id="q7-check-box">
									<span class="fon-siz1 fon-co3 text-padding2"> 오픈예정 서비스
										신청 </span></label>
								<div class="q7-end"></div>
								<div class="">
									<a href="#" class="">오픈예정 서비스 이용 약관에 동의합니다. 추가 플랫폼 수수료: 3%
										(VAT별도)</a>
								</div>

								<div class="">오픈예정 서비스를 진행 하는 경우, 스토리작성 > 오픈예정 스토리 항목을 반드시
									작성해주세요.</div>
							</div>
						</div>
					</div>
					<div class="q7-guide cu-poin">
						<div class=" text-padding3 box-li1 box-back1">
							<h4 class="fon-siz4 mar-bo3 fon-co7 di-ia1">
								<a href="#" class="fon-siz4 mar-bo3 fon-co7">오픈예정 왜 해야 하나요?</a>
							</h4>
							<p class="di-ia1 fon-siz4 mar-bo3 fon-co7">· 성공한 메이커 70% 이상은
								오픈예정 서비스를 이용합니다. 왜 오픈예정이 프로젝트 성공의 지름길인지 알고 싶다면 확인해주세요.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="btn-save">
				<button class="btn-end" type="button">저장하기</button>
			</div>
		</div>

	</div>
	<!-- 프로젝트 박스 -->
	</div>
	<!-- 메인 박스 -->
	</div>
</main>


<footer></footer>
</body>

<%@include file="../hong-include/foot.jspf"%>