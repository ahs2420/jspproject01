<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>CKeditor 이미지업로드 테스트입니다. 하단 처럼 작성하면 이미지 업로드 가능합니다.(수정X)</title>
    <script src="https://kit.fontawesome.com/b1cadc3305.js" crossorigin="anonymous"></script>
    <script src="http://code.jquery.com/jquery-2.2.4.min.js"
        integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
    <script src="/plugin/ckeditor/ckeditor.js"></script>
    <style type="text/css">
        .cke_textarea_inline {
            border: 1px solid #000;
        }

        th {
            width: 25%;
        }

        td {
            width: 70%;
            background-color: black;
            color: #fff;
        }
    </style>
</head>

<body>

    <select id="Reward-documents">
        <option value="0">주요 카테고리별 작성 예시</option>
        <option value="1">의류</option>
        <option value="2">구두/신발</option>
        <option value="3">가방</option>
        <option value="4">패션잡화(모자/벨트.액세서리)</option>
        <option value="5">침구류/커튼</option>
        <option value="6">가구(침대/소파/싱크대/DTY제품)</option>
        <option value="7">주방용품</option>
        <option value="8">화장품</option>
        <option value="9">귀금속/보석/시계류</option>
        <option value="10">식품(농・축・수산물)</option>
        <option value="11">건강 기능 식품</option>
        <option value="12">가공식품</option>
        <option value="13">영유아 용품</option>
        <option value="14">서적</option>
        <option value="15">디지털 콘텐츠(음원, 게임, 인터넷강의 등)</option>
    </select>
    <textarea id="editor1" name="content" class="ckeditor"></textarea>
    <script>
        CKEDITOR.replace('editor1', {
            customConfig: '/plugin/ckeditor/config.js',
            width: '100%',
            height: '500',
            filebrowserImageUploadUrl: '/cke/imageUpload'
        });
    </script>
    <!-- inline 타입으로 생성 -->
    <textarea id="editor2" name="content" class="ckeditor"></textarea>
    <script>
        CKEDITOR.inline('editor2', {
            customConfig: '/plugin/ckeditor/config.js',
            width: '100%',
            height: '500',
            filebrowserImageUploadUrl: '/cke/imageUpload'
        });
    </script>



</body>

<script>
    var KIND = '<table style=\"width:100%\">\
    <tr>\
        <th style=\"width:5%\background-color:black\color: #fff\">리워드 종류</th>\
        <th style=\"width:10%\background-color:black\color: #fff\">항목</th>\
        <th style=\"width:25%\background-color:black\color: #fff\">부연설명</th>\
        <td style=\"width:55%\background-color:black\color: #fff\">비고</td>\
    </tr>\
    </table>';
    var clothing = '<table style=\"width:100%\">\
    <tr>\
        <th style=\"width:5%\">리워드 종류</th>\
        <th style=\"width:10%\">항목</th>\
        <th style=\"width:25%\">부연설명</th>\
        <td style=\"width:55%\">비고</td>\
    </tr>\
    <tr>\
        <th>의류</th>\
        <th>제품소재</th>\
        <td>섬유의 조성 또는 혼용률을 백분율로 입력/기능성인 경우 성적서 또는 허가서 내용 입력</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th >의류</th>\
        <th >색상</th>\
        <td >색상이 분명하지 않은 경우: 상세이미지 참조 기재</td>\
        <td ></td>\
    </tr>\
    <tr>\
        <th >의류</th>\
        <th >치수</th>\
        <td >옵션값을 모두 표시하고 S/M/L 또는 CM 단위표기</td>\
        <td ></td>\
    </tr>\
    <tr>\
        <th >의류</th>\
        <th >제조자(수입자)</th>\
        <td >제조자: 리워드를 제작하는 업체/ 수입자: 수입신고필증 상 수입업체</td>\
        <td ></td>\
    </tr>\
    <tr>\
        <th >의류</th>\
        <th>제조국</th>\
        <td>정식 국가명을 표기</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th >의류</th>\
        <th>세탁방법 및 취급시 주의사항</th>\
        <td>세탁방법과 취급 시 주의사항을 모두 표기</td>\
        <td>비고</td>\
    </tr>\
    <tr>\
        <th >의류</th>\
        <th>제조연월</th>\
        <td>제조년도와 제조월을 모두 표기</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th >의류</th>\
        <th>품질보증기준</th>\
        <td>예) 관련법 및 소비자분쟁해결 기준에 따름</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th >의류</th>\
        <th>A/S 책임자와 전화번호</th>\
        <td>담당자 이름 표기가 어려울 경우, 업체명 입력</td>\
        <td></td>\
    </tr>\
</table>';
    var Shoes = '<table style="width:100%">\
    <tr>\
        <th style=\"width:5%\">리워드 종류</th>\
        <th style=\"width:10%\">항목</th>\
        <th style=\"width:25%\">부연설명</th>\
        <td style=\"width:55%\">비고</td>\
    </tr>\
    <tr >\
        <th>구두/신발</th>\
        <th>제품 주 소재</th>\
        <td>운동화인 경우에는 겉감, 안감을 구분하여 입력</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>구두/신발</th>\
        <th>색상</th>\
        <td>색상이 분명하지 않은 경우: 상세이미지참조 기재 </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>구두/신발</th>\
        <th>치수</th>\
        <td>1) 발길이(mm), 굽높이(cm, 해당하는경우 입력)2) 해외 사이즈 표기 시 국내 사이즈 병행 표기 3) 굽 높이: 굽 재료를 사용하는 여성화에 한함(cm)</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>구두/신발</th>\
        <th>제조자(수입자)</th>\
        <td>제조자: 리워드를 제작하는 업체/ 수입자: 수입신고필증 상 수입업체</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>구두/신발</th>\
        <th>제조국</th>\
        <td>정식 국가명을 표기</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>구두/신발</th>\
        <th>취급 시주의사항</th>\
        <td></td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>구두/신발</th>\
        <th>품질보증기준</th>\
        <td>예) 관련법 및 소비자분쟁해결 기준에 따름</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>구두/신발</th>\
        <th>A/S 책임자와 전화번호</th>\
        <td>담당자 이름 표기가 어려울 경우, 업체명 입력</td>\
        <td></td>\
    </tr>\
</table>';
    var bag = '\
    <table style="width: 100%;">\
        <colgroup>\
            <col width="200px"/>\
            <col width="*">\
        </colgroup>\
    <tr>\
        <th style=\"width:5%\">리워드 종류</th>\
        <th style=\"width:10%\">항목</th>\
        <th style=\"width:25%\">부연설명</th>\
        <td style=\"width:55%\">비고</td>\
    </tr>\
        <tr>\
            <th>가방</th>\
            <th>종류</th>\
            <td>가방의 종류 또는 형태를 기재</td>\
            <td></td>\
        </tr>\
        <tr>\
            <th>가방</th>\
            <th>소재</th>\
            <td>제품에 사용된 소재 정보 기재</td>\
            <td></td>\
        </tr>\
        <tr>\
            <th>가방</th>\
            <th>색상</th>\
            <td>색상이 분명하지 않은 경우 : 상세이미지 참조 기재</td>\
            <td></td>\
        </tr>\
        <tr>\
            <th>가방</th>\
            <th>크기</th>\
            <td>가로, 세로, 끈길이 등 제품 정보 입력</td>\
            <td></td>\
        </tr>\
        <tr>\
            <th>가방</th>\
            <th>제조자(수입자)</th>\
            <td>제조자: 리워드를 제작하는 업체 / 수입자: 수입신고필증 상 수입업체</td>\
            <td></td>\
        </tr>\
        <tr>\
            <th>가방</th>\
            <th>제조국</th>\
            <td>정식 국가명을 표기</td>\
            <td></td>\
        </tr>\
        <tr>\
            <th>가방</th>\
            <th>취급 시 주의사항</th>\
            <td></td>\
            <td></td>\
        </tr>\
        <tr>\
            <th>가방</th>\
            <th>품질보증기준</th>\
            <td>예) 관련법 및 소비자분쟁해결 기준에따름</td>\
            <td></td>\
        </tr>\
        <tr>\
            <th>가방</th>\
            <th>A/S 책임자와 전화번호</th>\
            <td>담당자 이름 표기가 어려울 경우, 업체명 입력</td>\
            <td></td>\
        </tr>\
    </table>\ ';
    var Fashion = '<table style="width:100%">\
    <tr>\
        <th style=\"width:5%\">리워드 종류</th>\
        <th style=\"width:10%\">항목</th>\
        <th style=\"width:25%\">부연설명</th>\
        <td style=\"width:55%\">비고</td>\
    </tr>\
    <tr>\
        <th>패션잡화(모자/벨트/액세서리)</th>\
        <th>종류</th>\
        <td>패션잡화의 종류를 표기 </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>패션잡화(모자/벨트/액세서리)</th>\
        <th>소재</th>\
        <td>제품에 사용된 소재 정보를 기재</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>패션잡화(모자/벨트/액세서리)</th>\
        <th>치수</th>\
        <td>가로, 세로, 높이 등 제품 정보 입력</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>패션잡화(모자/벨트/액세서리)</th>\
        <th>제조자(수입자)</th>\
        <td>제조자: 리워드를 제작하는 업체 수입자: 수입신고필증 상 수입업체</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>패션잡화(모자/벨트/액세서리)</th>\
        <th>제조국</th>\
        <td>정식 국가명을 표기</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>패션잡화(모자/벨트/액세서리)</th>\
        <th>취급 시 주의사항</th>\
        <td>제품에 부착되어 있는 TAG 참고</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>패션잡화(모자/벨트/액세서리)</th>\
        <th>품질보증기준</th>\
        <td>예) 관련법 및 소비자분쟁해결 기준에 따름</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>패션잡화(모자/벨트/액세서리)</th>\
        <th>A/S 책임자와 전화번호</th>\
        <td>담당자 이름 표기가 어려울 경우, 업체명 입력</td>\
        <td></td>\
    </tr>\
</table>';
    var Bedding = '<table style="width:100%">\
        <tr>\
        <th style=\"width:5%\">리워드 종류</th>\
        <th style=\"width:10%\">항목</th>\
        <th style=\"width:25%\">부연설명</th>\
        <td style=\"width:55%\">비고</td>\
    </tr>\
    <tr>\
        <th>침구류 / 커튼 </th>\
        <th>제품 소재</th>\
        <td>섬유의 조성 또는 혼용률을 백분율로 입력 / 충전재를 사용한 제품은 충전재를 함께 입력</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>침구류 / 커튼</th>\
        <th>색상</th>\
        <td>색상이 분명하지 않은 경우: 상세이미지참조 기재</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>침구류 / 커튼</th>\
        <th>치수</th>\
        <td>가로, 세로, 높이 등 리워드의 사이즈 정보 입력</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>침구류 / 커튼</th>\
        <th>제품구성 </th>\
        <td>침구류에 포함되어 있는 구성품 및 수량을 모두 표기 </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>침구류 / 커튼</th>\
        <th>제조자(수입자)</th>\
        <td>제조자: 리워드를 제작하는 업체 / 수입자: 수입신고필증 상 수입업체</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>침구류 / 커튼</th>\
        <th>제조국</th>\
        <td>정식 국가명을 표기 </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>침구류 / 커튼</th>\
        <th>세탁방법 및 취급 시 주의사항</th>\
        <td>세탁방법과 취급 시 주의사항을 모두 기재 / 제품에 부착되어 있는 TAG 참고</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>침구류 / 커튼</th>\
        <th>품질보증 기준</th>\
        <td>예) 관련법 및 소비자분쟁해결 기준에 따름</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>침구류 / 커튼</th>\
        <th>A/S 책임자와 전화번호</th>\
        <td>담당자 이름 표기가 어려울 경우, 업체 명 입력</td>\
        <td></td>\
    </tr>\
</table>';
    var Furniture = '<table style="width:100%">\
    <tr>\
        <th style=\"width:5%\">리워드 종류</th>\
        <th style=\"width:10%\">항목</th>\
        <th style=\"width:25%\">부연설명</th>\
        <td style=\"width:55%\">비고</td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>품명</th>\
        <td>가구의 품명을 기입 </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>KC인증 필유무</th>\
        <td>품질경영 및 공산품 안전관리법 상 안전・품질표시 대상 공산품에 한해 인증유무 입력</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>색상 </th>\
        <td>색상이 분명하지 않은 경우: 상세이미지 참조 기재 </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>구성품</th>\
        <td>가구에 포함되어 있는 구성품 및 구성 수량 모두 표기  </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>제조자(수입자)</th>\
        <td>-제조자: 리워드를 제작하는 업체 -수입자: 수입신고필증 상 수입업체 (구성품 별 제조자가 다른 경우 각 구성품의 제조자, 수입자를 모두 기입)</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>제조국</th>\
        <td>정식 국가명을 표기(구성품 별 제조국이 다른 경우 각 구성품의 제조국)</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>크기 </th>\
        <td>가로, 세로, 높이 등 제품 정보 입력</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>배송・설치비용</th>\
        <td>서포터가 부담하는 배송비나 설치비용을 기입별도 비용이 발생하지 않을 경우 "해당사항 없음"으로 기재</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>품질보증기준</th>\
        <td> 예) 관련법 및 소비자분쟁해결 기준에 따름</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>A/S 책임자와 전화번호</th>\
        <td>전화번호 담당자 이름 표기가 어려울 경우, 업체 명 입력</td>\
        <td></td>\
    </tr>\
</table>';
    var kitchen = '<table style="width:100%">\
    <tr>\
        <th style=\"width:5%\">리워드 종류</th>\
        <th style=\"width:10%\">항목</th>\
        <th style=\"width:25%\">부연설명</th>\
        <td style=\"width:55%\">비고</td>\
    </tr>\
    <tr>\
        <th>주방용품</th>\
        <th>품명 및 모델명</th>\
        <td>제품의 종류 및 모델명을 모두 기재</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>주방용품</th>\
        <th>재질</th>\
        <td>재질의 정보를 표기</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>주방용품</th>\
        <th>구성품</th>\
        <td>판매 제품의 구성품명과 구성 수량을 모두 기재 </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>주방용품</th>\
        <th>크기 </th>\
        <td>가로, 세로, 높이 등 제품 정보 입력</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>주방용품</th>\
        <th>동일 모델의출시년월</th>\
        <td>제품의 종류 및 모델명을 모두 기재</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>주방용품</th>\
        <th>제조자 (수입자)</th>\
        <td>-제조자: 리워드를 제작하는 업체 -수입자: 수입신고필증 상 수입업체</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>주방용품</th>\
        <th>제조국</th>\
        <td>정식 국가명을 표기</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>주방용품</th>\
        <th>식품위생법에 따른 수입 기구・용기의 경우 "식품위생법에 따른 수입신고를 필함"의 문구</th>\
        <td>수입품인 경우, "식품위생법에 따른 수입신고를 필함" 입력</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>주방용품</th>\
        <th>품질보증기준</th>\
        <td>예) 관련법 및 소비자분쟁해결 기준에 따름 </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>주방용품</th>\
        <th>A/S 책임자와 전화번호</th>\
        <td>담당자 이름 표기가 어려울 경우, 업체명 입력</td>\
        <td></td>\
    </tr>\
</table>';
    var cosmetics = '<table style="width:100%">\
    <tr>\
        <th style=\"width:5%\">리워드 종류</th>\
        <th style=\"width:10%\">항목</th>\
        <th style=\"width:25%\">부연설명</th>\
        <td style=\"width:55%\">비고</td>\
    </tr>\
    <tr>\
        <th>화장품</th>\
        <th>용량 또는 중량</th>\
        <td>ml 혹은 g 등의 단위를 사용</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>화장품</th>\
        <th>제품주요 사양</th>\
        <td>피부타입, 색상(호,번) 등</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>화장품</th>\
        <th>사용기한 또는 개봉 후 사용기간</th>\
        <td>개봉 후 사용기간을 기재할 경우에는 제조연월일도 입력</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>화장품</th>\
        <th>사용방법</th>\
        <td>주요 사용방법을 기재 </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>화장품</th>\
        <th>제조업자 및 제조판매업자</th>\
        <td>제조업자와 제조판매업자가 각각의 업체명을 입력</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>화장품</th>\
        <th>제조국 </th>\
        <td>정식 국가명을 표기</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>화장품</th>\
        <th>화장품법에 따라 기재・표시하여야 하는 모든 성품</th>\
        <td>1) 실제 리워드에 표시되어 있는 "성분표시" 사항을 전체 기재 2) 성분 표시 영역에 모든 성분을 표시하는 것이 불가능할 경우 "상세페이지 참조"라고 표시한 뒤에 실제 제품 성분을 상세페이지 내에 모두 기재</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>화장품</th>\
        <th>기능성 화장품의 경우 화장품법에 따른 식품의약품안전처 심사 필 유무</th>\
        <td>1) 기능성 화장품인 경우 -식약처 심사 필 유무 표시 -미백/주름개선/자외선차단 등 표시 2) 기능성 화장품이 아닌 경우 "해당 사항 없음"으로 표시</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>화장품</th>\
        <th>사용할 때 주의사항</th>\
        <td>사용시 주의사항을 구체적으로 표시</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>화장품</th>\
        <th>품질보증기준</th>\
        <td>예) 관련법 및 소비자분쟁해결 기준에 따름</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>화장품</th>\
        <th>소비자상담 관련 전화번호</th>\
        <td>담당자 이름 표기가 어려울 경우, 업체명 입력</td>\
        <td></td>\
    </tr>\
   </table>';
    var Food = '<table style="width:100%">\
    <tr>\
        <th style=\"width:5%\">리워드 종류</th>\
        <th style=\"width:10%\">항목</th>\
        <th style=\"width:25%\">부연설명</th>\
        <td style=\"width:55%\">비고</td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>품명</th>\
        <td>가구의 품명을 기입 </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>KC인증 필유무</th>\
        <td>품질경영 및 공산품 안전관리법 상 안전・품질표시 대상 공산품에 한해 인증유무 입력</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>색상 </th>\
        <td>색상이 분명하지 않은 경우: 상세이미지 참조 기재 </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>구성품</th>\
        <td>가구에 포함되어 있는 구성품 및 구성 수량 모두 표기  </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>제조자(수입자)</th>\
        <td>-제조자: 리워드를 제작하는 업체 -수입자: 수입신고필증 상 수입업체 (구성품 별 제조자가 다른 경우 각 구성품의 제조자, 수입자를 모두 기입)</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>제조국</th>\
        <td>정식 국가명을 표기(구성품 별 제조국이 다른 경우 각 구성품의 제조국)</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>크기 </th>\
        <td>가로, 세로, 높이 등 제품 정보 입력</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>배송・설치비용</th>\
        <td>서포터가 부담하는 배송비나 설치비용을 기입별도 비용이 발생하지 않을 경우 "해당사항 없음"으로 기재</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>품질보증기준</th>\
        <td> 예) 관련법 및 소비자분쟁해결 기준에 따름</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>A/S 책임자와 전화번호</th>\
        <td>전화번호 담당자 이름 표기가 어려울 경우, 업체 명 입력</td>\
        <td></td>\
    </tr>\
</table>';
    var Health = '<table style="width:100%">\
    <tr>\
        <th style=\"width:5%\">리워드 종류</th>\
        <th style=\"width:10%\">항목</th>\
        <th style=\"width:25%\">부연설명</th>\
        <td style=\"width:55%\">비고</td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>품명</th>\
        <td>가구의 품명을 기입 </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>KC인증 필유무</th>\
        <td>품질경영 및 공산품 안전관리법 상 안전・품질표시 대상 공산품에 한해 인증유무 입력</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>색상 </th>\
        <td>색상이 분명하지 않은 경우: 상세이미지 참조 기재 </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>구성품</th>\
        <td>가구에 포함되어 있는 구성품 및 구성 수량 모두 표기  </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>제조자(수입자)</th>\
        <td>-제조자: 리워드를 제작하는 업체 -수입자: 수입신고필증 상 수입업체 (구성품 별 제조자가 다른 경우 각 구성품의 제조자, 수입자를 모두 기입)</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>제조국</th>\
        <td>정식 국가명을 표기(구성품 별 제조국이 다른 경우 각 구성품의 제조국)</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>크기 </th>\
        <td>가로, 세로, 높이 등 제품 정보 입력</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>배송・설치비용</th>\
        <td>서포터가 부담하는 배송비나 설치비용을 기입별도 비용이 발생하지 않을 경우 "해당사항 없음"으로 기재</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>품질보증기준</th>\
        <td> 예) 관련법 및 소비자분쟁해결 기준에 따름</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>A/S 책임자와 전화번호</th>\
        <td>전화번호 담당자 이름 표기가 어려울 경우, 업체 명 입력</td>\
        <td></td>\
    </tr>\
</table>';
    var processed = '<table style="width:100%">\
    <tr>\
        <th style=\"width:5%\">리워드 종류</th>\
        <th style=\"width:10%\">항목</th>\
        <th style=\"width:25%\">부연설명</th>\
        <td style=\"width:55%\">비고</td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>품명</th>\
        <td>가구의 품명을 기입 </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>KC인증 필유무</th>\
        <td>품질경영 및 공산품 안전관리법 상 안전・품질표시 대상 공산품에 한해 인증유무 입력</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>색상 </th>\
        <td>색상이 분명하지 않은 경우: 상세이미지 참조 기재 </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>구성품</th>\
        <td>가구에 포함되어 있는 구성품 및 구성 수량 모두 표기  </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>제조자(수입자)</th>\
        <td>-제조자: 리워드를 제작하는 업체 -수입자: 수입신고필증 상 수입업체 (구성품 별 제조자가 다른 경우 각 구성품의 제조자, 수입자를 모두 기입)</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>제조국</th>\
        <td>정식 국가명을 표기(구성품 별 제조국이 다른 경우 각 구성품의 제조국)</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>크기 </th>\
        <td>가로, 세로, 높이 등 제품 정보 입력</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>배송・설치비용</th>\
        <td>서포터가 부담하는 배송비나 설치비용을 기입별도 비용이 발생하지 않을 경우 "해당사항 없음"으로 기재</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>품질보증기준</th>\
        <td> 예) 관련법 및 소비자분쟁해결 기준에 따름</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>A/S 책임자와 전화번호</th>\
        <td>전화번호 담당자 이름 표기가 어려울 경우, 업체 명 입력</td>\
        <td></td>\
    </tr>\
</table>';
    var Infant = '<table style="width:100%">\
    <tr>\
        <th style=\"width:5%\">리워드 종류</th>\
        <th style=\"width:10%\">항목</th>\
        <th style=\"width:25%\">부연설명</th>\
        <td style=\"width:55%\">비고</td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>품명</th>\
        <td>가구의 품명을 기입 </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>KC인증 필유무</th>\
        <td>품질경영 및 공산품 안전관리법 상 안전・품질표시 대상 공산품에 한해 인증유무 입력</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>색상 </th>\
        <td>색상이 분명하지 않은 경우: 상세이미지 참조 기재 </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>구성품</th>\
        <td>가구에 포함되어 있는 구성품 및 구성 수량 모두 표기  </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>제조자(수입자)</th>\
        <td>-제조자: 리워드를 제작하는 업체 -수입자: 수입신고필증 상 수입업체 (구성품 별 제조자가 다른 경우 각 구성품의 제조자, 수입자를 모두 기입)</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>제조국</th>\
        <td>정식 국가명을 표기(구성품 별 제조국이 다른 경우 각 구성품의 제조국)</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>크기 </th>\
        <td>가로, 세로, 높이 등 제품 정보 입력</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>배송・설치비용</th>\
        <td>서포터가 부담하는 배송비나 설치비용을 기입별도 비용이 발생하지 않을 경우 "해당사항 없음"으로 기재</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>품질보증기준</th>\
        <td> 예) 관련법 및 소비자분쟁해결 기준에 따름</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>A/S 책임자와 전화번호</th>\
        <td>전화번호 담당자 이름 표기가 어려울 경우, 업체 명 입력</td>\
        <td></td>\
    </tr>\
</table>';
    var books = '<table style="width:100%">\
    <tr>\
        <th style=\"width:5%\">리워드 종류</th>\
        <th style=\"width:10%\">항목</th>\
        <th style=\"width:25%\">부연설명</th>\
        <td style=\"width:55%\">비고</td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>품명</th>\
        <td>가구의 품명을 기입 </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>KC인증 필유무</th>\
        <td>품질경영 및 공산품 안전관리법 상 안전・품질표시 대상 공산품에 한해 인증유무 입력</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>색상 </th>\
        <td>색상이 분명하지 않은 경우: 상세이미지 참조 기재 </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>구성품</th>\
        <td>가구에 포함되어 있는 구성품 및 구성 수량 모두 표기  </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>제조자(수입자)</th>\
        <td>-제조자: 리워드를 제작하는 업체 -수입자: 수입신고필증 상 수입업체 (구성품 별 제조자가 다른 경우 각 구성품의 제조자, 수입자를 모두 기입)</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>제조국</th>\
        <td>정식 국가명을 표기(구성품 별 제조국이 다른 경우 각 구성품의 제조국)</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>크기 </th>\
        <td>가로, 세로, 높이 등 제품 정보 입력</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>배송・설치비용</th>\
        <td>서포터가 부담하는 배송비나 설치비용을 기입별도 비용이 발생하지 않을 경우 "해당사항 없음"으로 기재</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>품질보증기준</th>\
        <td> 예) 관련법 및 소비자분쟁해결 기준에 따름</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>A/S 책임자와 전화번호</th>\
        <td>전화번호 담당자 이름 표기가 어려울 경우, 업체 명 입력</td>\
        <td></td>\
    </tr>\
</table>';
    var Digital = '<table style="width:100%">\
    <tr>\
        <th style=\"width:5%\">리워드 종류</th>\
        <th style=\"width:10%\">항목</th>\
        <th style=\"width:25%\">부연설명</th>\
        <td style=\"width:55%\">비고</td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>품명</th>\
        <td>가구의 품명을 기입 </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>KC인증 필유무</th>\
        <td>품질경영 및 공산품 안전관리법 상 안전・품질표시 대상 공산품에 한해 인증유무 입력</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>색상 </th>\
        <td>색상이 분명하지 않은 경우: 상세이미지 참조 기재 </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>구성품</th>\
        <td>가구에 포함되어 있는 구성품 및 구성 수량 모두 표기  </td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>제조자(수입자)</th>\
        <td>-제조자: 리워드를 제작하는 업체 -수입자: 수입신고필증 상 수입업체 (구성품 별 제조자가 다른 경우 각 구성품의 제조자, 수입자를 모두 기입)</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>제조국</th>\
        <td>정식 국가명을 표기(구성품 별 제조국이 다른 경우 각 구성품의 제조국)</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>크기 </th>\
        <td>가로, 세로, 높이 등 제품 정보 입력</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>배송・설치비용</th>\
        <td>서포터가 부담하는 배송비나 설치비용을 기입별도 비용이 발생하지 않을 경우 "해당사항 없음"으로 기재</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>품질보증기준</th>\
        <td> 예) 관련법 및 소비자분쟁해결 기준에 따름</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>가구(침대/소파/싱크대/DIY제품)</th>\
        <th>A/S 책임자와 전화번호</th>\
        <td>전화번호 담당자 이름 표기가 어려울 경우, 업체 명 입력</td>\
        <td></td>\
    </tr>\
</table>';

    var item = [
        KIND,
        clothing,
        Shoes,
        bag,
        Fashion,
        Bedding,
        Furniture,
        kitchen,
        cosmetics,
        Food,
        Health,
        processed,
        Infant,
        books,
        Digital,

        '<table><tr><td>식품의 유형2</td></tr></table>',
        '<table><tr><td>식품의 유형3</td></tr></table>',
        '<table><tr><td>식품의 유형4</td></tr></table>'
    ];
    $(function () {
        $("#Reward-documents").change(function () {
            var val = $(this).val();
            CKEDITOR.instances["editor1"].setData(item[val]);
        });
    });
</script>

</html>