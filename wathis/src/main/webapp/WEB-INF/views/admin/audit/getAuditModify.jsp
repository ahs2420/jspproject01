<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="main-board br-3 bg-color-8 margin-t20 padding-a-20">
    <div class="title-wrap">
        <span class="font-16 bold">
            '${pvo.title}' 프로젝트 심사
        </span>
    </div>
    <div class="search-wrap margin-t10">
        <span class="font-16 bold">
        </span>
        <span class="">
            <button type="button" id="" class="btn-80 bold bo-blue" onclick="javascript:window.open('/product/product?id=${pvo.id}')">미리보기</button>
            <button type="button" id="" class="btn-80 bold bo-gray" onclick="javascript:location.href='/audit'">목록</button>
        </span>
    </div>
    <div id="board-list" class="board-list margin-t10">
        <form action="/audit/getAuditModify" method="POST" class="chkForm">
            <input type="hidden" name="id" value="${avo.id}">
            <input type="hidden" name="member_id" value="${mvo.id}">
            <input type="hidden" name="mailTo" value="${mvo.uemail}">
            <input type="hidden" name="org_status" value="${avo.status}">
            <input type="hidden" name="proName" value="${pvo.title}">
            <div class="font-16 margin-b10">
                <h1>
                   메이커 정보
                </h1>
            </div>
           <table>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-10 w-15 f6 align">메이커 이름</td>
                <td class="w-35 padding-lr-5">
                    ${mavo.marker_name}
                </td>
                <td class="bg-color-10 w-15 f6 align">메이커 이메일</td>
                <td class="w-35 padding-lr-5">
                    ${mavo.marker_email}
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-10 w-15 f6 align">메이커 썸네일</td>
                <td class="w-35 padding-lr-5">
                    <c:set var="ext" value="${fn:split(mavo.marker_img,'.')}" />
                    <a href="${mavo.marker_img}" target="_blank"  download="${mavo.marker_name}_썸네일.${ext[1]}">
                        <img class="preview-img" src="${mavo.marker_img}">
                    </a>
                </td>
                <td class="bg-color-10 w-15 f6 align">메이커 전화번호</td>
                <td class="w-35 padding-lr-5">
                    ${mavo.marker_phone}
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-10 w-15 f6 align">메이커 카카오 ID/카카오 URL</td>
                <td class="w-35  padding-a-10">
                    <p>id: ${mavo.marker_kakao_id}</p>
                    <p>URL : <a href="${mavo.marker_kakao_url}" target="_blank">${mavo.marker_kakao_url}</a></p>
                </td>
                <td class="bg-color-10 w-15 f6 align">메이커 홈페이지 주소</td>
                <td class="w-35  padding-a-10">
                    <c:forTokens items="${mavo.marker_home_page_url}" delims="|" var="url">
                       <p><a href="${url}" target="_blank">${url}</a></p> 
                    </c:forTokens>
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-10 w-15 f6 align">SNS URL</td>
                <td class="w-35  padding-a-10">
                    <p>facebook: <a href="${mavo.marker_facebook_url}" target="_blank">${mavo.marker_facebook_url}</a></p>
                    <p>twiter: <a href="${mavo.marker_twiter_url}" target="_blank">${mavo.marker_twiter_url}</a></p>
                    <p>instagram: <a href="${mavo.marker_instagram_url}" target="_blank">${mavo.marker_instagram_url}</a></p>
                </td>
                <td class="bg-color-10 w-15 f6 align">메이커 사업 형태</td>
                <td class="w-35 padding-lr-5">
                    ${makerType[mavo.business_type]}
                    
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-10 w-15 f6 align">통장사본</td>
                <td class="w-85  padding-a-10" colspan="3">
                    <c:set var="ext" value="${fn:split(mavo.bankbook_img,'.')}" />
                    <a href="${mavo.bankbook_img}" download="${mavo.marker_name}_통장사본.${ext[1]}" target="_blank">${mavo.marker_name}_통장사본</a>
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
           </table>
           <div class="font-16 margin-b10 margin-t30">
               <h1>
                심사정보 
               </h1>
           </div>
            <table>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-10 w-15 f6 align">현제 유통여부*</td>
                <td class="w-85 padding-lr-5" colspan="3">
                    <c:choose>
                        <c:when test="${avo.circulation_chk eq '1'}">
                            유통중
                        </c:when>
                        <c:otherwise>
                            신규상품
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            <c:if test="${avo.circulation_chk eq '1'}">
                    <tr  class="tr-45" >
                        <td class="bg-color-10 w-15 f6 align">기존 제품 개선점</td>
                        <td class="w-85 padding-a-10" colspan="3">
                            ${avo.circulation_content}
                        </td>
                    </tr>
                    <tr>
                        <td class="tbl-line" colspan="4"></td>
                    </tr>
            </c:if>
            <tr class="tr-45">
                <td class="bg-color-10 w-15 f6 align">펀딩 계획*</td>
                <td class="w-85 padding-a-10" colspan="3">
                    ${avo.preparations_plan}
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-10 w-15 f6 align">리워드 전달 계획*</td>
                <td class="w-85 padding-a-10" colspan="3">
                    ${avo.relay_plan}
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-10 w-15 f6 align">리워드 종류*</td>
                <td class="w-85 padding-a-10" colspan="3">
                    <c:forTokens items="주요 카테고리별 작성 예시|의류|구두/신발|가방|패션잡화(모자/벨트.액세서리)|침구류/커튼|가구(침대/소파/싱크대/DTY제품)|주방용품|화장품|귀금속/보석/시계류|식품(농・축・수산물)|건강 기능 식품|가공식품|영유아 용품|서적|디지털 콘텐츠(음원, 게임, 인터넷강의 등)" delims="|" var="item" varStatus="vs">
                        <c:if test="${avo.reword_type eq vs.index }">${item}</c:if>
                    </c:forTokens>
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-10 w-15 f6 align">리워드 정보 제공 고시*</td>
                <td class="w-85 padding-a-10" colspan="3">
                    ${avo.reword_info}
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-10 w-15 f6 align">인증서류 제공 고시*</td>
                <td class="w-85 padding-a-10" colspan="3">
                    <a href="${avo.required_documents_url}/${avo.required_documents_Name}" download="${avo.required_documents_orgName}">${avo.required_documents_orgName}</a>
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
            <tr class="tr-45">
                <td class="bg-color-10 w-15 f6 align">심사 상태</td>
                <td class="w-85 padding-a-10" colspan="3" >
                    <select name="status" class="sel-200" <c:if test="${avo.status eq '3'}">disabled</c:if>>
                        <c:forEach items="${auditStatus}" var="item" varStatus="vs">
                            <option value="${vs.index}" <c:if test="${avo.status eq vs.index}">selected</c:if>>${item}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="tbl-line" colspan="4"></td>
            </tr>
           </table>
           <div class="btn-grp margin-t20">
               <div class="btn-left float-l">
                   <button type="button" onclick="javascript:location.href='/audit';" class="btn-50 bold bo-blue">목록</button>
               </div>
               <div class="btn-left float-r">
                    <c:if test="${avo.status ne '3'}">
                        <button type="submit" class="btn-80 bold bo-blue">심사 수정</button>
                        <button type="reset" onclick="javascript:location.href='/audit';"  class= "btn-50 bold bo-pink">취소</button>
                    </c:if>
               </div>
               <div class="clearfix"></div>
           </div>

        </form>

    </div>