<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="/plugin/ckeditor/ckeditor.js"></script>
<main class="resive-main">
    <form action="/article/setArticle" enctype="multipart/form-data" method="post" class="chkFormCke" id="uploadForm">
        
        <input type="hidden" name="member_id" value="${sessionScope.id }"/>
        <input type="hidden" name="boardCode" value="${bvo.boardCode }"/>
          <div class="notice-write-container"></div>
          <div class="resive-container">
            <div class="resive-wrap">
                <!-- <div class="resive-select-box">
                    <select name="title-select" class="resive-class write-chkItem "
                        data-error="게시판을 선택" id="">
                        <option value="">게시판 선택</option>
                        <option value="공지·알림">공지·알림</option>
                        <option value="이벤트·진행중">이벤트·진행중</option>
                        <option value="이벤트·종료">이벤트·종료</option>
                        <option value="보도자료">보도자료</option>
                    </select>
                     <label class="resive-label" form=""></label>
                </div> -->
                <h1>${bvo.boardName} 게시글 등록</h1>
                <div class="resive-title-box">
                    <input type="text" class="resive-title write-chkItem chkitem"
                        data-error="제목을" name="subject"
                        data-pc-placeholder="제목을 입력해주세요." data-mobile-placeholder="제목">
                </div>
                <div class="resive-border-box mt50">
                    <div class="ckebox">
                        <textarea id="editor1" name="content" class="ckeditor chkitem ckeItem"
                        data-error="내용을"></textarea>
                        <script>
                            CKEDITOR.inline('editor1', {
                                customConfig : '/plugin/ckeditor/config.js',
                                width : '100%',
                                height : '500',
                                filebrowserImageUploadUrl : '/cke/imageUpload'
                            });
                        </script>
                    </div>
                    <div class="img-uploader">
                        <label for="uploadFile" title="내 컴퓨터에서 첨부하기" class="img-file">
                            <i class="fas fa-cloud-upload-alt"></i> 
                            <span class="small-content black v-align-m">파일첨부하기</span>
                        </label>
                    </div>
                    <input id="uploadFile" class="dis-none" type="file" name="files"
                        data-cke-target="editor1" data-preview="#preview" />
                    <button type="button">
                        <img id="preview" class="dis-none gray-box" src="" data-cke-target="editor1" />
                    </button>
                </div>
            </div>
            <div class="resive-btn-box mt30 pb50">
                <button type="submit" class="resive-btn">저장하기</button>
                <button type="button" onclick="location.href='/article?boardCode=${bvo.boardCode}'" class="resive-btn">취소하기</button>
            </div>
        </div>
        <div class="notice-write-container"></div>
    </form>
</main>