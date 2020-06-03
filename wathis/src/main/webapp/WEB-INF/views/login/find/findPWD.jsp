<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <section>
        <div class="container max600" id="term-box">
            <form name="baseInfoForm" action="/login/findPWD" enctype="multipart/form-data">
                <div class="pb20  border-bottom">
                    <h1 class="large-title bold">비밀번호 찾기</h1>
                </div>
                <div class="mt50">
                    <p class="bold mb5">아이디</p>
                    <input type="text" name="uid" class="input-stan w-100p" />
                </div>
                <div class="mt20">
                    <p class="bold mb5">이메일</p>
                    <input type="text" name="uemail" class="input-stan w-100p" />
                </div>
                <div class="txt-center mt20">
                    <button type="submit" class="btn-stan tiny-content btn-main">메일 발송하기</button>
                </div>
            </form>
        </div>
    </section>
