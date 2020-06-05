package com.krahs123.wathis.util;

public class HtmlSpecialChar {
	public static String encodeString(String str) {
		//특수문자가 그대로 sql에 들어가지 못하게 수정
		str=str.replace("<", "&lt;");
		//태그가 그대로 들어가지 못하게 수정(html special char로 변경)
		str=str.replace(">", "&gt;");
		//태그가 그대로 들어가지 못하게 수정(html special char로 변경)
		str=str.replace(" ", "&nbsp;");
		//공백이 그대로 들어가지 못하게 수정(html special char로 변경)
		str=str.replace("\n", "<br />");
		//한줄 띄우는 것을 html 에서 적용 되게 <br /> 로 수정
		str=str.replace("\\", "&apos;");
		//역슬레쉬를 그대로 들어가지 못하게 수정(html special char로 변경)
		str=str.replace("\"", "&quot;");
		//쌍따옴표가 그대로 들어가지 못하게 수정(html special char로 변경)
		str=str.replace("\'", "&lsquo;");
		//따옴표가 그대로 들어가지 못하게 수정(html special char로 변경)
		return str;
	}
	public static String decodeString(String str) {
		//단, 에디터로 적은거는 그대로 출력되야 되므로 decode작성
		str=str.replace("&lt;","<");
		//태그가 그대로 출력 되게 변경(cke 같은거는 그대로 출력되야됨...)
		str=str.replace("&gt;",">");
		//태그가 그대로 출력 되게 변경(cke 같은거는 그대로 출력되야됨...)
		str=str.replace("<sctipt","&lt;script");
		//근데 스크립트는 안되...
		str=str.replace("</sctipt","&lt;/script");
		//근데 스크립트는 안되...
		str=str.replace("<br />","\n");
		//한줄 띄우는 것을 html 에서 적용 되게 <br /> 로 수정
		str=str.replace("&nbsp;", " ");
		//공백이 그대로 들어가지 못하게 수정(html special char로 변경)
		str=str.replace("&apos;","\\");
		//역슬레쉬를 그대로 들어가지 못하게 수정(html special char로 변경)
		str=str.replace("&quot;","\"");
		//쌍따옴표가 그대로 들어가지 못하게 수정(html special char로 변경)
		str=str.replace("&lsquo;","\'");
		//따옴표가 그대로 들어가지 못하게 수정(html special char로 변경)
		return str;
	}
	public static String removeTag(String html) throws Exception {
		String regex1 = "\\<.*?\\>";
		return html.replaceAll(regex1, "");
	}
	public static String encodeEnter(String str){
		str=str.replace("\n", "|");
		return str;
	}
}
