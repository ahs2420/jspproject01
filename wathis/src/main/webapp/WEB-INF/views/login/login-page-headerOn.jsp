<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../hong-include/head.jspf"%>


<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../hongcss/login/login-page.css">
<link rel="stylesheet" href="/css/animation.css">

<!-- fontawesome 코드 -->
<!-- <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.2.0/css/all.css"> -->
<script src="https://kit.fontawesome.com/8838b56230.js" crossorigin="anonymous"></script>
<!-- fontawesome 코드 -->
<script src="../hongjs/login/login-page.js"></script>
<script src="/js/common.js"></script>
<style>
@media ( max-width : 768px) {
	.all-box {
		width: 100%;
		padding: 0 5%;
		justify-content: center;
	}
}
</style>


</head>

<body>

	<header class=" no-hero">
		<%@ include file="/WEB-INF/views/include/nav.jspf"%>
	</header>
	<main>
		<section class="p0">
			<div class="container">
				<div class="all-img">
					<div class="all-box">
						<div class="sing-inup-box1">
							<div class="sing-ra-box">
								<div class="flex-box">
									<div class="radio-one">
										<input id="hide" type="radio" name="tab" class="sign-in" checked>
										<label for="hide" class="radio-in">로그인</label>
										<!-- <label for="hide" class="radio-in">Login</label> -->

									</div>

									<div class="radio-two">
										<input id="show" type="radio" name="tab" class="sign-up">
										<label for="show" class="radio-up">회원가입</label>
										<!-- <label for="show" class="radio-up">Sign Up</label> -->

									</div>
								</div>

							</div>
							<form action="/login/logindo" method="POST" id="loginForm">
								<div class="in-box1" id="inbox-text">
									<div class="in-box-id">
										<label for="userid" class="label">아이디</label>
										<!-- <label for="userid" class="label">userid</label> -->

										<input name="uid" type="text" id="userid" class="in-name-text chkItem" data-error="아이디를 " value="${uid}">
									</div>
									<div class="in-box-pwd">
										<label for="in-pwd" class="label">비밀번호</label>
										<!-- <label for="in-pwd" class="label">password</label> -->
										<input name="upassword" type="password" id="in-pwd" class="in-pwd-text chkItem" data-error="비밀번호를 ">
									</div>
									<div class="in-box-ke">
										<c:if test="${uid eq ''}">
											<input name="uidSave" type="checkbox" id="in-keep1" class="signin-ck" value="1"> 
											
										</c:if>
										<c:if test="${uid ne ''}">
											<input name="uidSave" type="checkbox" id="in-keep1" class="signin-ck" checked value="1"> 
										</c:if>
										<label for="in-keep1" class="keep" > 
											<span class="keep-up" >아이디 저장</span> 
											<!-- <span class="keep-up">keep me signed in</span> -->
										</label>
									</div>
									<div class="in-box-bu">
										<div class="hr"></div>
										<button type="submit" id="" class="in-button">로그인</button>
										<!-- <button type="button" id="" class="in-button">sign in</button> -->
									</div>
									<div class="foot-lnk">
										<a href="/login/findAccount" class="for">아이디/비밀번호 찾기</a>
										<!-- <a href="#forgot" class="for">Forgot Password?</a> -->
									</div>
									<div class="site-box">
										<div class="facebook">
											<a href="https://www.facebook.com" id="site" target="_blank">
												<i class="line-heall fab fa-facebook-f"></i>
											</a>
										</div>
										<div class="google">
											<a href="https://www.google.com" id="site" target="_blank">
												<i class="line-heall fab fa-google"></i>
											</a>
										</div>
										<div class="wadiz">
											<a
												href="https://www.wadiz.kr/web/wevent/202002?gclid=EAIaIQobChMI2qa5ztO36AIVfCCtBh2-7gniEAAYASAAEgLgifD_BwE"
												id="site" target="_blank"> <i class="line-heall fab fa-weebly"></i>
											</a>
										</div>

										<div class="twitter">
											<a href="https://twitter.com/explore" id="site" target="_blank">
												<i class="line-heall fab fa-twitter"></i>
											</a>
										</div>

										<div class="linkedin">
											<a href="https://kr.linkedin.com/" id="site" target="_blank">
												<i class="line-heall fab fa-linkedin-in"></i>
											</a>
										</div>
									</div>
								</div>
							</form>
							<div class="up-box1" id="upbox-text">
								<form action="/login/register" method="POST" id="regForm">
									<div class="up-box-text">

										<label for="up-userid" class="label">아이디</label>
										<!-- <label for="up-userid" class="label">username</label> -->
										<input name="uid"  type="text" id="up-userid" data-error="아이디를 "
											class="memberIdChk up-name-text up-text-label chkItem">
										
										<label for="up-userid" class="label">이름</label>
										<!-- <label for="up-userid" class="label">username</label> -->
										
										<input name="uname"  type="text" id="up-userid" data-error="이름을 "
											class="up-name-text up-text-label chkItem">
										<!-- </div>
										<div class="up-box-pwd"> -->

										<label for="up-pwd" class="label">비밀번호</label>
										<!-- <label for="up-pwd" class="label">password</label> -->
										<input name="upassword" type="password" id="up-pwd" data-error="비밀번호을 "
											class="up-pwd-text up-text-label chkItem">

										<!-- </div>
										<div class="up-box-repwd"> -->

										<label for="up-repwd" class="label">비밀번호 확인</label>
										<!-- <label for="up-repwd" class="label">repeatpassword</label> -->
										<input name="" type="password" id="up-repwd" data-error="비밀번호 확인을 "
											class="up-repwd-text up-text-label chkItem">
										<!-- </div>
										<div class="up-box-em"> -->
										<label for="up-email" class="label">이메일 주소</label>
										<!-- <label for="up-email" class="label">emailaddress</label> -->
										<input name="uemail" type="text" id="up-email" data-error="이메일 주소를 "
											class="up-email-text up-text-label chkItem"> 
											<input data-error="개인정보 및 이용약관을 "
											type="checkbox" name="term" value="1" class="signup-ck chkItem" /> <a
											href="#" id="modal" class="signup-a-box ">개인정보 및 이용약관</a>
										<!-- </div>
					
										<div class="up-box-bu"> -->
										<!-- 
											<div class="hr"></div> -->
										<button type="submit" id="" class="up-button">회원가입완료</button>
										<!-- <button type="button" id="" class="up-button">sign up</button> -->
									</div>
								</form>
							</div>
						</div>
					</div>
<!-- 					<div class="logo "> -->
<!-- 					<div class="logo-icon logo-box-shadow"> -->
<!-- 							<a href="http://localhost:8888/"> -->
<!-- 								<span class="main-color logo-box-shadow">WaThis</span> -->
								
								
								
<!-- 							</a> -->
<!-- 					</div> -->
<!-- 					</div> -->
				</div>
				
			</div>
		</section>

		<div class="modal">
			<div class="modal-close modal-cover"></div>
			<div class="modal-container">

				<div class="modal-text">
					<h1>개인정보 및 이용약관</h1>
				</div>

				<div class="modal-close modal-close-img">
					<i class="fal fa-times-square"></i>
				</div>

			<div class="modal-content">
					<p class="">
						<strong>제 1 조 </strong>목적 본 약관은 와디스(이하 “회사”)에서 운영하는
						크라우드펀딩(https://krahs123.co.kr)과 MOAH 모바일 어플리케이션을 통하여 제공하는 인터넷 관련
						제반서비스(이사 “서비스”)의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을
						목적으로 합니다.</p>

					<p class="mar-top3">
						<strong>제 2조 </strong>용어의 정의 본 약관에서 사용하는 용어의 정의는 다음과 같습니다.
						서비스 : 회원이본 약관에 따라 이용할 수 있는 회사가 제공하는 모든 서비스를 의미합니다. 회원 : 본 약관에 따라
						회사와 서비스 이용계약을 체결하고 홈페이지를 통하여 서비스를 이용할 수 있는 자격을 부여 받은 자를 말합니다.
						아이디(ID) : 회원의 식별과 서비스 이용을 위하여 회원이 정하고 회사가 승인하는 문자와 숫자의 조합을 의미합니다.
						비밀번호 : 회원이 부여 받은 아이디와 일치되는 회원임을 확인하고 비밀보호를 위해 회원 자신이 정한 문자 또는 숫자의
						조합을 의미합니다. 게시물 : 회원이 서비스를 이용함에 있어 홈페이지의 게시판에 게재한
						부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다. 이
						약관에 사용하는 용어의 정의는 각 항에서 정의하는 것을 제외하고는 관계법령 및 일반적인 상관관계에 의합니다.</p>

					<p class="mar-top3">
						<strong>제 3조 </strong> 서비스의 제공 1.회사는 투자형 크라우드펀딩 서비스 (CROWDY
						투자), 리워드형 크라우드펀딩 서비스 (CROWDY 리워드)와 MOAH 모바일 어플리케이션 서비스를 제공하고 있으며,
						위의 모든서비스의 회원을 통합하여 운영 및 관리하고 있습니다. 이에 MOAH 모바일 어플리케이션 서비스에 가입하여
						회원이 되는 경우, 회사의 그 외 다른 서비스 또한 이용 가능합니다. 본 약관에 따라 회원이 된 자는 다음 각 호의
						서비스를 이용할 수 있습니다. 투자형 크라우드펀딩 서비스 (CROWDY 투자) 리워드형 크라우드펀딩 서비스
						(CROWDY 리워드) MOAH 모바일 어플리케이션 서비스 위 각 호 서비스 제공을 위해 필요하거나 이에 부수되는
						서비스 회원은 제2항 각 호 서비스와 관련된 개별 서비스를 이용하기 위하여 개별 약관에 따른 추가적인 약정을 회사와
						체결하여야 합니다. 이 경우 각 개별 서비스의 구체적인 내용은 각 서비스별 개별약관에서 정한 바에 따릅니다. 서비스는
						연중무휴, 1일 24시간 제공함을 원칙으로 합니다. 다만, 회사는 서비스를 일정범위로 분할하여 각 범위 별로
						이용가능시간을 별도로 지정할 수 있으며 이러한 경우에는 그 내용을 사전에 공지합니다. 회사는 컴퓨터 등 정보통신설비의
						보수점검, 교체 및 고장, 통신두절 또는 운영상 상당한 이유가 있는 경우 서비스의 제공을 일시적으로 중단할 수 있으며,
						이 경우 회사는 회원에게 통지합니다. 다만, 회사가 사전에 통지할 수 없는 부득이한 사유가 있는 경우 사후에 통지할 수
						있습니다. 회사는 서비스의 제공에 필요한 경우 정기점검을 실시할 수 있으며, 정기점검시간은 서비스제공화면에 공지한 바에
						따릅니다.</p>

					<p class="mar-top3">
						<strong>제 4 조 </strong>서비스의 변경 회사는 상당한 이유가 있는 경우에 운영상, 기술상의
						필요에 따라 제공하고 있는 전부 또는 일부 서비스를 변경할 수 있습니다. 서비스의 내용, 이용방법, 이용시간에 대하여
						변경이 있는 경우에는 변경사유, 변경될 서비스의 내용 및 제공일자 등이 그 변경 전에 해당 서비스 초기화면에
						게시됩니다. 회사는 무료로 제공되는 서비스의 일부 또는 전부를 회사의 정책 및 운영의 필요상 수정, 중단, 변경할 수
						있으며, 이에 대하여 관계법령에 특별한 규정이 없는 한 회원에게 별도의 보상을 하지 않습니다.</p>



				</div>
			</div>
		</div>
	</main>
<script>
// 아이디 저장하기



	$(function(){
		$("#up-userid").blur(function(){
			var data={
				"id":$(this).val()
			};
			var option = {
				"url":"/login/getMemberID",
				"data":data
			};
			var returnData="";
			$.ajax({
				url:option.url,
				type:(option.type)?option.type:"post",
				dataType:(option.dataType)?option.dataType:"json",
				data:option.data,
				success:function(data){
					if(!data.status){
						alert(data.msg);
						$("#up-userid").val("");
					}
				},error:function(xhr,status,error){
						alert("시스템 오류 입니다.");
						$("#up-userid").val("");
				}
			});
		});
		$("form").submit(function(){
			var $chkItem = $(this).find(".chkItem");
			var result = true;
			$chkItem.each(function(){
				if($(this).val()==""){
					alert($(this).data("error")+" 입력해 주세요");
					$(this).focus();
					result=false;
					return false;
				}else if($(this).attr("type")=="checkbox"){
					if(!$(this).is(":checked")){
						alert($(this).data("error")+" 선택해 주세요");
						$(this).focus();
						result=false;
						return false;
					}
				}else if($(this).attr("id")=="up-repwd"){
					if($(this).val()!=$("#up-pwd").val()){
						alert("비밀번호와 비밀번호 확인이 서로다릅니다.");
						$(this).val("");
						$(this).focus();
						result=false;
						return false;
					}
				}
			});
			return result;
		});
	});
</script>
<%@ include file="/WEB-INF/views/include/loginChk/noLoginChk.jsp"%>
<%@ include file="/WEB-INF/views/include/foot.jspf"%>
<%@include file="../hong-include/foot.jspf"%>