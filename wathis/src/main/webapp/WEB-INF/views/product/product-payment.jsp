<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/views/include/head.jspf"%>
<!-- 추가 css,js -->
    <link rel="stylesheet" href="/css/product-payment.css">
    <script src="/js/product-payment.js"></script>
</haed>
<body>
	<header>
		<%@ include file="/WEB-INF/views/include/nav.jspf"%>
		<!-- hero 삽입 -->
	    <!--슬라이드 이미지 1개일때는 .hero.item-only추가-->
	    <div class="hero item-only">
	        <div class="owl-carousel owl-hero owl-theme">
	            <div class="item">
					<div class="bg-hero-cover">
						<div class="bg-img bg-main" style="background-image: url(${pvo.img_upload_dir}${pvo.main_img});"></div>
						<div class="container bg-txt">
							<div class="small-title">${cate}</div>
							<h1 class="title mb20">${pvo.title}</h1>
							<div class="sub-title"></div>
						</div>
					</div>
	            </div>
	        </div>
	        <!--슬라이더 버튼-->
	        <div class="owl_hero_cotainer container flex-box flex-j-space flex-a-flexend">
	            <div class="owl_hero_dots owl-dots"></div>
	            <div class="owl_hero_nav owl-dots"></div>
	        </div>
	    </div>
	</header>
<!-- main내용삽입 -->
	<main>
        <section>
            <div class="container buy-payment-container max800">
	            <form action="/product/paymentDo" method="POST" name="product-payment">
					<input type="hidden" name="product_id" value="${pvo.id}" />
					<input type="hidden" name="member_id" value="${mvo.id}" />
					<input type="hidden" name="payment" value="${total}" />
					<input type="hidden" name="delivery_fee" value="${delevery}" />
					<input type="hidden" name="donation" value="${donationMoney}" />
					<input type="hidden" name="price" value="${total - donationMoney - delevery}" />
					<div class="bg-main-alpha-color pt20 pb20 white pl5p pr5p mb30">
						<p>펀딩을 마치면 <span class="bold">결제 예약 상태</span>입니다. 종료일에 100% 이상 달성되었을 경우에만 결제 예정일에 결제가 됩니다</p>
					</div>
					<h1 class="large-title bold mb20">결제 예약</h1>
					<div class="product-payment-receipt p10 border-bottom">
						<h4 class="tiny-title main-color bold mb5">${pvo.title}</h4>
						<!--제목-->
						<c:forEach items="${optIDList}" var="optID" varStatus="vs">
							<input type="hidden" name="buy-item[]" value="${optID}" />
							<input type="hidden" name="buy-item-count[]" value="${optCntList[vs.index]}" />
							<input type="hidden" name="buy-item-option[]" value="${optOptionList[vs.index]}" />
							<div class="pt10 pb10">
								<p class="tiny-content"><fmt:formatNumber value="${optPriceList[vs.index]}" pattern="#,##0"></fmt:formatNumber> 원 ${optTitleList[vs.index]}
									<c:if test="${optOptionList[vs.index] ne ''}">
										<p>옵션: ${optOptionList[vs.index]}</p>
									</c:if>
								</p>
								<!--{시중가} -> {판매가} [n%혜택] 옵션명 (옵션이름)-->
								<p class="txt-right tiny-content small-content bold">
									수량:<fmt:formatNumber value="${optCntList[vs.index]}" pattern="#,##0"></fmt:formatNumber>개 
									<fmt:formatNumber value="${optPriceList[vs.index] * optCntList[vs.index]}" pattern="#,##0"></fmt:formatNumber> 원</p>
								<!--수량,금액-->
							</div>
						</c:forEach>
					</div>
					<div class="p10 border-bottom">
						<span class="bold">추가 후원금</span>	
						<span class="float-right"><fmt:formatNumber value="${donationMoney}" pattern="#,##0"></fmt:formatNumber> 원</span>
						<!--추가 후원금-->
						<p class="clear-fix"></p>
					</div>
					<div class="p10 border-bottom-dot">
						<span class="bold">배송비</span>	
						<span class="float-right"><fmt:formatNumber value="${delevery}" pattern="#,##0"></fmt:formatNumber> 원</span>
						<!--배송비-->
						<p class="clear-fix"></p>
					</div>
					<div class="p10 bg-gray-dark">
						<span class="bold main-color">최종결제금액</span>	
						<span class="float-right main-color large-content"><fmt:formatNumber value="${total}" pattern="#,##0"></fmt:formatNumber> 원</span>
						<!--후원금 + 배송비 합산-->
					</div>
					<!--서포터 정보 + 배송지 정보-->
					<div class="mt50">
						<!--서포터 정보-->
						<div class="flex-box flex-j-space flex-wrap">
							<div class="w-49p col-md-12">
								<h1 class="large-title bold mb20">펀딩 서포터</h1>
								<div class="border-round-5 p10 pt20 pb20 bg-gray">
									<div class="mb10">
										<p class="bold mb5">이름</p>
										<p>${mvo.uname}</p>
									</div>
									<div class="mb10">
										<p class="bold mb5">이메일</p>
										<p>${mvo.uname}</p>
									</div>
									<div>
										<p class="bold mb5">휴대폰번호</p>
										<p class="mb5">
											<c:if test="${mvo.utel == null ||mvo.utel eq ''}">
												<input type="tel" name="utel" class="input-stan chkitem" data-error="휴대폰번호를" maxlength="15" placeholder="숫자만 입력" />
											</c:if>
											<c:if test="${mvo.utel != null &&mvo.utel ne ''}">
												${mvo.utel}
												<input type="hidden" name="utel" class="input-stan chkitem" value="${mvo.utel}" data-error="휴대폰번호를" maxlength="15" placeholder="숫자만 입력" />
											</c:if>
										</p>
										
										
										<input type="checkbox" name="info-check"  value="1" id="info-check" checked />
										<label for="info-check" class="tiny-content">(필수) 펀딩 진행에 대한 새소식 및 결제 관련 안내를 받습니다.</label>
									</div>
								</div>
							</div>
							<!--//서포터 정보-->
							<div class="dis-labtop mb20">&nbsp;</div>
							<!--배송지 정보-->
							<div class="w-49p col-md-12">
								<div class="flex-box flex-a-center flex-j-space pb20  border-bottom">
									<h1 class="large-title bold">리워드 배송지</h1>
									<span class="v-align-m ml5 inline-box">
										<button type="button" class="btn-stan btn-delivery-list"  data-target=".delevery-modal" onclick="targetActive(this)">배송지 목록</button>
									</span>
								</div>
								<div>
									<div class="mt20">	
										<c:if test="${baseAddr ne '' && baseAddr != null}">
											<c:set var="chkTest" value="readonly" />
											<span class="v-align-m">
												<input type="radio" class="deleveryChk" name="deleverChk" value="${baseAddr.id}" id="deleverChk" checked 
													data-postcode="${baseAddr.addr1}"
													data-address="${baseAddr.addr2}"
													data-detail-address="${baseAddr.addr3}"
													data-extra-address="${baseAddr.addr4}"
													data-delivery-name="${baseAddr.ship_name}"
													data-delivery-phone="${baseAddr.ship_tel}"
												/>
												<label for="deleverChk">
													기본 배송지
												</label>
											</span>
										</c:if>
										<span class="v-align-m ml5">
											<input type="radio" class="deleveryChk" name="deleverChk" value="0" id="deleverChkNew" 
												data-postcode=""
												data-address=""
												data-detail-address=""
												data-extra-address=""
												data-delivery-name="${mvo.uname}"
												data-delivery-phone="${mvo.utel}"
												<c:if test="${baseAddr eq '' || baseAddr == null}">
														checked
												</c:if>
											/>
											<label for="deleverChkNew">
												신규 배송지
											</label>
										</span>
									</div>
									<div class="mt5">
										<c:if test="${addrList.size() > 0 }">
											<span class="gray-dark">최근: </span>
										</c:if>
										<c:forEach items="${addrList}" var="addr" begin="0" end="2" >
											<span class="ml5">
												<input type="radio" class="deleveryChk" name="deleverChk" value="${addr.id}" id="deleverChk${addr.id}" 
													data-postcode="${addr.addr1}"
													data-address="${addr.addr2}"
													data-detail-address="${addr.addr3}"
													data-extra-address="${addr.addr4}"
													data-delivery-name="${addr.ship_name}"
													data-delivery-phone="${addr.ship_tel}"
												/>
												<!-- member_addr id 값 넣어서 ajax로 받을 꺼야 -->
												<label for="deleverChk${addr.id}">
													${addr.ship_name}
												</label>
											</span>
										</c:forEach>
									</div>
								</div>
								<div>
									<div class="mt10">
										<p class="bold mb5">이름</p>
										<input type="text" name="receiver_name" class="input-stan w-100p chkitem" data-error="배송받을 사람의 이름을" id="deliveryName" value="${baseAddr.ship_name}" placeholder="이름" ${chkTest} />
										<!--신규 배송지 체크(신규면 저장되게)-->
									</div>
									<div class="mt10">
										<p class="bold mb5">연락처</p>
										<input type="text" name="receiver_tel" class="input-stan w-100p chkitem" data-error="배송지 연락처를" id="deliveryPhone" value="${baseAddr.ship_tel}" placeholder="연락처" ${chkTest} />
									</div>
									<div class="flex-box flex-j-space flex-a-center mt10">
										<p class="bold mb5">주소</p>
										<button type="button" class="btn-stan" id="daum-map-btn" onclick="execDaumPostcode()" 
										<c:if test="${baseAddr ne '' && baseAddr != null}">
											style="display: none;"
										</c:if>	>주소검색</button>
										<input type="hidden" name="receiver_addr1" class="input-stan chkitem" data-error="우편주소를 검색해서 주소를" id="postcode" value="${baseAddr.addr1}" placeholder="우편번호" />
										<input type="hidden" name="receiver_addr2" class="input-stan w-100p chkitem" data-error="우편주소를 검색해서 주소를" id="address" value="${baseAddr.addr2}" placeholder="주소" />
										<input type="hidden" name="receiver_addrDetail[]" class="input-stan w-100p" data-error="우편주소를 검색해서 주소를" id="extraAddress" value="${baseAddr.addr3}" placeholder="참고항목" />
									</div>
									<div class="mt10">
										<p class="tiny-content mb5" id="dis-post">
											${baseAddr.addr1} ${baseAddr.addr2} ${baseAddr.addr3}
										</p>
										<input type="text"  name="receiver_addrDetail[]" class="input-stan w-100p chkitem" data-error="상세주소를" id="detailAddress" value="${baseAddr.addr4}" placeholder="상세주소" ${chkTest} />
									</div>
									<div class="mt10">
										<p class="bold mb5">배송시 요청사항(선택)</p>
										<input type="text" name="receiver_etc" class="input-stan w-100p"  placeholder="ex) 부재시 경비실에 보관해 주세요" />
									</div>
									<div id="daum-wrap" class="modal-stan">
										<div id="daum-map-wrap" class="pt20">
											<div id="daum-wrap-close-btn">
												<img src="/images/icon/close.png" id="btnFoldWrap" onclick="foldDaumPostcode()" alt="다음 주소 닫기" />
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--//배송지 정보 -> 기본 배송지 있을 경우 요청사항빼고 readonly추가
												-> 기본 배송지 없을경우 신규배송지만 보이게 + readonly 빼라
							-->
						</div>
					</div>
					<!--//서포터 정보 + 배송지 정보-->
					<!--결제 정보-->
					<div class="mt50">
						<div class="flex-box flex-j-space flex-a-flexend flex-wrap">
							<div class="w-60p col-md-12">
								<div class="mb20 pb20 w-100p  border-bottom">
									<h1 class="large-title bold">결제 정보 입력</h1>
								</div>
								<div class="mt10">
									<p class="bold mb5">신용(체크)카드번호</p>
									<div class="flex-box flex-j-space">
										<input type="text" maxlength="4" class="input-stan w-24p chkitem" data-error="신용(체크)카드번호를" />
										<input type="text" maxlength="4" class="input-stan w-24p chkitem" data-error="신용(체크)카드번호를" />
										<input type="text" maxlength="4" class="input-stan w-24p chkitem" data-error="신용(체크)카드번호를" />
										<input type="text" maxlength="4" class="input-stan w-24p chkitem" data-error="신용(체크)카드번호를" />
									</div>
								</div>
								<div class="mt10 flex-box flex-j-space">
									<div class="w-49p">
										<p class="bold mb5">유효기간</p>
										<input type="text" id="cardValidity" maxlength="5" placeholder="MM/YY" class="input-stan w-100p chkitem" data-error="카드 유효기간을" />
									</div>
									<div class="w-49p">
										<p class="bold mb5">비밀번호</p>
										<input type="text" maxlength="2" placeholder="앞2자리" class="input-stan w-100p chkitem" data-error="카드 비밀번호를" />
									</div>
								</div>
								<div class="mt10">
									<p class="bold mb5">생년월일 (주민번호 앞 6자리)</p>
									<p class="tiny-content gray mb5">무기명 법인카드는 사업자등록번호 10자리를 입력하세요.</p>	
									<input type="text" maxlength="10" class="input-stan w-100p chkitem" data-error="생년월일(주민번호 앞 6자리)를" />
								</div>
							</div>
							<div class="dis-labtop mb20">&nbsp;</div>
							<div class="w-33p col-md-12">
								<p class="tiny-title bold mb5">결제 예약시 유의사항</p>
								<p class="bar-indent tiny-content">결제실행일에 결제자 귀책사유(한도초과, 이용정지 등)로 인하여 결제가 실패할 수 있으니, 결제수단이 유효한지 한번 확인하세요.</p>
								<p class="bar-indent tiny-content">1차 결제 실패 시 실패일로부터 3 영업일 동안 재 결제를 실행합니다.</p>
								<p class="bar-indent tiny-content">결제 예약 이후, 결제할 카드를 변경하려면 마이페이지 > 나의 리워드의 결제정보에서 카드정보를 변경해주세요.</p>
							</div>
						</div>
					</div>
					<!--//결제 정보-->
					<!--약관동의-->
					<div class="mt50">
						<div class="mb20 pb20 w-100p">
							<h1 class="large-title bold">약관동의</h1>
						</div>
						<div class="gray-box pt20 pb20">
							<div class="pl10 pr10 pb20 border-bottom">
								<input type="checkbox" id="chkAll" class="chkAll" data-target=".termChk">
								<label class="ml5" for="chkAll">전체 동의하기</label>
							</div>
							<div class="pl10 pr10 mt20 flex-box flex-j-space">
								<p>
									<input type="checkbox" id="termChk1" class="termChk chkitem" data-error="제 3자에 대한 개인정보 제공 동의를" value="1" data-target=".termChk">
									<label class="ml5" for="termChk1">제 3자에 대한 개인정보 제공 동의</label>
								</p>
								<button type="button" class="border-bottom bold" data-target=".term-box-1" onclick="targetActive(this)">보기</button>
							</div>
							<div class="pl10 pr10 mt5 flex-box flex-j-space">
								<p>
									<input type="checkbox" id="termChk2" class="termChk chkitem" data-error="책임 규정에 대한 동의를" value="1" data-target=".termChk">
									<label class="ml5" for="termChk2">책임 규정에 대한 동의</label>
								</p>
								<button type="button" class="border-bottom bold" data-target=".term-box-2" onclick="targetActive(this)">보기</button>
							</div>
						</div>
					</div>
					<!--//약관동의-->
					<div class="txt-center mt10">
						<button type="submit" class="btn-stan tiny-content btn-main">결제 예약하기</button>
					</div>
	            </form>
           	</div>
        </section>
	</main>
	<!--모달 모음-->
	<!-- 제3자에 대한 개인정보 제공 동의-->
	
    <div class="term-box-1 modal-stan">
    	<div class="modal-content pt30 pb30 pl20 pr20">
			<div class="modal-close modal-btn-close" data-target=".term-box-1" onclick="targetActive(this)"></div>
			<div class="border-bottom">
				<h1 class="title main-color mb20 txt-center">
					제 3자에 대한 개인정보 제공 동의
				</h1>
			</div>
			<div class="mt20">
				<p>'펀딩하기'를 통한 결제 및 리워드 전달 서비스를 제공하기 위해, 이용자의 사전 동의 아래 제3자(프로젝트 메이커)에게 제공합니다.</p>
				<p>메이커에게 전달되는 개인 정보는 기재된 목적 달성 후 파기에 대한 책임이 메이커에게 있으며, 파기하지 않아 생기는 문제에 대한 법적 책임은 메이커에게 있습니다.</p>
				<p>아래 내용에 대하여 동의를 거부하실 수 있으며, 거부 시 서비스 이용이 제한됩니다.</p>
				<p class="mt20 bold small-title">개인 정보 이용 내역</p>
				<div class="flex-box flex-j-space mt10 pb5 border-bottom">
					<p class="w-30p main-color">제공받는자</p>
					<p class="w-65p">${mavo.marker_name}</p>
				</div>
				<div class="flex-box flex-j-space mt10 pb5 border-bottom">
					<p class="w-30p main-color">목적</p>
					<p class="w-65p">리워드 펀딩 정보 확인 및 발송, 리워드 발송과 관련된 공지 및 민원처리</p>
				</div>
				<div class="flex-box flex-j-space mt10 pb5 border-bottom">
					<p class="w-30p main-color">항목</p>
					<p class="w-65p">서포터 정보(이름, 이메일, 휴대폰 번호), 수취인 정보(이름, 휴대폰 번호, 주소, 배송 시 요청사항)</p>
				</div>
			</div>
		</div>
	</div>
	<!-- 제3자에 대한 개인정보 제공 동의-->
	
    <div class="term-box-2 modal-stan">
    	<div class="modal-content pt30 pb30 pl20 pr20">
    		<div class="modal-close modal-btn-close" data-target=".term-box-2" onclick="targetActive(this)"></div>
			<div class="border-bottom">
				<h1 class="title main-color mb20 txt-center">
					책임 규정에 대한 동의
				</h1>
			</div>
			<div class="mt20">
				<p>와디즈는 플랫폼을 제공하는 중개자로 크라우드펀딩을 받는 당사자가 아닙니다. 보상품 제공 등에 관한 지연, 제품의 하자 등으로 인한 일체의 법적책임은 펀딩을 받는 프로젝트 개설자가 부담합니다. 하지만, 와디즈는 프로젝트 진행자와 후원자간의 원활한 의사소통을 위해 최선의 노력을 다하고 있습니다.</p>
			</div>
		</div>
	</div>
	<!--배송지 목록 모달-->
    <div class="delevery-modal modal-stan">
    	<div class="modal-content pt30 pb30 pl20 pr20">
    		<div class="modal-close modal-btn-close" data-target=".delevery-modal" onclick="targetActive(this)"></div>
    		<h1 class="title main-color mb20 txt-center">
    			배송지 목록
    		</h1>
    		<table class="table-stan modal-table tiny-content w-100p">
    			<thead>
    				<tr>
	    				<th>
	    					배송지
	    				</th>
	    				<th>
	    					주소
	    				</th>
	    				<th>
	    					연락처
	    				</th>
	    				<th>
	    					선택
	    				</th>
	    			</tr>
    			</thead>
    			<tbody>
					<c:if test="${baseAddr ne '' && baseAddr != null}">
						<tr>
							<td class="txt-center">
								<p>${baseAddr.ship_name}</p><!-- 수령인 이름 -->
								<p>[기본배송지]</p><!-- 기본 배송지만 띄움 -->
							</td>
							<td>
								<p>${baseAddr.addr1}</p>
								<!-- 우편번호 -->
								<p>${baseAddr.addr2}</p>
								<!-- 기본주소 -->
								<p>${baseAddr.addr3} ${baseAddr.addr4}</p>
								<!-- 상세주소 -->
							</td>
							<td class="txt-center">
								<p>${baseAddr.ship_tel}</p>
							</td>
							<td class="txt-center">
								<div>
									<button class="btn-stan btn-main deleveryChk" type="button"
											data-target=".delevery-modal"
											data-postcode="${baseAddr.addr1}"
											data-address="${baseAddr.addr2}"
											data-detail-address="${baseAddr.addr3}"
											data-extra-address="${baseAddr.addr4}"
											data-delivery-name="${baseAddr.ship_name}"
											data-delivery-phone="${baseAddr.ship_tel}" onclick="targetActive(this)">
											선택
									</button>
								</div>
							</td>
						</tr>
					</c:if>
					<c:forEach items="${addrList}" var="addr" >
						<tr>
							<td class="txt-center">
								<p>${addr.ship_name}</p><!-- 수령인 이름 -->
							</td>
							<td>
								<p>${addr.addr1}</p>
								<!-- 우편번호 -->
								<p>${addr.addr2}</p>
								<!-- 기본주소 -->
								<p>${addr.addr3} ${addr.addr4}</p>
								<!-- 상세주소 -->
							</td>
							<td class="txt-center">
								<p>${addr.ship_tel}</p>
							</td>
							<td class="txt-center">
								<div>
									<button class="btn-stan btn-main deleveryChk" type="button"
										data-target=".delevery-modal"
										data-postcode="${addr.addr1}"
										data-address="${addr.addr2}"
										data-detail-address="${addr.addr3}"
										data-extra-address="${addr.addr4}"
										data-delivery-name="${addr.ship_name}"
										data-delivery-phone="${addr.ship_tel}" onclick="targetActive(this)">
										선택
									</button>
									<button class="btn-stan btn-main deleveryChk" type="button"
										data-url="/delevery/deleteAjax"
										data-id="1"
									>삭제</button>
								</div>
							</td>
						</tr>
					</c:forEach>
					<c:if test="${ (baseAddr eq '' || baseAddr == null) && addrList.size() == 0 }">
						<tr>
							<td class="txt-center sub-title bold" colspan="4">
								배송정보가 없습니다.
							</td>
						</tr>
					</c:if>
    			</tbody>
    		</table>
    	</div>
	</div>
	<!--//배송지 목록 모달-->
	<!--//모달 모음-->
	<script>
		//따로 빼니까 에러남
		// 우편번호 찾기 찾기 화면을 넣을 element
		var element_wrap = document.getElementById('daum-map-wrap');
		var daum_wrap = document.getElementById('daum-wrap');
		var themeObj = {
							bgColor: "#FFFFFF", //바탕 배경색
							//searchBgColor: "#0B65C8", //검색창 배경색
							//contentBgColor: "", //본문 배경색(검색결과,결과없음,첫화면,검색서제스트)
							//pageBgColor: "", //페이지 배경색
							//textColor: "", //기본 글자색
							//queryTextColor: "#FFFFFF" //검색창 글자색
							//postcodeTextColor: "", //우편번호 글자색
							//emphTextColor: "", //강조 글자색
							//outlineColor: "", //테두리
						};
		function foldDaumPostcode() {
			// iframe을 넣은 element를 안보이게 한다.
			daum_wrap.style.display = 'none';
		}

		function execDaumPostcode() {
			// 현재 scroll 위치를 저장해놓는다.
			var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
			new daum.Postcode({
   				theme: themeObj,
				oncomplete: function(data) {
					// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 각 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var addr = ''; // 주소 변수
					var extraAddr = ''; // 참고항목 변수

					//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
						addr = data.roadAddress;
					} else { // 사용자가 지번 주소를 선택했을 경우(J)
						addr = data.jibunAddress;
					}

					// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
					if(data.userSelectedType === 'R'){
						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
							extraAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if(data.buildingName !== '' && data.apartment === 'Y'){
							extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
						}
						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if(extraAddr !== ''){
							extraAddr = ' (' + extraAddr + ')';
						}
						// 조합된 참고항목을 해당 필드에 넣는다.
						document.getElementById("extraAddress").value = extraAddr;
					
					} else {
						document.getElementById("extraAddress").value = '';
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('postcode').value = data.zonecode;
					document.getElementById("address").value = addr;
					
					//화면에 표시될 텍스트를 넣어줌
					document.getElementById("dis-post").innerHTML =(extraAddr=='')?data.zonecode + ' ' + addr:data.zonecode + ' ' + addr + ' ' + extraAddr;
					
					// 상세주소 필드를 비우고 커서를 이동한다.
					document.getElementById("detailAddress").value = '';
					document.getElementById("detailAddress").focus();

					// iframe을 넣은 element를 안보이게 한다.
					// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
					daum_wrap.style.display = 'none';

					// 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
					document.body.scrollTop = currentScroll;
				},
				// 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
				onresize : function(size) {
					//element_wrap.style.height = size.height+'px';
					element_wrap.style.height = '100%';
				},
				width : '100%',
				height : '100%'
			}).embed(element_wrap);

			// iframe을 넣은 element를 보이게 한다.
			daum_wrap.style.display = 'block';
			element_wrap.style.display = 'block';
		}
	</script>
	<%@ include file="/WEB-INF/views/include/foot.jspf"%>
	<%@ include file="/WEB-INF/views/include/loginChk/loginChk.jsp"%>
</body>
<!-- 추가 script 삽입 -->
</html>