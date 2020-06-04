<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:forEach begin="0" end="5" var="i">
    <div class="reward-item">
        <a href="/product/product">
            <div class="reward-img-box">
                <img src="/xkfqkfimages/optimize.jpg" alt="">
            </div>
            <div class="reward-text-box">
                <h3 class="reward-box-title text-max-line line2 line-fix">[2.5억]꾸미지 않아도 멋있다! 누구나입는 편하고 멋진한복[단청후드]</h3>
                <p class="reward-sub-title">패션.잡화 | 주식회사 하플리</p>
                <div class="progress-bar mb10">
                    <!--상품 펀딩 진척도(최대100%)-->
                    <span class="percent" style="width: 50%;"></span>
                </div>
                <div class="reward-per">
                    <div>
                        <span>7641%</span>
                        <span class="reward-mobile-display-none">76,411,044원</span>
                    </div>
                    <span>12일 남음</span>
                </div>
            </div>
        </a>
    </div>
</c:forEach>