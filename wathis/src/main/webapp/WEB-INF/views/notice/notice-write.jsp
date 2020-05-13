<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/include/head.jspf"%>
<!-- 추가 css,js -->
<script src="/plugin/ckeditor/ckeditor.js"></script>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}
.resive-main {
	background-color: #f9f9f9;
}

.resive-container {
	max-width: 1200px;
	width: 100%;
	margin: 0 auto;
	background-color: #fff;
	min-height: 100vh;
	height: auto;
	padding: 50px 5%;
	border: 0;
}

.resive-wrap {
	border: 1px solid #ccc;
	font-weight: 700;
	border: 0;
}

.resive-title {
	width: 100%;
	height: 50px;
	margin-top: 30px;
	margin-bottom: 10px;
	border: 0;
	border-bottom: 1px solid #00b2b2;
	font-size: 25px;
}
.resive-btn-box {
	text-align: center;
	margin: 0 auto;
}

.resive-btn {
	margin-top: 20px;
	width: 130px;
	max-width: 130px;
	height: 40px;
	border: 1px solid #ccc;
	background-color: #fff;
	cursor: pointer;
	outline: none;
}

.resive-btn:hover {
	text-decoration: underline;
	font-weight: 700;
	background-color: #f9f9f9;
	color: #00b2b2;
}

.resive-btn:first-child {
	margin-right: 5px;
}

.resive-title-mobile {
	display: none;
}

.resive-class {
	width: 100%;
	height: 50px;
	font-size: 20px;
	font-weight: 700;
	text-align: center;
	border:0;
	border-bottom: 1px solid #00b2b2;
		outline: 0;
}

.ckeditor {
	outline: none;
	font-size: 20px;
	font-weight: 700;
}
.cke_textarea_inline{
	border:1px solid #dfdfdf;
	padding : 50px 30px;
	min-height: 60vh;
}

.resive-select-box{
position:relative;
}
.resive-class {
	appearance: none;
  -webkit-appearance : none ;
}
.resive-class::-ms-expand {
  display : none ;
}
.resive-select-box select+label {
    position: absolute;
    right: 11px;
    top: 50%;
    z-index: 1;
    transform: translateY(-50%);
    border-top: 10px solid #6b6b6b;
    border-left: 8px solid transparent;
    border-right: 8px solid transparent;
    display: block;
}
.img-file{
	font-size: 55px;
	color: #ccc;
}
.img-file:hover,.img-file.on{
	color: var(--var-main-color);
	transition: 0.3s;
}
#preview{
	width: 160px;
    height: 120px;
    object-fit: cover;
    object-position: center;
}
@media ( max-width : 1200px) {
	.resive-container {
		width: 100%;
		padding: 0px 20px;
	}
.resive-class{
	margin-top:10px;
}
}

@media ( max-width : 1080px) {
}

@media ( max-width : 768px) {

}

@media ( max-width : 480px) {
	.resive-container {
		width: 100%;
	}
	.resive-class {
		width: 80%;
		height: 30px;
		padding-left: 10px;
		outline: none;
	}
	.resive-span {
		display: none;
	}
	input.resive-title {
		width: 100%;
		height: 30px;
		
		border-top: 0;
		padding: 0 10px;
	}
	.resive-btn-box {
		width: 100%;
	}
	.resive-btn {
		flex-basis: 49%;
		border: none;
		font-weight: 700;
	}
	.resive-btn:first-child {
		background-color: #00b2b2;
		color: #fff;
	}
	.resive-btn:last-child {
		background-color: #888;
		color: #fff;
	}
	.resive-btn:first-child:hover {
		text-decoration: none;
		background-color: rgb(199, 255, 255);
		border: 3px solid #ccc;
		color: #ccc;
	}
	.resive-btn:last-child:hover {
		text-decoration: none;
		background-color: #555;
		border: 3px solid #ccc;
		color: #ccc;
	}
}

</style>
</haed>
<body>

	<header class=" no-hero">
		<%@ include file="/WEB-INF/views/include/nav.jspf"%>
		<!-- hero 삽입 -->
	</header>
	<!-- main내용삽입 -->
	<main class="resive-main">
		<form action="" enctype="multipart/form-data" method="post" id="uploadForm">
			<div class="resive-container">
				<div class="margin-top"></div>
				<div class="resive-wrap">
					<div class="resive-select-box">
						<select name="title-select" class="resive-class write-chkItem " data-error="게시판 선택" id="">
							<option value="">게시판 선택</option>
							<option value="공지·알림">공지·알림</option>
							<option value="이벤트·진행중">이벤트·진행중</option>
							<option value="이벤트·종료">이벤트·종료</option>
							<option value="보도자료">보도자료</option>
						</select>
						<label class="resive-label" form=""></label>
					</div>
					<div class="resive-title-box">
						<input type="text" class="resive-title write-chkItem " data-error="제목을 입력" name="title"
							data-pc-placeholder="제목을 입력해주세요."
							data-mobile-placeholder="제목">
					</div>
					<div class="resive-border-box mt50">
						<textarea id="editor1" name="content" class="ckeditor"></textarea>
						<script>
							CKEDITOR.inline('editor1', {
								customConfig : '/plugin/ckeditor/config.js',
								width : '100%',
								height : '500',
								filebrowserImageUploadUrl : '/cke/imageUpload'
							});
						</script>
						<div class=" mt30">
							<label for="uploadFile" title="내 컴퓨터에서 첨부하기" class="img-file">
								<i class="fas fa-cloud-upload-alt"></i>
								<span class="small-content black v-align-m">파일첨부하기</span>
							</label>
						</div>
						<input id="uploadFile" class="dis-none" type="file" name="files" data-cke-target="editor1" data-preview=".preview-box" />
						<div class="preview-box mt20" style="display: none;">
							<img id="preview" class=" gray-box" src="" data-cke-target="editor1" />
						</div>
					</div>
				</div>
				<div class="resive-btn-box mt30">
					<button type="submit" class="resive-btn">저장하기</button>
					<button type="reset" class="resive-btn">취소하기</button>
				</div>
			</div>
		</form>
	</main>

	<%@ include file="/WEB-INF/views/include/foot.jspf"%>
</body>
<!-- 추가 script 삽입 -->
<script>
$(function(){
    placeholderChanger($(".resive-title"));
    $(window).resize(function(){
        $(".resive-title").placeholderChanger();
    });
});
$.fn.placeholderChanger=function(){
    var windowWidth=$("body").width();
    if(windowWidth<=480){
        $(this).attr("placeholder",$(this).data("mobile-placeholder"));
    }else{
        $(this).attr("placeholder",$(this).data("pc-placeholder"));
    }
}
function placeholderChanger(target){
    var windowWidth=$("body").width();
    if(windowWidth<=480){
        target.attr("placeholder",target.data("mobile-placeholder"));
    }else{
        target.attr("placeholder",target.data("pc-placeholder"));
    }
}
$(function() {
	$("form").submit(function() {
		var bReturn = true;
		$(".write-chkItem").each(function(){
			if($.trim($(this).val())==""){
				alert($(this).data("error")+"해주세요");
				$(this).focus();
				bReturn=false;
				return false;
			}
		});
		try{
			if(bReturn){
				var str = CKEDITOR.instances.editor1;
				if($.trim(str.getData())  == "" ) {
					alert("게시물 내용을 입력하세요.");
					str.focus();
					return false;
				}
			}
		}catch{

		}
		return bReturn;
	});
});
</script><script>
	$(function(){
 
    	$('#uploadFile').change(function(){
			if(checkFile(this)){
				if(checkFileSize(this,3)){
					imgPreview(this);
					$(".img-file").addClass("on");
					return true;
				}
			}
			$(".img-file").removeClass("on");
			imgPreview2(this);
	    });
		
	});
	 
	function uploadFile(target){
	    
	    var form = $('#uploadForm')[0];
		var formData = new FormData(form);
		var str;
		var ajaxReturn;
		$.ajax({
	        url : '/cke/imgUpload',
	        type : 'POST',
	        data : formData,
	        dataType:"JSON",
	        contentType : false,
			processData : false,
			success:function(data){
				var imgUrl=data.uploadDIR+data.fileName;
				str = "<img src='"+imgUrl+"'/>";
				ckeAddItem(target,str);
				imgPreview2("#preview",imgUrl);
			}
	    });
	}
	function ckeAddItem(target,str){
			var org=CKEDITOR.instances[target].getData();//cke에 입력한 데이터를 가져옴
			CKEDITOR.instances[target].setData(org+str);//cke에 입력한 데이터에 내용을 추가함(org+를 빼면 내용전부가 바뀜)
			//CKEDITOR.instances[target].setData(org+"<img src='"+data.uploadDIR+data.fileName+"'/>");//cke에 입력한 데이터에 내용을 추가함(org+를 빼면 내용전부가 바뀜)

	}
	function checkFile(obj) {
		var filename = $(obj).val().substring($(obj).val().lastIndexOf('\\')+1);//원래 파일 이름
		var tg_name=$(obj).data("target");// 원래 파일이름이 보일곳(input)
		var fileType=$(obj).data("file-type");//파일 확장자 비교 타입
		var ext = filename.substring(filename.lastIndexOf('.')+1).toLowerCase();
		var extChk=(fileType=="img")?["jpg","jpeg","png","gif"]:["jpg","png","gif","xls","doc","pptx","xlsx","docx","zip","txt","pdf"];
		
		if (extChk.indexOf(ext) >= 0 ) {
			$(tg_name).val( filename );
		} else {
			alert("허용된 확장자가 아닙니다. 다시 선택해 주세요.\n(허용된 확장자 파일 : "+extChk.join(" , ")+")");
			$(obj).val("");
			return false;
		}
		return true;
	}
	//파일 용량 체크
	function checkFileSize(obj,maxSizeMB) {
		var maxSize=maxSizeMB*1024*1024;//파일 확장자 비교 타입

		var browser=navigator.appName;
		var fileSize=0;
		// 익스플로러일 경우
		if (browser=="Microsoft Internet Explorer")
		{
			var oas = new ActiveXObject("Scripting.FileSystemObject");
			fileSize = oas.getFile( obj.value ).size;
		}
		// 익스플로러가 아닐경우
		else
		{
			fileSize = obj.files[0].size;
		}
		if(fileSize > maxSize){
			alert("첨부파일 사이즈는 "+maxSizeMB+"MB 이내로 등록 가능합니다. ");
			$(obj).val("");
			return false;
		}
		return true;
	}
	//이미지 미리보기
	function imgPreview(obj) {
		var target = $(obj).data("preview");
		var preview = $(obj).data("preview")+" img";
		if (obj.files && obj.files[0]) {
		var reader = new FileReader();
		
		reader.onload = function (e) {
			$(preview).attr('src', e.target.result);  
		}
		
		reader.readAsDataURL(obj.files[0]);
		}
		$(target).fadeIn(300);
	}
	function imgPreview2(obj) {
		var target = $(obj).data("preview");
		$(target).fadeOut(300);
	}

</script>
</html>