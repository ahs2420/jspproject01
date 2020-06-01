<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <div class="main-member br-3 bg-color-8 margin-t20 padding-a-20">
     <div class="title-wrap">
         <span class="font-16 bold noto">
             1. 회원 상세 페이지
         </span>
         <span class="noto font font-16">
                <c:choose>
                    <c:when test="${words eq ''}">
                        전체 가입된 회원은 
                    </c:when>
                    <c:otherwise>
                        검색된 회원은 
                    </c:otherwise>
                </c:choose>
                 <span class="orange">${count }</span> 명 입니다.<br />
         </span>
     </div>
     <div class="search-wrap margin-t10">
         <span class="font-16 bold">
             <button type="button" id="selectDelete-btn" data-target=".checkDel" class="btn-70 bold bo-pink">선택삭제</button>
         </span>
         <span class="">
             <form action="/users" method="GET">
                 <select name="searchOpt" class="sel-120">
                     <option value="all" <c:if test="${searchOpt eq 'all' }">selected</c:if>>전체</option>
                     <option value="userID" <c:if test="${searchOpt eq 'userID' }">selected</c:if>>아이디</option>
                     <option value="userName" <c:if test="${searchOpt eq 'userName' }">selected</c:if>>이름</option>
                 </select>
                 <input type="text" name="words" id="words" class="input-150" value="${words }" />
                 <button type="submit" id="search-btn" class="btn-50 bold bo-blue">검색</button>
                 <button type="button" id="" class="btn-80 bold bo-gray" onclick="javascript:location.href='/users'">목록보기</button>
             </form>
         </span>
     </div>
     <div id="member-view" class="member-view margin-t30">
         <div class="font-16 margin-b10">
             <h1>
                <i class="fas fa-male"></i>
                사용자 상세보기
             </h1>
         </div>
         <table>
             <tr>
                 <td class="tbl-line" colspan="4"></td>
             </tr>
             <tr class="tr-45">
                 <td class="bg-color-5 w-15 f6 align">사용자 아이디</td>
                 <td class="w-35 padding-lr-5">${uvo.userID}</td>
                 <td class="bg-color-5 w-15 f6 align">사용자 비밀번호</td>
                 <td class="w-35 padding-lr-5">${uvo.passwd}</td>
             </tr>
             <tr>
                 <td class="tbl-line" colspan="4"></td>
             </tr>
             <tr class="tr-45">
                 <td class="bg-color-5 w-15 f6 align">사용자 이름</td>
                 <td class="w-35 padding-lr-5">${uvo.userName}</td>
                 <td class="bg-color-5 w-15 f6 align">사용자 권한</td>
                 <td class="w-35 padding-lr-5">${uvo.auth}</td>
             </tr>
             <tr>
                 <td class="tbl-line" colspan="4"></td>
             </tr>
             <tr class="tr-45">
                 <td class="bg-color-5 w-15 f6 align">사용자 휴대전화</td>
                 <td class="w-35 padding-lr-5">${uvo.userPhone}</td>
                 <td class="bg-color-5 w-15 f6 align">사용자 가입일</td>
                 <td class="w-35 padding-lr-5">${uvo.reg_date}</td>
             </tr>
             <tr>
                 <td class="tbl-line" colspan="4"></td>
             </tr>
             <tr class="tr-45">
                 <td class="bg-color-5 w-15 f6 align">사용자 이메일</td>
                 <td class="w-85 padding-lr-5" colspan="3">${uvo.userEmail}@${uvo.userDomain}</td>
             </tr>
             <tr>
                 <td class="tbl-line" colspan="4"></td>
             </tr>
             <tr class="tr-45">
                 <td class="bg-color-5 w-15 f6 align">사용자 이미지</td>
                 <td class="w-85 padding-lr-5" colspan="3"></td>
             </tr>
             <tr>
                 <td class="tbl-line" colspan="4"></td>
             </tr>
         </table>
         <div class="btn-grp margin-t20">
            <div class="btn-left float-l">
                <button type="button" onclick="javascript:location.href='/users';" class="btn-50 bold bo-blue">목록</button>
            </div>
            <div class="btn-left float-r">
                <button type="button" onclick="javascript:location.href='/users/getUsersModify?uid=${uvo.uid }';"  class="btn-50 bold bo-blue">수정</button>
                <!-- <button type="button" onclick="deleteUser(this)" data-uid="${uvo.uid }"  class="btn-50 bold bo-pink">삭제</button> -->
                <c:if test="${uvo.auth ne '관리자'}">   
                    <button type="button" onclick="javascript:location.href='/users/setUsersdelete?uid=${uvo.uid }';"  class= "btn-50 bold bo-pink">삭제</button>
                </c:if> 
            </div>
             <div class="clearfix"></div>
         </div>
     </div>
 </div>