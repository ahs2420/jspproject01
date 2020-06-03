<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@include file="../hong-include/head.jspf"%>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../hongcss/mypage/common.css">
<!-- fontawesome 코드 -->
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.2.0/css/all.css">
<script src="https://kit.fontawesome.com/8838b56230.js" crossorigin="anonymous"></script>
<!-- fontawesome 코드 -->
<script src="../hongjs/mypage/mypageTwo.js"></script>


<div class="box2-funReady">
    <form action="/page/mypageTwoModify" enctype="multipart/form-data" method="post" class="chkFormCke" id="uploadForm">
<%--         <input type="hidden" name="member_id" value="${member_id }" /> --%>
<%--         <input type="hidden" name="id" value="${id}" /> --%>
        <input type="hidden" name="id" value="${makervo.id}" />
        <input type="hidden" name="audit_id" value="${audit_id}" />
        <!-- 기본 정보 박스 -->
        <!-- <div class="flex-basic-adver"> -->
        <div class="basic-box">
            <div class="mar-bo3">
                <span class=" fon-col fon-wei2 fon-siz3 ">펀딩 준비</span> <span class=" fon-col fon-wei2 fon-siz3"><i
                        class="fas fa-chevron-right"></i></span> <span class=" fon-wei2 fon-siz3">메이커
                    정보</span>
            </div>


            <div class="flex-basic1 wid1">
                <div class="basic-box-one wid4">
                    <h1 class="di-la2 mar-bo6">메이커 정보</h1>

                </div>
                <!-- 가이드 박스 -->
                <div class="ba-adver-guide box-ra1 mar-right1 wid5 cu-poin">
                    <div class="guide-box">
                        <a class="fon-wei1 fon-siz7 fon-co11 di-la1 "> <i class="fal fa-book "></i> 메이커님을 위한 필수 가이드
                        </a>
                    </div>
                </div>

            </div>
            <!-- 1번 -->
            <div class="ba-project">
                <div class="flex-basic2 wid1">
                    <div class="mar-bo2 wid4">
                        <div class="box-container">
                            <div class="box-text-one">
                                <h4 class="fon-wei1">메이커 기본 정보</h4>
                                <p class="fon-col">프로젝트 상세 페이지에 노출되는 정보이니, 서포터와 소통이 가능한 정확한
                                    정보를 입력해주세요.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 2번 -->
                <div class="flex-basic2 ">
                    <div class="mar-bo3 wid4 ">
                        <label for="text-box1" class="di-la1 mar-top1 fon-wei1">메이커명<span class="fon-co5">
                                *</span></label>
                        <p class="fon-siz3 fon-col fon-wei mar-bo6">법인사업자는 법인등기부상 법인명
                            /개인 사업자는 주민등록상 성명 또는 상호 /개인은 주민등록상 성명을 입력하세요.</p>
                        <input class="wid1 hei1 fon-bor1 text-padding1 text-coun" type="text" id="text-box1"
                            name="marker_name" value="${makervo.marker_name}" placeholder="메이커명 입력">

                        <p class="fon-siz3 fon-col " id="counter">[ ${fn:length(makervo.marker_name)} / 최대 30자 ]</p>
                    </div>
                </div>
                <!-- 3번 -->
                <div class="flex-basic2 ba-pro-name">
                    <div class="mar-bo2 wid4">
                        <label for="projectimg" class="di-la1 mar-top1 fon-wei1">메이커
                            프로필 이미지<span class="fon-co5"> *</span>
                        </label><br>
                        <div class="file-box mar-top3">
                            <label for="file1"><i class="fas fa-camera fon-co9"></i>
                                등록하기</label> <input type="file" id="file1" name="file1">
                        </div>
                        <p class="fon-siz4 fon-col mar-top5">3MB이하의 JPEG, PNG파일, 사이즈:
                            300X300 픽셀 이상</p>
							<img src = "${makervo.marker_img }">

                    </div>
                    <div class="ba-guide1 ba-pro-name">
                        <div class=" text-padding3 box-li1 box-back1">
                            <h4 class="mar-bo5 fon-siz4 fon-co7">
                                <p class="">사진으로 신뢰감을 주세요.</p>
                            </h4>
                            <p class="fon-siz4 mar-bo3 fon-co7">업체 로고나 메이커님의 사진을 등록해주시면,
                                메이커 정보에서 확인할 수 있습니다.</p>
                        </div>
                    </div>
                </div>

                <!-- 4번  함께하는 멤버 삭제함-->
                <!-- 5번 -->
                <div class="mar-bo2 ">
                    <div class="flex-basic2 ba-pro-img ">
                        <div class="wid4 ">
                            <label for="projectprice" class="di-la1 mar-top1 fon-wei1">
                                <span class="">문의 이메일 <span class="fon-co5"> * </span>
                                </span>
                            </label> <input class="wid1 hei1 fon-bor1 text-padding1 mar-top5" type="text"
                                id="projectprice" placeholder="이메일 입력" value="${makervo.marker_email}" name="marker_email">

                        </div>
                        <div class="ba-guide3">
                            <div class=" text-padding3 box-li1 box-back1">
                                <p class="fon-siz4 mar-bo3 fon-co7">오픈 이후 서포터와 원활한 소통이 가능한
                                    이메일 주소를 적어주세요.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 6번 -->
                <div class="mar-bo2 ">
                    <div class="flex-basic2 ba-pro-ka">
                        <div class="wid4 ">
                            <label for="projectprice" class="di-la1 mar-top1 fon-wei1"><span class="">문의 전화번호<span
                                        class="fon-co5"> * </span></label> 
                                        <input
                                class="wid1 hei1 fon-bor1 text-padding1 mar-top5" type="text" id="projectprice"
                                placeholder="전화번호 입력" value="${makervo.marker_phone}" name="marker_phone">

                        </div>
                        <div class="ba-guide4">
                            <div class=" text-padding3 box-li1 box-back1">
                                <p class="fon-siz4 mar-bo3 fon-co7">오픈 이후 서포터와 원활한 소통이 가능한
                                    이메일 주소를 적어주세요.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 7번 -->
                <div class="mar-bo2">
                    <div class="flex-basic2 ba-pro-day">
                        <div class="mar-bo2 wid4 ">
                            <label for="projectprice" class="di-la1 mar-top1 fon-wei1">
                                <h4 class="di-in1">카카오톡 채널</h4> <span class="fon-co10 fon-siz2">(선택사항)</span>
                            </label>
                            <input class="wid1 hei1 fon-bor1 text-padding1 mar-top5" type="text" id="projectprice"
                                placeholder="검색용 아이디 입력"  value="${makervo.marker_kakao_id}" name="marker_kakao_id">

                            <input class="wid1 hei1 fon-bor1 text-padding1 mar-top5" type="text" id="projectprice"
                                placeholder="홈페이지 URL 입력" value="${makervo.marker_kakao_url}" name="marker_kakao_url">

                        </div>
                        <div class="ba-guide5">
                            <div class=" text-padding3 box-li1 box-back1">

                                <p class="fon-siz4 mar-bo3 fon-co7">오픈 이후 서포터와 원활한 소통이 가능한
                                    카카오톡채널 계정이 있다면 홈 URL을 적어주세요. ※홈 URL은 카카오톡채널 관리자 센터 > 관리 >
                                    상세설정에서 확인하실 수 있습니다.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 8번 -->
                <div class="mar-bo2">
                    <div class="flex-basic2 ba-pro-adult">
                        <div class="mar-bo2 wid4 ">
                            <label for="projectprice" class="di-la1 mar-top1 fon-wei1 marker_home_page_url">
                                <h4 class="di-in1">홈페이지</h4> <span class="fon-co10 fon-siz2">(선택사항)</span>
                            </label>
                            <c:set var="url" value="${fn:split(makervo.marker_home_page_url,'|')}" />
                            <c:forEach begin="0" end="1" varStatus="vs">
		                         <input class="wid1 hei1 fon-bor1 text-padding1 mar-top5" type="text" id="projectprice"
		                                placeholder="홈페이지 URL 입력" name="marker_home_pageTwo_url[]" value="${url[vs.index]}">
                            </c:forEach>
                        </div>
                        <div class="ba-guide6">
                            <div class=" text-padding3 box-li1 box-back1">

                                <p class="fon-siz4 mar-bo3 fon-co7">운영 중인 웹사이트(홈페이지 또는 블로그
                                    등)가 있다면 적어주세요. 최대 2개까지 등록 가능합니다.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 9번 -->
                <div class="mar-bo2">
                    <div class="flex-basic2 ba-pro-seach">
                        <div class="mar-bo2 wid4">
                            <label for="projectprice" class="di-la1 mar-top1 fon-wei1">

                                <h4 class="di-in1">SNS</h4> <span class="fon-co10 fon-siz2">(선택사항)</span>
                                </span>
                            </label>
                            <input class="wid1 hei1 fon-bor1 text-padding1 mar-top5" type="text"
                                name="marker_facebook_url" id="projectprice"
                                placeholder="https://www.facebook.com/" value="${makervo.marker_facebook_url}">
                            <input class="wid1 hei1 fon-bor1 text-padding1 mar-top5" type="text"
                                name="marker_twiter_url" id="projectprice"
                                placeholder="https://www.twitter.com/"  value="${makervo.marker_twiter_url}">
                            <input class="wid1 hei1 fon-bor1 text-padding1 mar-top5" type="text"
                                name="marker_instagram_url" id="projectprice"
                                placeholder="https://www.instagram.com/" value="${makervo.marker_instagram_url}">

                        </div>
                        <div class="ba-guide7">
                            <div class=" text-padding3 box-li1 box-back1">

                                <p class="fon-siz4 mar-bo3 fon-co7">운영 중인 SNS채널 (페이스북,인스타그램
                                    또는 트위터 등)이 있다면 적어주세요.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!--representative 대표자 정보 -->
                <div class="repre-container">
                    <div class="box-container">
                        <div class="box-text-one">
                            <h3>대표자 정보</h3>
                            <p class="fon-siz2 fon-col fon-wei mar-bo3">정산과 관련된 전자 약정 체결을
                                위한 정보이니, 정확하게 입력해주세요.</p>
                        </div>
                    </div>
                    <!--  대표자 1번 -->
                    <div class="flex-basic2 ba-pro-name">
                        <div class="mar-bo2 wid4 ">
                            <label for="projectprice" class="di-la1 mar-top1 fon-wei1">사업자
                                구분<span class="fon-co5"> *</span>
                            </label>
                        <select id="Reward-documents" class="wid1 hei1 fon-bor1 fon-siz1 text-padding1 ::placeholder" name="business_type">
                            <c:forEach items="${makerType }" var="item" varStatus="vs">
                            	<option value="${vs.index}" <c:if test="${makervo.business_type eq vs.index }">selected</c:if> >${item}</option>
                            </c:forEach>
                        </select>
                            <!-- <select class="wid1 hei1 fon-bor1" name="business_type">
                                <option selected class="business_type">사업자 구분 선택</option>
                                <option value="">개인</option>
                                <option value="">개인 사업자</option>
                                <option value="">법인사업자</option>
                            </select> -->
                            
                        </div>

                        <div class="ba-guide1 ba-pro-name">
                            <div class=" text-padding3 box-li1 box-back1">
                                <h4 class="mar-bo5 fon-siz4 fon-co7">
                                    <p class="">사업자등록증 상단의 사업자 종류를 확인해주세요.</p>
                                </h4>
                                <p class="fon-siz4 mar-bo3 fon-co7">일반과세자, 간이과세자는 개인사업자를
                                    선택해주세요.</p>
                                <h4 class="mar-bo5 fon-siz4 fon-co7">미성년자는 사업자 구분이 개인인 경우
                                    프로젝트 진행이 불가합니다.</h4>

                            </div>
                        </div>
                    </div>
                    <!--  대표자 2번 -->
                    <div class="flex-basic2 ba-pro-price">
                        <div class="mar-bo2 wid4">
                            <label for="projectimg" class="di-la1 mar-top1 fon-wei1">통장
                                사본 <span class="fon-co5"> *</span>
                            </label><br>
                            <div class="file-box mar-top4">
                                <label for="file2"><i class="fas fa-file-upload fon-co9"></i>
                                    업로드</label>
                                <input type="file" id="file2" name="file2">
                            </div>
                            <p class="fon-siz3 fon-col mar-top5">펀딩 성공 시 펀딩 금액을 수령할 법인
                                명의의 계좌 사본을 첨부하세요.</p>
                            <p class="fon-siz3 fon-col mar-top5">jpg, jpeg, png, pdf /
                                10MB 이하 파일 1개만 업로드 가능합니다.</p>
							<img src = "${makervo.bankbook_img }">

                        </div>
                        <div class="ba-guide2">
                            <div class=" text-padding3 box-li1 box-back1">
                                <h4 class="mar-bo5 fon-siz4 fon-co7">통장 사본 업로드</h4>
                                <p class="fon-siz4 mar-bo3 fon-co7">통장 사본의 정보는 반드시 정산을 받을 계좌
                                    정보와 동일해야 합니다.</p>

                            </div>
                        </div>
                    </div>

                    <!--  대표자 3번 -->
                
                    <!--  대표자 4번 -->
             
                    <!--  대표자 5번 -->
              
                    <!--  대표자 6번 -->
                    <div class="btn-save">
                        <button class="btn-end" type="submit">수정완료</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>

</main>
<footer></footer>
</body>


<%@include file="../hong-include/foot.jspf"%>