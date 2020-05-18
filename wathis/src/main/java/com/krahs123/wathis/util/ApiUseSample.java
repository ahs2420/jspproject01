package com.krahs123.wathis.util;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Map;

public class ApiUseSample {
	/*
	 String apiUrl -> api 주소
	 Map<String,Object> header -> 헤더에 넣을 값
	 Map<String,Object> value -> 넘겨줄 값
	 boolean bUrlEncode -> url 인코딩 사용 여부
	 */
	public String getApi(String apiUrl,Map<String,Object> header,Map<String,Object> value,boolean bUrlEncode) {
		StringBuffer sb = new StringBuffer();//출력할 값(String으로 출력할거임 -> 쓰는데서 JSON 파싱 등 처리 필)
	    StringBuilder uri= new StringBuilder();// 넘겨줄 값
		try {

            if(value!=null) {
				if(bUrlEncode) {
					//url 인코딩이 전부 필요하면
					for(String key:value.keySet()) {
						uri.append(key+"="+URLEncoder.encode(value.get(key).toString(), "UTF-8")+"&");
					}
				}else {
					//url 인코딩이 필요없다면
					for(String key:value.keySet()) {
						uri.append(key+"="+value.get(key)+"&");
					}
				}
            }
			URL url = null;
			if(!uri.toString().equals("")) {
				url = new URL(apiUrl+uri);
			}else {
				url = new URL(apiUrl);
			}
			
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            if(header!=null) {
                for(String key:header.keySet()) {
                	//헤더에 넣을 값이 있을떼
                	con.setRequestProperty(key, header.get(key).toString());
                }
            }
            
            int responseCode = con.getResponseCode();// api호출 상태
            BufferedReader br;
            if(responseCode==200) { // 정상 호출 되면
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            while ((inputLine = br.readLine()) != null) {
            	//api에서 받은 값을 String 으로 받음
                sb.append(inputLine);
            }
            br.close();
            
        } catch (Exception e) {
            sb.append(e);
        }finally {
        }
	    return sb.toString();
	}
	public String postApi(String apiUrl,Map<String,Object> header,Map<String,Object> value,boolean bUrlEncode) {
		StringBuffer sb = new StringBuffer();//출력할 값(String으로 출력할거임 -> 쓰는데서 JSON 파싱 등 처리 필)
	    StringBuilder uri= new StringBuilder();// 넘겨줄 값

        try {
            // 넘겨줄 값 넣음(get과 같음)
            if(value!=null) {
				if(bUrlEncode) {
					//url 인코딩이 전부 필요하면
					for(String key:value.keySet()) {
						uri.append(key+"="+URLEncoder.encode(value.get(key).toString(), "UTF-8")+"&");
					}
				}else {
					//url 인코딩이 필요없다면
					for(String key:value.keySet()) {
						uri.append(key+"="+value.get(key)+"&");
					}
				}
            }
            String apiURL = apiUrl;
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("POST");
            if(header!=null) {
                for(String key:header.keySet()) {
                	//헤더에 넣을 값이 있을떼
                	con.setRequestProperty(key, header.get(key).toString());
                }
            }
            
            // post request
            con.setDoOutput(true);
            DataOutputStream wr = new DataOutputStream(con.getOutputStream());
            wr.writeBytes(uri.toString());//uri 값을 받아서 넣어서 처리
            wr.flush();
            wr.close();
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            while ((inputLine = br.readLine()) != null) {
                sb.append(inputLine);
            }
            br.close();
        } catch (Exception e) {
        	sb.append(e);
        }
        sb.append("test");
		return sb.toString();
	}

}



