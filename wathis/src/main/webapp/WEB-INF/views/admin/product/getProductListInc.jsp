<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

 <div class="main-board br-3 bg-color-8 margin-t20 padding-a-20">
     <div class="title-wrap">
         <span class="font-16 bold">
             3. 상품 관리 페이지
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
             <span class="orange">${count }</span> 개 입니다.<br />
         </span>
     </div>
     <div class="search-wrap margin-t10">
         <span class="font-16 bold">
             <button type="button" id="selectDelete-btn" data-target=".checkDel" data-url="/product/setProductSelDelete" data-name="게시판를" class="btn-70 bold bo-pink">선택삭제</button>
             <button type="button" id="" class="btn-80 bold bo-gray" onclick="javascript:location.href='/cate/getCategory'">카테고리등록</button>
             <button type="button" id="" class="btn-80 bold bo-pink" onclick="javascript:location.href='/product/setProduct'">상품 등록</button>
         </span>
         <span class="">
             <form action="/product" method="GET">
                 <select name="searchOpt" class="sel-120">
                     <option value="all" <c:if test="${searchOpt eq 'all' }">selected</c:if>>전체</option>
                     <option value="product_name" <c:if test="${searchOpt eq 'product_name' }">selected</c:if>>상품 이름</option>
                     <option value="product_seller" <c:if test="${searchOpt eq 'product_seller' }">selected</c:if>>상품 판매자</option>
                 </select>
                 <input type="text" name="words" id="words" class="input-150" value="${words }" />
                 <button type="submit" id="search-btn" class="btn-50 bold bo-blue">검색</button>
                 <button type="button" id="" class="btn-80 bold bo-gray" onclick="javascript:location.href='/product'">전체보기</button>
             </form>
         </span>
     </div>
     <div id="board-list" class="board-list margin-t10">
         <table>
             <tr class="tr-50 f6 align bg-color-3 font-14">
                 <td class="td-5"><input type="checkbox" class="checkAll" id="checkAll" data-target=".checkDel" /></td>
                 <td class="td-5">NO.</td>
                 <td class="td-10">소분류.</td>
                 <td class="td-40">상품이름.</td>
                 <td class="td-5">상품판매자.</td>
                 <td class="td-15">판매가/원가.</td>
                 <td class="td-10">재고/총수량.</td>
                 <td class="td-10">Etc.</td>
             </tr>
             <c:forEach items="${pvoList }" var="pvo">
	             <tr class="tr-50 align">
	                 <td>
	                     <input type="checkbox" class="checkDel" value="${pvo.pid }" />
	                 </td>
	                 <td>${pvo.pid }</td>
	                 <td class="bold eng font-14">
                         ${pvo.minorName }<br/>
                         [${pvo.product_display }]
                    </td>
                     <td class="lalign padding-lr-5">
                        <c:if test="${pvo.product_status eq 'new'}">
                            <span class="status bg-color-9 f6">${pvo.product_status }</span> 
                        </c:if>
                        <c:if test="${pvo.product_status eq 'sale'}">
                            <span class="status bg-color-5 f6">${pvo.product_status }</span> 
                        </c:if>
                         <a href="/product/getProductView?pid=${pvo.pid }"><span class="noto">${pvo.product_name }</span></a>
                    </td>
	                 <td><span class="noto">${pvo.product_seller }</span></td>
	                 <td class="bold font-12 ralign">
	                 	<span>
                            판매가: <fmt:formatNumber value="${pvo.product_price*(1-pvo.product_dc/100) }" pattern="#,##0"></fmt:formatNumber>원/<br />
                            원가: <fmt:formatNumber value="${pvo.product_price }" pattern="#,##0"></fmt:formatNumber>원
                        </span>
                    </td>
                    <td class="bold font-12 ralign">
                        <span>
                            재고량 : <fmt:formatNumber value="${pvo.product_stock }" pattern="#,##0"></fmt:formatNumber>개/<br />
                            총 수량 : <fmt:formatNumber value="${pvo.product_amount }" pattern="#,##0"></fmt:formatNumber>개
                        </span>
                    </td>
	                 <td>
	                     <button type="button" onclick="javascript:location.href='/product/getproductModify?pid=${pvo.pid}'"  class="btn-50 bold bo-blue">수정</button>
	                     <button type="button" onclick="deleteItem(this)" data-url="/product/setProductDeleteAjax" data-id="${pvo.pid }" data-error="상품을"  class="btn-50 bold bo-pink">삭제</button>
	
	                 </td>
	             </tr>
	             <tr>
	                 <td class="tr-border bg-color-7" colspan="8"></td>
	             </tr>
             
             </c:forEach>
             
             <c:if test="${boardCount == 0}">
                <tr class="tr-40">
                    <td class="align bold font-16" colspan="8">검색결과가 없습니다.</td>
                </tr>
                <tr>
                    <td class="tr-border bg-color-7" colspan="8"></td>
                </tr>
            </c:if>
         </table>
         
         <div class="page-grp margin-t10 align">
            <!--시작 페이지가 1보다 클때 생성-->
            <c:if test="${paging.startPage>1 }">
	            <span class="">
	                <a href="/product?template=board&mypage=list&searchOpt=${searchOpt }&words=${words }&page=1" class="page-number product-page-number"><<</a>
	            </span>
	            <span class="">
	                <a href="/product?template=board&mypage=list&searchOpt=${searchOpt }&words=${words }&page=${paging.startPage-1}" 
	                class="page-number product-page-number"><</a>
	            </span>
            </c:if>
            <!--페이지 출력-->
         	<c:forEach begin="${paging.startPage}" end="${paging.endPage }" var="pageCnt">
	             <span class="">
                     <a href="/product?template=board&mypage=list&searchOpt=${searchOpt }&words=${words }&page=${pageCnt}" class="page-number product-page-number <c:if test="${pageCnt==paging.page}">on</c:if> ">${pageCnt}</a>
	             </span>
         	</c:forEach>
             <!--마지막 페이지가 전체 페이지수 보다 작을 때만 출력-->
         	<c:if test="${paging.endPage < paging.pageCnt}">
	             <span class="">
	                 <a href="/product?template=board&mypage=list&searchOpt=${searchOpt }&words=${words }&page=${paging.endPage+1 }" class="page-number product-page-number">></a>
	             </span>
	             <span class="">
	                 <a href="/product?template=board&mypage=list&searchOpt=${searchOpt }&words=${words }&page=${paging.pageCnt}" class="page-number product-page-number">>></a>
	             </span>
             </c:if>
         </div>
     </div>
 </div>