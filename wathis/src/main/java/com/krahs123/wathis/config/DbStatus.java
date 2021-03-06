package com.krahs123.wathis.config;

import java.util.HashMap;
import java.util.Map;

public class DbStatus {
	//설정 파일 삽입
	final public static String[] ugroup= {"사용자","관리자"};
	//회원그룹(0:사용자,1:관리자)
	final public static String[] ustatus= {"탈퇴","정상","정지"}; 
	//상태(0:탈퇴,1:정상,2:정지)
	final public static String[] payType= {"계좌이체","카드","포인트"}; 
	//결제타입(0:계좌이체,1:카드,2:포인트)
	final public static String[] orderState= {"취소","펀딩중","결제대기중","결제완료","배송중","배송완료"};
	//주문상태(0:취소,1:펀딩중,2:결제대기중,3:결제완료(배송대기중),4:배송중,5:배송완료)
	final public static String[] productStatus = {"숨김","예정상품","펀딩중","펀딩성공","펀딩실패"};
	//상품 상태 0: 숨김처리 1: 예정상품 2: 펀딩중 3: 펀딩성공 4: 펀딩실패
	final public static String[] optionType = {"옵션없음","선택 옵션(사이즈, 색상 등)","직접입력 옵션(각인,메시지 등)"};
	//0: 옵션없음, 1: 선택형옵션,2: 서술형옵션
	final public static String[] auditStatus = {"반려","작성중","심사중","승인"};
	//심사 상태 0:반려 1:작성중 2:심사중 3:승인
	final public static String[] popupStatus = {"숨김","표시"};
	//팝업 상태 0: 숨김처리 1: 표시
	final public static String[] makerType = {"개인","개인 사업자","법인사업자"};
	//메이커 사업자 구분 0: 개인 1: 개인 사업자 2: 법인사업자
	
}
