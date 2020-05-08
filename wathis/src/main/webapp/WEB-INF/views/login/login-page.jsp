<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../hong-include/head.jspf"%>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../hongcss/login/login-page.css">
<script src="../hongjs/login/login-page.js"></script>
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
<!-- 지우기  -->
	<main>
		<div. class="container">
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
					<div class="in-box1" id="inbox-text">
						<div class="in-box-id">
							<label for="userid" class="label">이름</label>
							<!-- <label for="userid" class="label">userid</label> -->

							<input type="text" id="userid" class="in-name-text">
						</div>
						<div class="in-box-pwd">
							<label for="in-pwd" class="label">비밀번호</label>
							<!-- <label for="in-pwd" class="label">password</label> -->
							<input type="password" id="in-pwd" class="in-pwd-text">
						</div>
						<div class="in-box-ke">
							<input type="checkbox" id="in-keep1" class="signin-ck"> <label
								for="in-keep1" class="keep"> <span class="keep-up">아이디
									저장</span> <!-- <span class="keep-up">keep me signed in</span> -->
							</label>
						</div>
						<div class="in-box-bu">
							<div class="hr"></div>
							<button type="button" id="" class="in-button">로그인</button>
							<!-- <button type="button" id="" class="in-button">sign in</button> -->
						</div>
						<div class="foot-lnk">
							<a href="#forgot" class="for">비밀번호를 잊으셨나요?</a>
							<!-- <a href="#forgot" class="for">Forgot Password?</a> -->
						</div>
						<div class="site-box">
							<div class="facebook">
								<a href="https://www.facebook.com" id="site" target="_blank">
									<i class="fab fa-facebook-f line-he"></i>
								</a>
							</div>
							<div class="google">
								<a href="https://www.google.com" id="site" target="_blank">
									<i class="fab fa-google line-he"></i>
								</a>
							</div>
							<div class="wadiz">
								<a
									href="https://www.wadiz.kr/web/wevent/202002?gclid=EAIaIQobChMI2qa5ztO36AIVfCCtBh2-7gniEAAYASAAEgLgifD_BwE"
									id="site" target="_blank"> <i class="fab fa-weebly line-he"></i>
								</a>
							</div>

							<div class="twitter">
								<a href="https://twitter.com/explore" id="site" target="_blank">
									<i class="fab fa-twitter line-he"></i>
								</a>
							</div>

							<div class="linkedin">
								<a href="https://kr.linkedin.com/" id="site" target="_blank">
									<i class="fab fa-linkedin-in line-he"></i>
								</a>
							</div>




						</div>
					</div>

					<div class="up-box1" id="upbox-text">

						<div class="up-box-text">

							<label for="up-userid" class="label">이름</label>
							<!-- <label for="up-userid" class="label">username</label> -->
							<input type="text" id="up-userid"
								class="up-name-text up-text-label">
							<!-- </div>
                            <div class="up-box-pwd"> -->

							<label for="up-pwd" class="label">비밀번호</label>
							<!-- <label for="up-pwd" class="label">password</label> -->
							<input type="password" id="up-pwd"
								class="up-pwd-text up-text-label">

							<!-- </div>
                            <div class="up-box-repwd"> -->

							<label for="up-repwd" class="label">비밀번호 확인</label>
							<!-- <label for="up-repwd" class="label">repeatpassword</label> -->
							<input type="password" id="up-repwd"
								class="up-repwd-text up-text-label">
							<!-- </div>
                            <div class="up-box-em"> -->
							<label for="up-email" class="label">이메일 주소</label>
							<!-- <label for="up-email" class="label">emailaddress</label> -->
							<input type="text" id="up-email"
								class="up-email-text up-text-label"> <input
								type="checkbox" name="term" value="1" class="signup-ck" /> <a
								href="#" id="modal" class="signup-a-box">개인정보 및 이용약관</a>
							<!-- </div>
        
                            <div class="up-box-bu"> -->
							<!-- 
                                <div class="hr"></div> -->
							<button type="button" id="" class="up-button">완료</button>
							<!-- <button type="button" id="" class="up-button">sign up</button> -->
						</div>
					</div>
				</div>
			</div>
		</div>

		</div>
		<div class="modal">
			<div class="modal-close modal-cover"></div>
			<div class="modal-container">

				<div class="modal-text">
					<h3>개인정보 및 이용약관</h3>
				</div>

				<div class="modal-close modal-close-img">
					<i class="far fa-times-circle"></i>
				</div>

				<div class="modal-content">
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>
					<p>sadsa</p>

				</div>


			</div>
		</div>
	</main>
	<footer></footer>
<%@include file="../hong-include/foot.jspf"%>