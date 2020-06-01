<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="main-board br-3 bg-color-8 margin-t20 padding-a-20">
    <div class="title-wrap">
        <span class="font-16 bold">
            3. 카테고리 등록 페이지
        </span>
        <span class="">
           <c:choose>
               <c:when test="${words eq ''}">
                   전체 상품은 
               </c:when>
               <c:otherwise>
                   검색된 상품은 
               </c:otherwise>
           </c:choose>
            <span class="orange">${boardCount }</span> 개 입니다.<br />
        </span>
    </div>
    <div class="search-wrap margin-t10">
        <span class="font-16 bold">
            <button type="button" id="selectDelete-btn" data-target=".checkDel" data-url="/product/deleteSelproduct" data-name="게시판를" class="btn-70 bold bo-pink">선택삭제</button>
            <button type="button" id="" class="btn-80 bold bo-gray" onclick="javascript:location.href='/product'">상품목록보기</button>
            <button type="button" id="" class="btn-80 bold bo-pink" onclick="javascript:location.href='/product/setProduct'">상품 등록</button>
        </span>
        <span class="">
            <form action="/product" method="GET">
                <select name="searchOpt" class="sel-120">
                    <option value="all" <c:if test="${searchOpt eq 'all' }">selected</c:if>>전체</option>
                    <option value="productName" <c:if test="${searchOpt eq 'productName' }">selected</c:if>>상품 이름</option>
                    <option value="productSeller" <c:if test="${searchOpt eq 'productSeller' }">selected</c:if>>상품 판매자</option>
                </select>
                <input type="text" name="words" id="words" class="input-150" value="${words }" />
                <button type="submit" id="search-btn" class="btn-50 bold bo-blue">검색</button>
                <button type="button" id="" class="btn-80 bold bo-gray" onclick="javascript:location.href='/product'">전체보기</button>
            </form>
        </span>
    </div>
     <div id="board-view" class="board-view margin-t30">
         
         <!-- <div class="font-16 margin-b10">
            <h1>
                <i class="fas fa-male"></i>
                게시판 설정 등록하기
            </h1>
        </div> -->
         <table>
            <tr>
                <td class="tbl-line" colspan="2"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-3 w-15 f6 align" rowspan="2">상품 카테고리 등록</td>
                <td class="w-85 padding-lr-5">
                    <form class="majorCateForm">
                        <input type="text" name="title" class="input-200 padding-lr-5 chkitem" data-error="상품 카테고리 이름을" placeholder="예)카테고리 이름">
                        <input type="file" name="files" class="padding-lr-5 img-files chkitem" data-error="카테고리 이미지를" data-preview=".preview-img" data-file-type="img" data-target=".img_name">
                        <button type="button" data-target=".majorCateForm" class="btn-50 bo-gray bold majorCateInput">저장</button>
                        <div>
                            <button type="button">
                                <img class="preview-img dis-block" src="">
                            </button>
                            <span class="img_name"></span>
                        </div>
                    </form>
                </td>
            </tr>
            <tr class="tr-45">
                <td class="w-85 padding-lr-5">
                    <div class="majorCateArea">
                    </div>
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="2"></td>
            </tr>
        </table>
     </div>
 </div>