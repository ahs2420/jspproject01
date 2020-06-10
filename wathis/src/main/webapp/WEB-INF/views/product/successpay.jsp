<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/include/head.jspf"%>
<!-- 추가 css,js -->
<!-- 
    <link rel="stylesheet" href="/css/main.css">
    <script src="/js/main.js"></script>
 -->
 
<link rel="stylesheet" href="/hongcss/pay/style.css">
</haed>
<body>
<header>
<%@ include file="/WEB-INF/views/include/nav.jspf"%>
<!-- hero 삽입 -->
</header>
 <main>
        <div class="img-box">
            <div class="con-wrap">
                <div class="">
                    <!-- <img src="./img/crowd3.jpg" alt=""> -->
                    <div class="cuber-color">
                        <div class="wathis-success wa-center wa-ba-color1 mar-top4">
                          <div class="logo-box wa-align1">
                                <div class="wa-text-box">
                                    <div class="wathis-box li-he2">
                                        <h1 class="wa-wt dis-type2 wa-font-si4 wa-font-we font-color1 leter-sp4 ">W</h1> 
                                        <h1 class="wathis-le1 wa-ahis dis-type2 wa-font-si3 wa-font-we font-color1 leter-sp3">a</h1> 
                                        <h1 class="wathis-le2 wa-wt dis-type2 wa-font-si4 wa-font-we font-color1 leter-sp2">T</h1> 
                                        <h1 class="wathis-le3 wa-ahis dis-type2 wa-font-si3 wa-font-we font-color1 leter-sp1 ">his</h1>
                                    </div>
                                    <div class="success-group mar-top5 wa-font-we font-color1 padd1 wa-font-si5 mar-bottom4">결제를 성공하였습니다.</div>
                                </div>
                          </div>         
                        
                            <div class="content-box box-we3 back-color3 padd4 border-line2 border-ra2">
                                <div class="payment-box">
                                    
                                    <h3 class="font-color3">결제완료 현황</h3>
                                    <P class="wa-day font-color3 wa-font-si7 mar-top5"> 예상 결제 일은 최종 결제 YYYY.MM.DD.17시 입니다.</P>
                                  
                                </div> 
                                
                                <div class="a-box-wrap mar-top1 mar-bottom3">
                                    <table class="wa-align2 table-bor box-we3 font-color3">
                                    
                                        <th colspan="5" class=" fun-detail1 box-we4 ta-hei5">펀딩 내역</th>
                                        
                                        <tr>
                                            <th class="fun-detail1 box-we4 ta-hei5">상품명 :</th>
                                            <td colspan="4" class="ta-bor ">다뽑아 코팩</td>
                                        </tr> 
                                        
                                        <tr>
                                            <th class="box-we4 ta-hei5">배송지 :</th>
                                            <td colspan="4" class="ta-bor ">부산 광역시 경성대학교</td>
                                        </tr>
                                        
                                        <tr>
                                            <th class="box-we4 ta-hei5">후원금액 :</th>
                                            <td colspan="4" class="ta-bor ">1,000원</td>
                                        </tr>
                                        
                                        <tr>
                                            <th class="box-we4 ta-hei5"> 최종 금액 :</th>
                                            <td colspan="4" class="ta-bor ">1,000,000</td>
                                        </tr>
                                         
    
                                    </table>   
                                    
                                </div>
    
                                <div class="a-box-wrap mar-top1 wa-align1">
                                <div class="btn-wa a-box-flex-ba li-he2 box-hei5 border-line2 wa-font-we wa-font-si6 back-color1 border-ra1 font-color1 cu-point"><a href="http://localhost:8888" class=""> HOME </a></div> 
                                <div class="btn-wa a-box-flex-ba li-he2 box-hei5 border-line2 wa-font-we wa-font-si6 back-color1 border-ra1 font-color1 cu-point"><a href="http://localhost:8888/product/product-list" class=""> OTHER </a></div> 
                                <div class="btn-wa a-box-flex-ba li-he2 box-hei5 border-line2 wa-font-we wa-font-si6 back-color1 border-ra1 font-color1 cu-point"><a href="#" class="">DETAILS</a></div> 
                                </div>
                            </div>
    
                        </div>
                    </div>
                </div>
               
            </div>
        </div>
    </main>
<!-- main내용삽입 -->
<%@ include file="/WEB-INF/views/include/foot.jspf"%>
</body>
<!-- 추가 script 삽입 -->
</html>
