<%@ page language="java" pageEncoding="UTF-8" buffer="20kb" trimDirectiveWhitespaces="true" %>
 <%@ page import="java.net.URLEncoder" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%!

    private String getBrowser(HttpServletRequest request) {
        String header = request.getHeader("User-Agent");
        if (header.contains("MSIE")) {
            return "MSIE";
        } else if (header.contains("Chrome")) {
            return "Chrome";
        } else if (header.contains("Opera")) {
            return "Opera";
        } else if (header.contains("Trident")) {
            return "Trident";//for IE11
        }
        return "Firefox";
    }
%>
<%
    String fileName = "orderDetail.csv";

    String header = getBrowser(request);
    if (header.contains("MSIE") || header.contains("Trident")) {
        String docName = URLEncoder.encode(fileName, "UTF-8").replaceAll("\\+", "%20");
        response.setHeader("Content-Disposition", "attachment;filename=" + docName + ";");
    } else if (header.contains("Firefox")) {
        String docName = new String(fileName.getBytes("UTF-8"), "ISO-8859-1");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + docName + "\"");
    } else if (header.contains("Opera")) {
        String docName = new String(fileName.getBytes("UTF-8"), "ISO-8859-1");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + docName + "\"");
    } else if (header.contains("Chrome")) {
        String docName = new String(fileName.getBytes("UTF-8"), "ISO-8859-1");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + docName + "\"");
    }

    response.setContentType("application/octet-stream");

    response.setHeader("Content-Transfer-Encoding", "binary;");
    response.setHeader("Pragma", "no-cache;");
    response.setHeader("Expires", "-1;");

    out.clearBuffer();
    out.print("\ufeff"); //for UTF-8 data
    //아래에 CSV 파일 내용을 출력한다.
%>주문번호,주문상태,주문자이름,주문자전화번호,배송지주소,배송지이름,배송지전화번호,배송요청사항,총결제금액,리워드 판매 금액,추가후원금,배송금액,주문일자,옵션,갯수
<c:set var="id" value="" />
<c:forEach items="${ovoList}" var="ovo"><c:choose><c:when test="${ovo.id ne id}"><c:set var="id" value="${ovo.id}" />"${ovo.id}","${orderState[ovo.state]}","${ovo.uname}","'${ovo.utel} ","${ovo.receiver_addr1}  ${ovo.receiver_addr2}  ${ovo.receiver_addr3}","${ovo.receiver_name}","'${ovo.receiver_tel}","${ovo.receiver_etc}","${ovo.payment}","${ovo.price - ovo.donation}","${ovo.donation}","${ovo.delivery_fee}","${ovo.reg_date}",</c:when><c:otherwise>"","","","","","","","","","","","","",</c:otherwise></c:choose>"${ovo.option_name}","${ovo.option_amount}"
</c:forEach>


