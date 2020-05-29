	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<!-- main내용삽입 -->
	<main>
		<section class="product-table-section">
				<!-- <div class="product-table-item-title ">
					<div class="product-table-box">
							<div class="product-table-list">
								<h1>공지사항</h1>
							</div>
							<div class="product-table-list-bar-container">
								<div class="product-table-list-bar ">
									<a href="#" class="product-table-list-text on"> 전체 </a>
									<a href="#" class="product-table-list-text "> 공지 </a> 
									<a href="#" class="product-table-list-text"> 이벤트 </a> 
									<a href="#" class="product-table-list-text"> 보도자료 </a>
								</div>
						</div>
					</div>
				</div> -->
			<div class="product-table-container product-table-mt">
				<h1 class="align-center title">${bvo.boardName}</h1>
				<div class="product-table-items">
					<c:forEach items="${avoList}" var="avo">
						<div class="product-table-item">
							<a href="/article/detail?boardCode=${bvo.boardCode}&id=${avo.id}">
								<div class="product-table-img-box">
									<c:choose>
										<c:when test="${avo.fileName eq ''}">
											<img src="/images/common/no-img.png" alt="">
										</c:when>
										<c:otherwise>
											<img src="${avo.fileUrl}/${avo.fileName}" alt="">
										</c:otherwise>
									</c:choose>
								</div>
								<div class="product-table-text-box">
									<!-- <div>
										<span class=" product-table-list-l-green  product-table-list-l-space">공지</span>
										<span class=" product-table-list-l-blue  product-table-list-l-space">알림</span>
									</div> -->
									<h3 class="product-table-box-title">${avo.subject}</h3>
									<p class="product-table-sub-title">${avo.writer} ${avo.reg_date}</p>
								</div>
							</a>
						</div>
					</c:forEach>
				</div>
				<div class="txt-right"> 
					<button class="notice-list-btn-border pl10 pr10 pt5 pb5 bold mt20 mb20 " onclick="location.href='/article/setArticle?boardCode=${bvo.boardCode}'" >글쓰기</button>
				</div>
			</div>
			<div class="product-table-container " >
				<div class="product-table-page">
					<!--시작 페이지가 1보다 클때 생성-->
					<c:if test="${paging.startPage>1 }">
						<a href="/article?boardCode=${bvo.boardCode}&searchOpt=${searchOpt}&words=${words }&page=1" class="product-table-double-arrow-btn">
							<img src="/xkfqkfimages/d-l.svg" alt="첫페이지로">
						</a>
						<a href="/article?boardCode=${bvo.boardCode}&searchOpt=${searchOpt}&words=${words }&page=${paging.startPage-1}" 
							class="product-table-arrow-btn">
							<img src="/xkfqkfimages/l.svg" alt="이전페이지">
						</a>
					</c:if>
					<!--페이지 출력-->
					 <c:forEach begin="${paging.startPage}" end="${paging.endPage }" var="pageCnt">
							<a href="/article?boardCode=${bvo.boardCode}&searchOpt=${searchOpt}&words=${words }&page=${pageCnt}" class="product-table-page-btn <c:if test="${pageCnt==paging.page}">on</c:if> ">${pageCnt}</a>
						 
					 </c:forEach>
					 <!--마지막 페이지가 전체 페이지수 보다 작을 때만 출력-->
					 <c:if test="${paging.endPage < paging.pageCnt}">
							<a href="/article?boardCode=${bvo.boardCode}&searchOpt=${searchOpt}&words=${words }&page=${paging.endPage+1 }" class="product-table-arrow-btn">
								<img src="/xkfqkfimages/r.svg" alt="다음페이지로"> 
							</a>
							<a href="/article?boardCode=${bvo.boardCode}&searchOpt=${searchOpt}&words=${words }&page=${paging.pageCnt}" class="product-table-double-arrow-btn">
								<img src="/xkfqkfimages/d-r.svg" alt="마지막페이지로">
							</a>
					 </c:if>
				 </div>
				<form action="" method="post" name="" enctype="multipart/form-data">
					<div class="product-table-title-btn">
						<select name="title" id="title" class="product-table-title">
							<option value="">제목+내용</option>
							<option value="">제목</option>
							<option value="">내용</option>
						</select>
						<div class="product-table-btn-search">
							<input type="text"class="news-search-input"
							data-error="검색어를 입력" name="search-input" placeholder="검색">
							<button type="submit">검색</button>
						</div>
					</div>
				</form>
		</section>
		</div>
		</section>
	</main>
<script>
	$(document).ready(function(){
    makeCalendar();
    $("#startDate","#endDate").datepicker({
        dateFormat : 'yy-mm-dd'
    });
    $("#addSchedulerButton").click(function(){
        addScheduler();
    });
});
</script>