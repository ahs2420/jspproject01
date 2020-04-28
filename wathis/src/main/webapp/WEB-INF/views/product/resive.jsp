<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/include/head.jspf"%>
<!-- 추가 css,js -->
<script src="https://code.jquery.com/jquery-2.2.4.min.js"
        integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
    <script src="/plugin/ckeditor/ckeditor.js"></script>
<!-- 
    <link rel="stylesheet" href="/css/main.css">
    <script src="/js/main.js"></script>
 -->
     c <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .resive-container {
            max-width: 1200px;
            width: 100%;
            margin: 0 auto;
        }
        .resive-wrap{
            border: 1px solid #ccc;
            font-weight: 700;
        }
        .resive-span {
            width: 70px;
            display: inline-block;
            margin-left: 40px;
            height: 28px
        }

        .resive-select-box {
            margin-top: 20px;
        }

        .resive-title {
            width: 500px;
            height: 23px;
            margin-bottom: 10px;
        }

        select {
            width: 150px;
            height: 20px;
        }
        .resive-btn-box{
            text-align: center;
            margin: 0 auto;
        }
        .resive-btn{
            margin-top: 20px;
            width: 130px;
            max-width: 130px;
            height: 40px;
            border: 1px solid #ccc;
            background-color: #fff;
            cursor: pointer;
            outline: none;
        }
        .resive-btn:hover{
            text-decoration:underline;
            font-weight: 700;
        }
        .resive-btn:first-child{
            margin-right: 5px;
        }
        /* input.resive-title::placeholder{
            color: transparent;
        } */
        .resive-title-mobile{
            display: none;
        }
        button:hover{
            color:#00c8c8;
        }
        @media (max-width: 1200px){
            .resive-container {
                width: 100%;
                padding: 0px 20px;
            }
        }
        @media (max-width: 1080px){

        }
        @media (max-width: 768px){
            .resive-title{
                width: 300px;
            }
        }
        @media (max-width: 480px){
            .resive-container {
                width: 100%;
            }
            #resive-class{
                width: 100%;
                height: 30px;
                border: 1px solid #888;
                padding-left: 10px;
                outline: none;
            }
            
            .resive-span{
                display: none;
            }
            input.resive-title{
                width: 100%;
                height: 30px;
                border: 1px solid #888;
                border-top:0 ;
                padding:0 10px;
            }
            /* input.resive-title::placeholder{
                color: #ccc;
            } */
            .resive-btn-box{
                width: 100%;
            }
            .resive-btn{
                flex-basis: 49%;
                border: none;
                font-weight: 700;
            }
            .resive-btn:first-child{
                background-color:#00b2b2;
                color: #fff;
            }
            .resive-btn:last-child{
                background-color: #888;
                color: #fff;
            }
            .resive-btn:first-child:hover{
                text-decoration:none;
                background-color:rgb(199, 255, 255) ;
                border: 3px solid #ccc;
                color: #ccc;
            }
            .resive-btn:last-child:hover{
                text-decoration:none;
                background-color:#555 ;
                border: 3px solid #ccc;
                color: #ccc;
            }
      
        }
  </style>
 
</haed>
<body>
<header>
<%@ include file="/WEB-INF/views/include/nav.jspf"%>
<!-- hero 삽입 -->
</header>
<main> 
        <form action="" enctype="multipart/form-data" method="post" id="">
            <div class="resive-container">
                    <div class="resive-wrap">
                    <div class="resive-select-box">
                        <span class="resive-span">게시판</span>
                        <select name="title-select" id="resive-class">
                            <option value="">게시판 선택</option>
                            <option value="">공지·알림</option>
                            <option value="">이벤트·진행중</option>
                            <option value="">이벤트·종료</option>
                            <option value="">보도자료</option>
                        </select>
                    </div>
                    <div class="resive-title-box">
                        <span class="resive-span">제목</span>
                        <input type="text" class="resive-title" name="title" data-pc-placeholder="게시글 제목을 입력해주세요."
                        data-mobile-placeholder="제목">
                    </div>
                    <div>
                        <textarea id="editor1" name="content" class="ckeditor"></textarea>
                        <script>
                            CKEDITOR.replace('editor1', {
                                customConfig: '/plugin/ckeditor/config.js',
                                width: '100%',
                                height: '500',
                                filebrowserImageUploadUrl: '/cke/imageUpload'
                            });
                        </script>
                    </div>
                </div>
                <div class="resive-btn-box">
                    <button type="submit" class="resive-btn">저장하기</button>
                    <button type="reset" class="resive-btn">취소하기</button>
                </div>
            </div>
        </form>
    </main><%@ include file="/WEB-INF/views/include/foot.jspf"%>
</body>
<!-- 추가 script 삽입 -->
</html>