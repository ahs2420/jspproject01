<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<main>
		<section>
			<div class="notice-content-container">
				<div class="notice-content-title">
					<h2>${avo.subject}</h2>
					<br>
					<div class="notice-content-flex-box">
						<c:choose>
							<c:when test="${avo.uimg==null || avo.uimg eq ''}">
								<img src="/images/icon/file-upload-icon.png" alt="" class="notice-content-img icon-round">
							</c:when>
							<c:otherwise>
								<img src="${avo.uimg}" alt="" class="notice-content-img icon-round">
							</c:otherwise>
						</c:choose>
						<div>
							<p>${avo.writer}</p>
							<p>${avo.reg_date}</p>
						</div>
					</div>
				</div>
				<div>
					<div class="inner-contents">
						${avo.content}
					</div>
				</div>
				<div class="flex-box flex-j-space">
				
					<div class="txt-right mt30">
						<c:if test="${sessionScope.id eq avo.member_id}">
							<button class="notice-list-btn-border pl10 pr10 pt5 pb5 bold mr5" onclick="location.href='/article/modifyArticle?boardCode=${bvo.boardCode}&id=${avo.id}'" >수정하기</button>
							<button class="notice-list-btn-border pl10 pr10 pt5 pb5 bold " onclick="(confirm('해당 게시글을 삭제하시겠습니까?'))?location.href='/article/deleteItem?boardCode=${bvo.boardCode}&id=${avo.id}':false" >삭제하기</button>
						</c:if>
					</div>
					<div class="notice-content-box-flex ">
						<div class="heart-box flex-box flex-j-end w-100p mt10">
							<div>
								<button class="notice-content-sns-btn sns-share-btn"
									data-url="https://www.krahs123.co.kr/product.html"
									data-type="naver">
									<i class=" xi-naver"></i>
								</button>
							</div>
							<div class="notice-content-sns-flex">
								<a href="#">
									<div>
										<button class="notice-content-sns-btn sns-share-btn"
											data-url="https://www.krahs123.co.kr/product.html"
											data-type="facebook">
											<i class="fab fa-facebook-f"></i>
										</button>
									</div>
								</a> 
								<a href="#">
									<div>
										<button class="notice-content-sns-btn sns-share-btn"
											data-url="https://www.krahs123.co.kr/product.html"
											data-type="twitter" data-desc="[마지막앵콜] 다리에도 베개가 필요해요">
											<i class="fab fa-twitter"></i>
										</button>
									</div>
								</a>
							</div>
						</div>
					</div>
					
				</div>
		</section><section class="p0"><div class="notice-content-gray">
					<div class="notice-content-container">
						<h3>${bvo.boardName}의 다른 게시글</h3>
						<c:if test="${avoNext != null}">
							<a href="#">
								<div class="notice-content-box-flex notice-content-border-bottom ">
									<div class="notice-content-box-text">
										<!-- <div class="notice-content-box-text-l">
											<span class="notice-content-l-green l-space">공지</span>
										</div> -->
										<h4>${avoNext.subject}</h4>
										<p>${avoNext.writer} ${avoNext.reg_date}</p>
									</div>
									<div class="notice-content-box-img">
										<div class="notice-list-box-img-img" style="background-image: url(${avoNext.fileUrl}/${avoNext.fileName})"></div>
									</div>
								</div>
							</a> 
						</c:if>
						<c:if test="${avoPrev != null}">
							<a href="#">
								<div class="notice-content-box-flex notice-content-border-bottom">
									<div class="notice-content-box-text">
										<!-- <div class="notice-content-box-text-l">
											<span class="notice-content-l-green l-space">공지</span>
										</div> -->
										<h4>${avoPrev.subject}</h4>
										<p>${avoPrev.writer} ${avoPrev.reg_date}</p>
									</div>
									<div class="notice-content-box-img">
										<div class="notice-list-box-img-img" style="background-image: url(${avoPrev.fileUrl}/${avoPrev.fileName})"></div>
									</div>
								</div>
							</a>
						</c:if>
						<div class="notice-content-back">
							<button type="button" onclick="location.href='/article?boardCode=${bvo.boardCode}'" class="notice-content-back-btn">목록으로 돌아가기</button>
						</div>
					</div>
				</div></section>
	</main>
	<!-- 메인 내용 -->
