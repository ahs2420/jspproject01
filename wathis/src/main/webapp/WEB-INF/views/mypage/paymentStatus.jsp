<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="box2-funReady">
    <div class="box1-box2">
        <div class="fun-wrap">
            <div class="fun-ready1">
                <h1>결제현황</h1>
                <div class="fun-ready1-text">
                    <a>펀딩에 후원해 주신 회원님들과 주문하신 리워드의 상세정보를 볼수 있습니다.</a>
                </div>
            </div>
        </div>
        <div class="fun-ready2">
            <div class="ready-state">
                <div class="ready-wrap">
                    <div class="ready-state-left">
                        <div class="ready-project">프로젝트 상태</div>

                    </div>
                    <div class="">
                        <span class=""><span class="icon-round-no-board inline-box icon-10 product-status-${pvo.status}"></span>${productStatus[pvo.status]}</span>
                        <div class="fun-text">
                            <p>프로젝트가 성공하면 자동으로 결제현황을 보실수 있습니다.</p>
                        </div>
                    </div>
                </div>
                <!-- 지금 단계 부분 -->
                <!--작성 부분 -->
                
                <!-- 기본요건 부분 -->
                <div class="flex-box flex-j-space mt20">
                    
                    <div>
                        <a href=""></a>
                    </div>
                    <div class="align-right">
                        <a href=""></a>
                    </div>
                </div>
                <table class="mt50">
                    <colgroup>
                        <col width="10%" />
                        <col width="10%" />
                        <col width="15%" />
                        <col width="*" />
                        <col width="10%" />
                        <col width="15%" />
                    </colgroup>
                    <thead>
                        <tr class="border-bottom">
                            <th  class="pt10 pb10">
                                주문 번호
                            </th>
                            <th  class="pt10 pb10">
                                상태
                            </th>
                            <th  class="pt10 pb10">
                                주문자 이름/전화번호
                            </th>
                            <th  class="pt10 pb10">
                                배송지 정보
                            </th>
                            <th  class="pt10 pb10">
                                배송사/송장번호
                            </th>
                            <th  class="pt10 pb10">
                                총 후원금액
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${ovoList}" var="ovo">
                            <tr  class="border-bottom">
                                <td class="pt10 pb10">
                                    ${ovo.id}
                                </td>
                                <td class="pt10 pb10">
                                    ${ovo.state}
                                </td>
                                <td class="pt10 pb10">
                                    ${ovo.uname} / ${ovo.utel}
                                </td>
                                <td class="pt10 pb10">
                                    <p>
                                        주소 : 
                                        ${ovo.receiver_addr1}
                                        ${ovo.receiver_addr2}
                                        ${ovo.receiver_addr3}
                                    </p>
                                    <p>
                                        이름 : ${ovo.receiver_name}
                                    </p>
                                    <p>
                                        연락처 : ${ovo.receiver_tel}
                                    </p>
                                    <p>
                                        요청사항 : ${ovo.receiver_etc}
                                    </p>
                                </td>
                                <td class="pt10 pb10">
                                    <c:choose>
                                        <c:when test="${ovo.delivery_id eq '' ||ovo.delivery_id == null}">
                                            미배송
                                        </c:when>
                                        <c:otherwise>
                                            ${ovo.delivery_id} /
                                            ${ovo.delivery_number}
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td class="pt10 pb10">
                                    <p><fmt:formatNumber value="${ovo.payment - ovo.delivery_fee}" pattern="#,##0" />원</p>
                                    <p> 총결제금액(배송비 제외) : <fmt:formatNumber value="${ovo.payment}" pattern="#,##0" />원</p>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <!-- 메이커부분 부분 -->
                
                <!-- 스토리 부분 -->
                
                <!-- 리워드설계 부분 -->
                
                <!-- 위험 요건 및 정책  부분 -->


                

                <!-- <div class="fun-ready-bu">제출하기 버튼</div> -->
            </div>
            <div class="adver-boxwrap">
                <div class="adver-box1">
                    <!-- <img src="/hongimages/images/san.jpg" alt=""> -->
                    <ul>
                        <li class="box-back6 cu-poin text-padding11">
                            <span class="fon-co12 fon-siz1 text-ali2">리워드를 준비하는 메이커님을 위한</span>
                            <div class="fon-wei1 fon-co12 fon-siz11 text-ali2">
                                필수 가이드
                                <i class="fas fa-arrow-alt-right fon-siz12 mar-left2 ver-ali1 mar-left5" aria-hidden="true"></i>
                            </div>

                        </li>
                        <li class="cu-poin">
                            <a href="https://www.youtube.com/playlist?list=PLCMVZ3bQZw9_lLA5pITFc09f_9EdJgmau&amp;_refer_section_st=RA1_0"><img src="/hongimages/images/whdiz1.jpg" alt=""></a>
                        </li>
                        <li class="cu-poin">
                            <a href="https://www.wadiz.kr/web/wboard/newsBoardDetail/7250?utm_source=rwm_makerstudio&amp;utm_medium=display&amp;_refer_section_st=RA1_1"><img src="/hongimages/images/whdiz2.jpg" alt=""></a>
                        </li>
                        <li class="cu-poin">
                            <a href="https://www.fundingmate.wadiz.kr/?isWadizApp=N"><img src="/hongimages/images/whdiz3.jpg" alt=""></a>
                        </li>
                        <li class="cu-poin">
                            <a href="notion.so/46641abbd7b2464087e78f6ba16ef498?_refer_section_st=RA1_3"><img src="/hongimages/images/whdiz4.jpg" alt=""></a>
                        </li>
                    </ul>&nbsp;
                </div>

            </div>
        </div>
    </div>
</div>