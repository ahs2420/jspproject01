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
    String fileName = "orderTemplate.csv";

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
%>주문번호,이름,송장번호,택배사코드
<c:forEach items="${ovoList}" var="ovo">${ovo.id},${ovo.uname},${ovo.delivery_id},${ovo.delivery_number},
</c:forEach>


