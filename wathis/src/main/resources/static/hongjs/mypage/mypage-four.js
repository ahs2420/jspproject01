var KIND = '<table cellpadding="10px" style="width:100%">\
<tr>\
    <th style=\"width:5%;padding:10px;\">리워드 종류</th>\
    <th style=\"width:10%;padding:10px;\">항목</th>\
    <th style=\"width:25%;padding:10px;\">부연설명</th>\
    <th style=\"width:55%;padding:10px;\">직접 작성</th>\
</tr>\
</table>';
var clothing = '<table style=\"width:100%\">\
<tr>\
    <th style=\"width:7%\">리워드 종류</th>\
    <th style=\"width:10%\">항목</th>\
    <th style=\"width:25%\">부연설명</th>\
    <th style=\"width:45%\">직접 작성</th>\
</tr>\
<tr>\
    <th rowspan="9">의류</th>\
    <th>제품소재</th>\
    <td>섬유의 조성 또는 혼용률을 백분율로 입력/기능성인 경우 성적서 또는 허가서 내용 입력</td>\
    <td>dsadasdsadfkdslkkkkkk;l</td>\
</tr>\
<tr>\
    <th >색상</th>\
    <td >색상이 분명하지 않은 경우: 상세이미지 참조 기재</td>\
    <td ></td>\
</tr>\
<tr>\
    <th >치수</th>\
    <td >옵션값을 모두 표시하고 S/M/L 또는 CM 단위표기</td>\
    <td ></td>\
</tr>\
<tr>\
    <th >제조자(수입자)</th>\
    <td >제조자: 리워드를 제작하는 업체/ 수입자: 수입신고필증 상 수입업체</td>\
    <td ></td>\
</tr>\
<tr>\
    <th>제조국</th>\
    <td>정식 국가명을 표기</td>\
    <td></td>\
</tr>\
<tr>\
    <th>세탁방법 및 취급시 주의사항</th>\
    <td>세탁방법과 취급 시 주의사항을 모두 표기</td>\
    <td></th>\
</tr>\
<tr>\
    <th>제조연월</th>\
    <td>제조년도와 제조월을 모두 표기</td>\
    <td></td>\
</tr>\
<tr>\
    <th>품질보증기준</th>\
    <td>예) 관련법 및 소비자분쟁해결 기준에 따름</td>\
    <td></td>\
</tr>\
<tr>\
    <th>A/S 책임자와 전화번호</th>\
    <td>담당자 이름 표기가 어려울 경우, 업체명 입력</td>\
    <td></td>\
</tr>\
</table>';
var Shoes = '<table style="width:100%">\
<tr>\
    <th style=\"width:7%\">리워드 종류</th>\
    <th style=\"width:10%\">항목</th>\
    <th style=\"width:25%\">부연설명</th>\
    <th style=\"width:45%\">직접 작성</th>\
</tr>\
<tr >\
    <th rowspan="8">구두/신발</th>\
    <th>제품 주 소재</th>\
    <td>운동화인 경우에는 겉감, 안감을 구분하여 입력</td>\
    <td></td>\
</tr>\
<tr>\
    <th>색상</th>\
    <td>색상이 분명하지 않은 경우: 상세이미지참조 기재 </td>\
    <td></td>\
</tr>\
<tr>\
    <th>치수</th>\
    <td>1) 발길이(mm), 굽높이(cm, 해당하는경우 입력)2) 해외 사이즈 표기 시 국내 사이즈 병행 표기 3) 굽 높이: 굽 재료를 사용하는 여성화에 한함(cm)</td>\
    <td></td>\
</tr>\
<tr>\
    <th>제조자(수입자)</th>\
    <td>제조자: 리워드를 제작하는 업체/ 수입자: 수입신고필증 상 수입업체</td>\
    <td></td>\
</tr>\
<tr>\
    <th>제조국</th>\
    <td>정식 국가명을 표기</td>\
    <td></td>\
</tr>\
<tr>\
    <th>취급 시주의사항</th>\
    <td></td>\
    <td></td>\
</tr>\
<tr>\
    <th>품질보증기준</th>\
    <td>예) 관련법 및 소비자분쟁해결 기준에 따름</td>\
    <td></td>\
</tr>\
<tr>\
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
    <th style=\"width:7%\">리워드 종류</th>\
    <th style=\"width:10%\">항목</th>\
    <th style=\"width:25%\">부연설명</th>\
    <th style=\"width:45%\">직접 작성</th>\
</tr>\
    <tr>\
        <th rowspan="9">가방</th>\
        <th>종류</th>\
        <td>가방의 종류 또는 형태를 기재</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>소재</th>\
        <td>제품에 사용된 소재 정보 기재</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>색상</th>\
        <td>색상이 분명하지 않은 경우 : 상세이미지 참조 기재</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>크기</th>\
        <td>가로, 세로, 끈길이 등 제품 정보 입력</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>제조자(수입자)</th>\
        <td>제조자: 리워드를 제작하는 업체 / 수입자: 수입신고필증 상 수입업체</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>제조국</th>\
        <td>정식 국가명을 표기</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>취급 시 주의사항</th>\
        <td></td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>품질보증기준</th>\
        <td>예) 관련법 및 소비자분쟁해결 기준에따름</td>\
        <td></td>\
    </tr>\
    <tr>\
        <th>A/S 책임자와 전화번호</th>\
        <td>담당자 이름 표기가 어려울 경우, 업체명 입력</td>\
        <td></td>\
    </tr>\
</table>\ ';
var Fashion = '<table style="width:100%">\
<tr>\
    <th style=\"width:7%\">리워드 종류</th>\
    <th style=\"width:10%\">항목</th>\
    <th style=\"width:25%\">부연설명</th>\
    <th style=\"width:45%\">직접 작성</th>\
</tr>\
<tr>\
    <th rowspan="8">패션잡화(모자/벨트/액세서리)</th>\
    <th>종류</th>\
    <td>패션잡화의 종류를 표기 </td>\
    <td></td>\
</tr>\
<tr>\
    <th>소재</th>\
    <td>제품에 사용된 소재 정보를 기재</td>\
    <td></td>\
</tr>\
<tr>\
    <th>치수</th>\
    <td>가로, 세로, 높이 등 제품 정보 입력</td>\
    <td></td>\
</tr>\
<tr>\
    <th>제조자(수입자)</th>\
    <td>제조자: 리워드를 제작하는 업체 수입자: 수입신고필증 상 수입업체</td>\
    <td></td>\
</tr>\
<tr>\
    <th>제조국</th>\
    <td>정식 국가명을 표기</td>\
    <td></td>\
</tr>\
<tr>\
    <th>취급 시 주의사항</th>\
    <td>제품에 부착되어 있는 TAG 참고</td>\
    <td></td>\
</tr>\
<tr>\
    <th>품질보증기준</th>\
    <td>예) 관련법 및 소비자분쟁해결 기준에 따름</td>\
    <td></td>\
</tr>\
<tr>\
    <th>A/S 책임자와 전화번호</th>\
    <td>담당자 이름 표기가 어려울 경우, 업체명 입력</td>\
    <td></td>\
</tr>\
</table>';
var Bedding = '<table style="width:100%">\
    <tr>\
    <th style=\"width:7%\">리워드 종류</th>\
    <th style=\"width:10%\">항목</th>\
    <th style=\"width:25%\">부연설명</th>\
    <th style=\"width:45%\">직접 작성</th>\
</tr>\
<tr>\
    <th  rowspan="9">침구류 / 커튼 </th>\
    <th>제품 소재</th>\
    <td>섬유의 조성 또는 혼용률을 백분율로 입력 / 충전재를 사용한 제품은 충전재를 함께 입력</td>\
    <td></td>\
</tr>\
<tr>\
    <th>색상</th>\
    <td>색상이 분명하지 않은 경우: 상세이미지참조 기재</td>\
    <td></td>\
</tr>\
<tr>\
    <th>치수</th>\
    <td>가로, 세로, 높이 등 리워드의 사이즈 정보 입력</td>\
    <td></td>\
</tr>\
<tr>\
    <th>제품구성 </th>\
    <td>침구류에 포함되어 있는 구성품 및 수량을 모두 표기 </td>\
    <td></td>\
</tr>\
<tr>\
    <th>제조자(수입자)</th>\
    <td>제조자: 리워드를 제작하는 업체 / 수입자: 수입신고필증 상 수입업체</td>\
    <td></td>\
</tr>\
<tr>\
    <th>제조국</th>\
    <td>정식 국가명을 표기 </td>\
    <td></td>\
</tr>\
<tr>\
    <th>세탁방법 및 취급 시 주의사항</th>\
    <td>세탁방법과 취급 시 주의사항을 모두 기재 / 제품에 부착되어 있는 TAG 참고</td>\
    <td></td>\
</tr>\
<tr>\
    <th>품질보증 기준</th>\
    <td>예) 관련법 및 소비자분쟁해결 기준에 따름</td>\
    <td></td>\
</tr>\
<tr>\
    <th>A/S 책임자와 전화번호</th>\
    <td>담당자 이름 표기가 어려울 경우, 업체 명 입력</td>\
    <td></td>\
</tr>\
</table>';
var Furniture = '<table style="width:100%">\
<tr>\
    <th style=\"width:7%\">리워드 종류</th>\
    <th style=\"width:10%\">항목</th>\
    <th style=\"width:25%\">부연설명</th>\
    <th style=\"width:45%\">직접 작성</th>\
</tr>\
<tr>\
    <th  rowspan="10">가구(침대/소파/싱크대/DIY제품)</th>\
    <th>품명</th>\
    <td>가구의 품명을 기입 </td>\
    <td></td>\
</tr>\
<tr>\
    <th>KC인증 필유무</th>\
    <td>품질경영 및 공산품 안전관리법 상 안전・품질표시 대상 공산품에 한해 인증유무 입력</td>\
    <td></td>\
</tr>\
<tr>\
    <th>색상 </th>\
    <td>색상이 분명하지 않은 경우: 상세이미지 참조 기재 </td>\
    <td></td>\
</tr>\
<tr>\
    <th>구성품</th>\
    <td>가구에 포함되어 있는 구성품 및 구성 수량 모두 표기  </td>\
    <td></td>\
</tr>\
<tr>\
    <th>제조자(수입자)</th>\
    <td>-제조자: 리워드를 제작하는 업체 -수입자: 수입신고필증 상 수입업체 (구성품 별 제조자가 다른 경우 각 구성품의 제조자, 수입자를 모두 기입)</td>\
    <td></td>\
</tr>\
<tr>\
    <th>제조국</th>\
    <td>정식 국가명을 표기(구성품 별 제조국이 다른 경우 각 구성품의 제조국)</td>\
    <td></td>\
</tr>\
<tr>\
    <th>크기 </th>\
    <td>가로, 세로, 높이 등 제품 정보 입력</td>\
    <td></td>\
</tr>\
<tr>\
    <th>배송・설치비용</th>\
    <td>서포터가 부담하는 배송비나 설치비용을 기입별도 비용이 발생하지 않을 경우 "해당사항 없음"으로 기재</td>\
    <td></td>\
</tr>\
<tr>\
    <th>품질보증기준</th>\
    <td> 예) 관련법 및 소비자분쟁해결 기준에 따름</td>\
    <td></td>\
</tr>\
<tr>\
    <th>A/S 책임자와 전화번호</th>\
    <td>전화번호 담당자 이름 표기가 어려울 경우, 업체 명 입력</td>\
    <td></td>\
</tr>\
</table>';
var kitchen = '<table style="width:100%">\
<tr>\
    <th style=\"width:7%\">리워드 종류</th>\
    <th style=\"width:10%\">항목</th>\
    <th style=\"width:25%\">부연설명</th>\
    <th style=\"width:45%\">직접 작성</th>\
</tr>\
<tr>\
    <th  rowspan="10">주방용품</th>\
    <th>품명 및 모델명</th>\
    <td>제품의 종류 및 모델명을 모두 기재</td>\
    <td></td>\
</tr>\
<tr>\
    <th>재질</th>\
    <td>재질의 정보를 표기</td>\
    <td></td>\
</tr>\
<tr>\
    <th>구성품</th>\
    <td>판매 제품의 구성품명과 구성 수량을 모두 기재 </td>\
    <td></td>\
</tr>\
<tr>\
    <th>크기 </th>\
    <td>가로, 세로, 높이 등 제품 정보 입력</td>\
    <td></td>\
</tr>\
<tr>\
    <th>동일 모델의출시년월</th>\
    <td>제품의 종류 및 모델명을 모두 기재</td>\
    <td></td>\
</tr>\
<tr>\
    <th>제조자 (수입자)</th>\
    <td>-제조자: 리워드를 제작하는 업체 -수입자: 수입신고필증 상 수입업체</td>\
    <td></td>\
</tr>\
<tr>\
    <th>제조국</th>\
    <td>정식 국가명을 표기</td>\
    <td></td>\
</tr>\
<tr>\
    <th>식품위생법에 따른 수입 기구・용기의 경우 "식품위생법에 따른 수입신고를 필함"의 문구</th>\
    <td>수입품인 경우, "식품위생법에 따른 수입신고를 필함" 입력</td>\
    <td></td>\
</tr>\
<tr>\
    <th>품질보증기준</th>\
    <td>예) 관련법 및 소비자분쟁해결 기준에 따름 </td>\
    <td></td>\
</tr>\
<tr>\
    <th>A/S 책임자와 전화번호</th>\
    <td>담당자 이름 표기가 어려울 경우, 업체명 입력</td>\
    <td></td>\
</tr>\
</table>';
var cosmetics = '<table style="width:100%">\
<tr>\
    <th style=\"width:7%\">리워드 종류</th>\
    <th style=\"width:10%\">항목</th>\
    <th style=\"width:25%\">부연설명</th>\
    <th style=\"width:45%\">직접 작성</th>\
</tr>\
<tr>\
    <th  rowspan="11">화장품</th>\
    <th>용량 또는 중량</th>\
    <td>ml 혹은 g 등의 단위를 사용</td>\
    <td></td>\
</tr>\
<tr>\
    <th>제품주요 사양</th>\
    <td>피부타입, 색상(호,번) 등</td>\
    <td></td>\
</tr>\
<tr>\
    <th>사용기한 또는 개봉 후 사용기간</th>\
    <td>개봉 후 사용기간을 기재할 경우에는 제조연월일도 입력</td>\
    <td></td>\
</tr>\
<tr>\
    <th>사용방법</th>\
    <td>주요 사용방법을 기재 </td>\
    <td></td>\
</tr>\
<tr>\
    <th>제조업자 및 제조판매업자</th>\
    <td>제조업자와 제조판매업자가 각각의 업체명을 입력</td>\
    <td></td>\
</tr>\
<tr>\
    <th>제조국 </th>\
    <td>정식 국가명을 표기</td>\
    <td></td>\
</tr>\
<tr>\
    <th>화장품법에 따라 기재・표시하여야 하는 모든 성품</th>\
    <td>1) 실제 리워드에 표시되어 있는 "성분표시" 사항을 전체 기재 2) 성분 표시 영역에 모든 성분을 표시하는 것이 불가능할 경우 "상세페이지 참조"라고 표시한 뒤에 실제 제품 성분을 상세페이지 내에 모두 기재</td>\
    <td></td>\
</tr>\
<tr>\
    <th>기능성 화장품의 경우 화장품법에 따른 식품의약품안전처 심사 필 유무</th>\
    <td>1) 기능성 화장품인 경우 -식약처 심사 필 유무 표시 -미백/주름개선/자외선차단 등 표시 2) 기능성 화장품이 아닌 경우 "해당 사항 없음"으로 표시</td>\
    <td></td>\
</tr>\
<tr>\
    <th>사용할 때 주의사항</th>\
    <td>사용시 주의사항을 구체적으로 표시</td>\
    <td></td>\
</tr>\
<tr>\
    <th>품질보증기준</th>\
    <td>예) 관련법 및 소비자분쟁해결 기준에 따름</td>\
    <td></td>\
</tr>\
<tr>\
    <th>소비자상담 관련 전화번호</th>\
    <td>담당자 이름 표기가 어려울 경우, 업체명 입력</td>\
    <td></td>\
</tr>\
</table>';
var Precious = '<table style="width:100%">\
<tr>\
    <th style=\"width:7%\">리워드 종류</th>\
    <th style=\"width:10%\">항목</th>\
    <th style=\"width:25%\">부연설명</th>\
    <th style=\"width:45%\">직접 작성</th>\
</tr>\
<tr>\
    <th  rowspan="10">귀금속/보석/시계류</th>\
    <th>소재/순도/밴드재질</th>\
    <td>제품의 소재와 순도, 시계의 경우에는 밴드 재질을 모두 기재</td>\
    <td></td>\
</tr>\
<tr>\
    <th>중량 </th>\
    <td>판매 제품의 중량 정보를 기재</td>\
    <td></td>\
</tr>\
<tr>\
    <th>제조자(수입자)</th>\
    <td>제조자: 리워드를 제작하는 업체수입자: 수입신고필증 상 수입업체</td>\
    <td></td>\
</tr>\
<tr>\
    <th>제조국</th>\
    <td>원산지와 가공지 등이 다를 경우 함께 입력</td>\
    <td></td>\
</tr>\
<tr>\
    <th>치수</th>\
    <td>판매 제품의 치수정보를 기재 -1호, 2호와 같이 치수 정보를 기재 시mm, cm 단위를 함께 표시</td>\
    <td></td>\
</tr>\
<tr>\
    <th>착용 시 주의사항</th>\
    <td></td>\
    <td></td>\
</tr>\
<tr>\
    <th>귀금속 보석류 주요 사양</th>\
    <td>등급 등 입력 해당사항 없는 경우, "해당사항 없음" 입력 </td>\
    <td></td>\
</tr>\
<tr>\
    <th>시계 주요 사양</th>\
    <td>기능, 방수 등 입력</td>\
    <td></td>\
</tr>\
<tr>\
    <th>보증서 제공 여부</th>\
    <td></td>\
    <td></td>\
</tr>\
<tr>\
    <th>품질보증기준 </th>\
    <td>예) 관련법 및 소비자분쟁해결 기준에 따름</td>\
    <td></td>\
</tr>\
<tr>\
    <th>A/S 책임자와 전화번호</th>\
    <td>담당자 이름 표기가 어려울 경우, 업체명 입력</td>\
    <td></td>\
</tr>\
</table>' ;
var Food = '<table style="width:100%">\
<tr>\
    <th style=\"width:7%\">리워드 종류</th>\
    <th style=\"width:10%\">항목</th>\
    <th style=\"width:25%\">부연설명</th>\
    <th style=\"width:45%\">직접 작성</th>\
</tr>\
<tr>\
    <th  rowspan="7">식품(농・축・수산물)</th>\
    <th>포장 단위별용량(중량),수량, 크기</th>\
    <td>1) 중량, 수량, 크기 함께 표기 2) 식품의 특성상 낱개 수량 기재가 어려운 경우, 기본 낱개 수량 정보를 기재3) 식품의 특성상 제품의 크기를 가로/세로/높이로 표기하기 어려운 경우, 가로 길이만 기재</td>\
    <td></td>\
</tr>\
<tr>\
   <th>생산자</th>\
    <td>수입품인 경우, 수입자를 함께 표기</td>\
    <td></td>\
</tr>\
<tr>\
   <th>원산지</th>\
    <td>농수산물의 원산지 표시에 관한 법률에 따른 원산지 표기</td>\
    <td></td>\
</tr>\
<tr>\
   <th>제조연월일(포장일 또는 생산연도), 유통기한 또는 품질유지기한</th>\
    <td>1) 보유하고 있는 동일 제품의 제조연월, 제조연월일, 유통기한, 사용기한, 품질유지기한 중 가장 빠른 날짜 표시2)제품의 특성상 제조연월일을 제공하기 어려운 경우, 구체적인 사유 및 소비자 확인 방법 표시</td>\
    <td></td>\
</tr>\
<tr>\
   <th>상품 구성</th>\
    <td>상품 구성 사항 상세 기재</td>\
    <td></td>\
</tr>\
<tr>\
   <th>보관방법 또는 취급방법</th>\
    <td>보관방법 또는 취급방법을 상세히 기재</td>\
    <td></td>\
</tr>\
<tr>\
   <th>소비자상담 관련 전화번호</th>\
    <td>담당자 이름 표기가 어려울 경우, 업체명 입력</td>\
    <td></td>\
</tr>\
</table>';
var Health = '<table style="width:100%">\
<tr>\
    <th style=\"width:7%\">리워드 종류</th>\
    <th style=\"width:10%\">항목</th>\
    <th style=\"width:25%\">부연설명</th>\
    <th style=\"width:45%\">직접 작성</th>\
</tr>\
<tr>\
    <th  rowspan="12">건강 기능 식품</th>\
    <th>식품의 유형</th>\
    <td>식품 라벨에 표기된 식품의 유형 정보와 동일하게 기재</td>\
    <td></td>\
</tr>\
<tr>\
 <th>제조업소의 명칭과 소재지</th>\
    <td>수입품의 경우 수입업소명, 제조업소명 및 수출국명 입력</td>\
    <td></td>\
</tr>\
<tr>\
 <th>제조연월일,유통기한 또는 품질유지기한</th>\
    <td>1) 보유하고 있는 동일 제품의 제조연월, 제조연월일, 유통기한, 사용기한, 품질유지기한 중 가장 빠른 날짜 표시 가능2) 보유한 동일 제품 전체의 제조연월,제조연월일, 유통기한, 사용기한, 품질기한의 범위 표시 가능3) 개봉 후 사용기간 표기</td>\
    <td></td>\
</tr>\
<tr>\
 <th>포장단위별 용량(중량), 수량</th>\
    <td>제품의 용량(중량)과 수량을 반드시 함께 기재 </td>\
    <td></td>\
</tr>\
<tr>\
 <th>원재료명 및 함량</th>\
    <td>농수산물의 원산지 표시에 관한 법률에 따른 원산지 표시 포함</td>\
    <td></td>\
</tr>\
<tr>\
 <th>영양정보</th>\
    <td>실품 라벨에 표기되어 있는 영양성분 모두 표시(식품위생법에 따른 영양성분 표시대상 식품에 한함)</td>\
    <td></td>\
</tr>\
<tr>\
 <th>기능정보</th>\
    <td>실품에 표기되어 있는 기능정보 모두 표시</td>\
    <td></td>\
</tr>\
<tr>\
 <th>섭취량, 섭취방법 및 섭취시 주의사항 및 부작용 가능성</th>\
    <td>실품에 표기되어 있는 섭취 시 주의사항 표시 </td>\
    <td></td>\
</tr>\
<tr>\
 <th>질병의 예방 및 치료를 위한 의약품이 아니라는 내용의 표현</th>\
    <td>예) 본 제품은 질병의 예방 및 치료를 위한 의약품이 아닙니다.</td>\
    <td></td>\
</tr>\
<tr>\
 <th>유전자변형 건강기능식품에 해당하는 경우의 표시</th>\
    <td>"해당사항 없음" 혹은 "유전자재조합식품" 입력</td>\
    <td></td>\
</tr>\
<tr>\
 <th>표시광고 사전심의필 </th>\
    <td>심의번호 입력</td>\
    <td></td>\
</tr>\
<tr>\
 <th>수입식품에 해당하는 경우 "건강기능식품에 관한 법률에 따른 수입 신고를 필함"의 문구</th>\
    <td>수입 식품인 경우에만 해당 문구 입력</td>\
    <td></td>\
</tr>\
</table>';
var processed = '<table style="width:100%">\
<tr>\
    <th style=\"width:5%;padding:10px\">리워드 종류</th>\
    <th style=\"width:10%\">항목</th>\
    <th style=\"width:25%\">부연설명</th>\
    <th style=\"width:45%\">직접 작성</th>\
</tr>\
<tr>\
    <th  rowspan="10">가공식품</th>\
    <th>식품의 유형</th>\
    <td>제품 라벨에 표기된 식품의 유형 정보와 동일하게 기재 </td>\
    <td></td>\
</tr>\
<tr>\
    <th>생산자 및 소재지</th>\
    <td>수입품의 경우 수입자 및 제조국을 함께 입력</td>\
    <td></td>\
</tr>\
<tr>\
    <th>제조연월일,유통기한 또는 품질유지기한</th>\
    <td>1) 보유하고 있는 동일 제품의 제조연월, 제조연월일, 유통기한, 사용기한, 품질유지기한 중 가장 빠른 날짜 표시 가능 2) 보유한 동일 제품 전체의 제조연월,제조연월일, 유통기한, 사용기한, 품질기한의 범위 표시 가능 3) 개봉 후 사용기간 표기</td>\
    <td></td>\
</tr>\
<tr>\
    <th>포장단위별 용량(중량), 수량</th>\
    <td>제품의 용량(중량)과 수량을 반드시 함께 기재 </td>\
    <td></td>\
</tr>\
<tr>\
    <th>원재료명 및 함량</th>\
    <td>농수산물의 원산지 표시에 관한 법률에 따른 원산지 표시 포함</td>\
    <td></td>\
</tr>\
<tr>\
    <th>영양성분</th>\
    <td>실품 라벨에 표기되어 있는 영양성분 모두 표시(식품위생법에 따른 영양성분 표시대상 식품에 한함)</td>\
    <td></td>\
</tr>\
<tr>\
    <th>유전자변형 식품에 해당하는 경우의 표시</th>\
    <td>"해당사항 없음" 혹은 "유전자재조합식품" 입력</td>\
    <td></td>\
</tr>\
<tr>\
    <th>영유아식 또는 체중조절식품등에 해당하는 경우 표시광고사전심의필 유무 및 부작용 발생 가능성</th>\
    <td>특수용도 식품일 경우 사전광고심의번호를 입력</td>\
    <td></td>\
</tr>\
<tr>\
    <th>수입식품에 해당하는 경우 "식품위생법에 따른 수입신고를 필함"의 문구</th>\
    <td>수입 식품인 경우에만 해당 문구 입력</td>\
    <td></td>\
</tr>\
<tr>\
    <th>소비자상담 관련 전화번호</th>\
    <td>수입 식품인 경우에만 해당 문구 입력</td>\
    <td></td>\
</tr>\
</table>';
var Infant = '<table style="width:100%">\
<tr>\
    <th style=\"width:5%;padding:10px\">리워드 종류</th>\
    <th style=\"width:10%\">항목</th>\
    <th style=\"width:25%\">부연설명</th>\
    <th style=\"width:45%\">직접 작성</th>\
</tr>\
<tr>\
    <th  rowspan="11">영유아 용품</th>\
    <th>품명 및모델명</th>\
    <td>제품의 종류 및 모델명을 모두 기재 </td>\
    <td></td>\
</tr>\
<tr>\
    <th>KC인증 필유무</th>\
    <td>어린이제품 안전 특별법 상 안전인증대상어린이제품/안전확인대상어린이제품/공급자적합성확인대상에 한해 입력</td>\
    <td></td>\
</tr>\
<tr>\
    <th>크기, 중량</th>\
    <td>가로, 세로, 높이 등 제품 정보 입력 </td>\
    <td></td>\
</tr>\
<tr>\
    <th>색상 </th>\
    <td>색상이 분명하지 않은 경우 "상세이미지 참조" 기재  </td>\
    <td></td>\
</tr>\
<tr>\
    <th>재질</th>\
    <td>섬유의 경우 혼용률 입력 </td>\
    <td></td>\
</tr>\
<tr>\
    <th>사용연령 또는 체중범위</th>\
    <td>어린이제품 안전 특별법에 따라 표시해야 하는 사항은 반드시 입력 </td>\
    <td></td>\
</tr>\
<tr>\
    <th>제조자(수입자)</th>\
    <td>제조자: 리워드를 제작하는 업체 수입자: 수입신고필증 상 수입업체 </td>\
    <td></td>\
</tr>\
<tr>\
    <th>제조국</th>\
    <td>정식 국가명을 표기 </td>\
    <td></td>\
</tr>\
<tr>\
    <th>취급방법 및 취급 시 주의사항, 안전표시</th>\
    <td>주의, 경고 등 입력</td>\
    <td></td>\
</tr>\
<tr>\
    <th>품질보증기준 </th>\
    <td>예) 관련법 및 소비자분쟁해결 기준에 따름 </td>\
    <td></td>\
</tr>\
<tr>\
    <th>A/S 책임자와 전화번호</th>\
    <td>담당자 이름 표기가 어려울 경우, 업체명 입력</td>\
    <td></td>\
</tr>\
</table>';
var books = '<table style="width:100%">\
<tr>\
    <th style=\"width:7%\">리워드 종류</th>\
    <th style=\"width:10%\">항목</th>\
    <th style=\"width:25%\">부연설명</th>\
    <th style=\"width:45%\">직접 작성</th>\
</tr>\
<tr>\
    <th  rowspan="9">서적</th>\
    <th>도서명 </th>\
    <td></td>\
    <td></td>\
</tr>\
<tr>\
   <th>저자, 출판사 </th>\
    <td>저자와 출판사를 기재</td>\
    <td></td>\
</tr>\
<tr>\
   <th>크기 </th>\
    <td>가로, 세로, 두께 정보 표시(전자책의 경우 파일의 용량 입력)</td>\
    <td></td>\
</tr>\
<tr>\
   <th>쪽수  </th>\
    <td>전자책의 경우 제외</td>\
    <td></td>\
</tr>\
<tr>\
   <th>제품 구성 </th>\
    <td>전집 또는 세트일 경우 낱권 구성, CD등 입력</td>\
    <td></td>\
</tr>\
<tr>\
   <th>출간일  </th>\
    <td>서적의 출간정보를 기재</td>\
    <td></td>\
</tr>\
<tr>\
   <th rowspan="2">목차 또는 책 소개</th>\
    <td rowspan="2">아동용 학습교재의 경우 사용연령을 포함하여 입력</td>\
    <td></td>\
</tr>\
<tr>\
    <td></td>\
</tr>\
</table>';
var Digital = '<table style="width:100%">\
<tr>\
    <th style=\"width:7%\">리워드 종류</th>\
    <th style=\"width:10%\">항목</th>\
    <th style=\"width:25%\">부연설명</th>\
    <th style=\"width:45%\">직접 작성</th>\
</tr>\
<tr>\
    <th rowspan="6">디지털 콘텐츠(음원, 게임, 인터넷강의 등)</th>\
    <th>제작자 또는 공급자</th>\
    <td>제작업체 또는 공급업체 상호 또는 이름 기재 </td>\
    <td></td>\
</tr>\
<tr>\
    <th>이용조건,이용기간</th>\
    <td>서비스 이용기간을 서포터들이 알 수 있도록 구체적으로 표시</td>\
    <td></td>\
</tr>\
<tr>\
    <th>상품 제공방식 </th>\
    <td>CD, 다운로드, 실시간 스트리밍 등 입력 </td>\
    <td></td>\
</tr>\
<tr>\
    <th>최소 시스템 사양, 필수 소프트웨어</th>\
    <td></td>\
    <td></td>\
</tr>\
<tr>\
    <th>청약철회 또는 계약의 해제・해지에 따른 효과</th>\
    <td>예) 관련법 및 소비자분쟁해결기준에 따름 </td>\
    <td></td>\
</tr>\
<tr>\
    <th>소비자상담 관련 전화번호</th>\
    <td></td>\
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
    Precious,
    Food,
    Health,
    processed,
    Infant,
    books,
    Digital
];
$(function () {
    $("#Reward-documents").change(function () {
        var val = $(this).val();
        CKEDITOR.instances["editor1"].setData(item[val]);
    });
});