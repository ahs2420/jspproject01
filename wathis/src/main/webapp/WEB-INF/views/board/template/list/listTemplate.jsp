<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<!-- 메인 내용 -->
	<main>
		<section>
			<!-- <div >
				<div class="notice-list-box">
					<div class="notice-list">
						<h1>${bvo.boardName}</h1>
					</div>
					<div class="notice-list-bar-container">
						<!-- <div class="notice-list-bar ">
							<a href="#" class="notice-list-text on"> 전체 </a>
							<a href="#" class="notice-list-text "> 공지 </a> 
							<a href="#" class="notice-list-text"> 이벤트 </a> 
							<a href="#" class="notice-list-text"> 보도자료 </a>
						</div>
					</div> 
				</div>
			</div> -->
			<div class="notice-list-container notice-list-items">
				<h1 class="align-center title">${bvo.boardName}</h1>
				<c:forEach items="${avoList}" var="avo">
					<a href="/article/detail?boardCode=${bvo.boardCode}&id=${avo.id}">
						<div class="notice-list-box-flex">
							<div class="notice-list-box-text">
								<!-- <div class="notice-list-box-text-l">
									<span class="notice-list-l-green notice-list-l-space">공지</span>
									<span>ㆍ</span> <span
										class="notice-list-l-blue notice-list-l-space">알림</span>
								</div> -->
								<h4>${avo.subject}</h4>
								<p>${avo.writer} ${avo.reg_date}</p>
							</div>
							<div class="notice-list-box-img">
									<div class="notice-list-box-img-img" style="background-image: url(${avo.fileUrl}/${avo.fileName})"></div>
							</div>
						</div>
					</a> 
				</c:forEach>
				
				<div class="txt-right"> 
					<button class="notice-list-btn-border pl10 pr10 pt5 pb5 bold mt20 mb20 " onclick="location.href='/article/setArticle?boardCode=${bvo.boardCode}'" >글쓰기</button>
				</div>
				<div class="notice-list-page">
					<!--시작 페이지가 1보다 클때 생성-->
					<c:if test="${paging.startPage>1 }">
						<a href="/article?boardCode=${bvo.boardCode}&searchOpt=${searchOpt}&words=${words }&page=1" class="notice-list-double-arrow-btn">
							<img src="/xkfqkfimages/d-l.svg" alt="첫페이지로">
						</a>
						<a href="/article?boardCode=${bvo.boardCode}&searchOpt=${searchOpt}&words=${words }&page=${paging.startPage-1}" 
							class="notice-list-arrow-btn">
							<img src="/xkfqkfimages/l.svg" alt="이전페이지">
						</a>
					</c:if>
					<!--페이지 출력-->
					 <c:forEach begin="${paging.startPage}" end="${paging.endPage }" var="pageCnt">
							<a href="/article?boardCode=${bvo.boardCode}&searchOpt=${searchOpt}&words=${words }&page=${pageCnt}" class="notice-list-page-btn <c:if test="${pageCnt==paging.page}">on</c:if> ">${pageCnt}</a>
						 
					 </c:forEach>
					 <!--마지막 페이지가 전체 페이지수 보다 작을 때만 출력-->
					 <c:if test="${paging.endPage < paging.pageCnt}">
							<a href="/article?boardCode=${bvo.boardCode}&searchOpt=${searchOpt}&words=${words }&page=${paging.endPage+1 }" class="notice-list-arrow-btn">
								<img src="/xkfqkfimages/r.svg" alt="다음페이지로"> 
							</a>
							<a href="/article?boardCode=${bvo.boardCode}&searchOpt=${searchOpt}&words=${words }&page=${paging.pageCnt}" class="notice-list-double-arrow-btn">
								<img src="/xkfqkfimages/d-r.svg" alt="마지막페이지로">
							</a>
					 </c:if>
				 </div>
				<form action="/article" method="post" name="" enctype="multipart/form-data">
					<div class="notice-list-title-btn">
						<div class="notice-list-select-box">
							<select name="searchOpt" id="title" class="notice-list-title h-100p">
								<option value="all" <c:if test="${searchOpt eq 'all' }">selected</c:if>>제목+내용</option>
								<option value="subject" <c:if test="${searchOpt eq 'subject' }">selected</c:if>>제목</option>
								<option value="content" <c:if test="${searchOpt eq 'content' }">selected</c:if>>내용</option>
							</select>
						</div>
						<div class="notice-list-btn-search">
							<input type="text" class="notice-list-search-input"
							data-error="검색어를 입력" name="words" placeholder="검색" value="${words }">
							<button type="submit">검색</button>
						</div>
					</div>
				</form>
			</div>
		</section>
	</main>