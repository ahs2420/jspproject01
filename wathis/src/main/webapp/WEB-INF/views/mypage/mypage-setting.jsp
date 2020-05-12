<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/include/head.jspf"%>
<!-- 추가 css,js -->
<!-- 
    
    <script src="/js/main.js"></script>
 -->
 <link rel="stylesheet" href="/css/mypage/settings.css">
 <script src="/js/mypage/settings.js"></script>
</haed>
<body>
<header>
<%@ include file="/WEB-INF/views/include/nav.jspf"%>
<!-- hero 삽입 -->
    <div class="hero item-only no-blur">
        <div class="">
            <div class="item">
                <div class="bg-hero-cover">
                    <div class="bg-img bg-main" style="background-image: url(/images/mypage/setting_main_1.jpg);"></div>
                    <div class="container bg-txt fadeInUp">
                        <div class="small-title"></div>
                        <h1 class="title mb20 col-md-12 word-break"> 
                            마이페이지
                        </h1>
                        <div class="tiny-title col-md-12 word-break">
                            와디스는 도전하는 기업이 사람들의 지지를 받고
                            성장할 수 있도록 돕는 크라우드펀딩 플랫폼입니다
                        </div>
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
    <div class="sub-nav">
        <ul class="sub-menu flex-box flex-j-center flex-wrap">
            <li class="w-33p bold"><a class="sub-view-btn" type="button" href="#" ><span class="dis-pc">펀딩한프로젝트</span><span class="dis-mobile">펀딩</span></a></li>
            <li class="w-33p bold"><a class="sub-view-btn" type="button" href="#" ><span class="dis-pc">제작한프로젝트</span><span class="dis-mobile">제작</span></a></li>
            <li class="w-33p bold on"><a class="sub-view-btn" type="button" href="/page/setting" >설정</a></li>
            <!-- <li class="w-24p col-sm-6 bold"><a class="sub-view-btn" type="button" href="#" >운영정책</a></li> -->
            <!-- <li><a href="#">서포터</a></li> -->
        </ul>
    </div>
</header>
<!-- main내용삽입 -->
<main>
    <section>
        <div class="container max600" id="term-box">
            <form action="" enctype="multipart/form-data">
                <div class="pb20  border-bottom">
                    <h1 class="large-title bold">기본 정보 설정</h1>
                </div>
                <div class="mt20">
                    <input type="file" id="thumbnail" data-target=".test" data-file-type="img" data-preview=".user-thumbnail-label img" class="dis-none"/>
                    <input  class="test" />
                    <label class="user-thumbnail-label" for="thumbnail">
                        <img src="/images/icon/file-upload-icon.png" alt="썸네일 기본"/>
                    </label>
                </div>
                <div class="mt20">
                    <p class="bold mb5">이름</p>
                    <input type="text" class="input-stan w-100p" />
                </div>
                <div class="mt10">
                    <p class="bold mb5">전화번호</p>
                    <input type="text" class="input-stan w-100p" />
                </div>
                <div class="mt10">
                    <p class="bold mb5">이메일</p>
                    <input type="text" class="input-stan w-100p" />
                </div>
                <div class="flex-box flex-j-space flex-a-center mt10">
                    <p class="bold mb5">주소</p>
                    <button type="button" class="btn-stan" onclick="execDaumPostcode()">주소검색</button>
                </div>
                <div class="mt10">
                    <p class="tiny-content mb5 dis-none" id="dis-post"></p>
                    <input type="text" class="input-stan chkitem" onclick="execDaumPostcode()" data-error="우편주소를 검색해서 주소를" id="postcode" placeholder="우편번호" readonly />
                    <input type="text" class="input-stan mt10 w-100p chkitem" onclick="execDaumPostcode()" data-error="우편주소를 검색해서 주소를" id="address" placeholder="주소" readonly />
                    <input type="text" class="input-stan mt10 w-100p chkitem" onclick="execDaumPostcode()" data-error="우편주소를 검색해서 주소를" id="extraAddress" placeholder="참고항목" readonly />
                    <input type="text"  class="input-stan mt10 w-100p chkitem" data-error="상세주소를" id="detailAddress" placeholder="상세주소" />
                </div>
                <div class="txt-center mt10">
                    <button type="submit" class="btn-stan tiny-content btn-main">저장하기</button>
                </div>
            
            </form>
            <form>
                <div class="pb20  border-bottom">
                    <h1 class="large-title bold">비밀번호 변경</h1>
                </div>
                <div class="mt10">
                    <input type="password" name="orgPasswd" class="input-stan w-100p chkitem chkPasswd" data-error="비밀번호를" id="detailAddress" placeholder="기존 비밀번호" />
                    <span class="confirmPwd caution-color"></span>
                </div>
                <div class="mt10">
                    <input type="password" name="passwd" class="input-stan w-100p chkitem chkPasswd" data-error="비밀번호를" id="detailAddress" placeholder="변경할 비밀번호" />
                    <span class="confirmPwd caution-color"></span>
                </div>
                <div class="mt10">
                    <input type="password" name="passwdChk" class="input-stan w-100p chkitem chkPasswd" data-error="비밀번호 확인를" id="detailAddress" placeholder="변경할 비밀번호 확인" />
                </div>
                <div class="txt-center mt10">
                    <button type="submit" class="btn-stan tiny-content btn-main">변경하기</button>
                </div>
            </form>
        </div>
    </section>
</main>
    <!--다음 모달-->
    <div id="daum-wrap" class="modal-stan">
        <div id="daum-map-wrap" class="pt20">
            <div id="daum-wrap-close-btn">
                <img src="/images/icon/close.png" id="btnFoldWrap" onclick="foldDaumPostcode()" alt="다음 주소 닫기" />
            </div>
        </div>
    </div>
    <!--//다음모달-->
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
</body>
<!-- 추가 script 삽입 -->
</html>