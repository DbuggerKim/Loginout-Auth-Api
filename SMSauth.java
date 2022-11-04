package sms;

import java.util.HashMap;
import org.json.simple.JSONObject;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class SMSauth {
	//쿨에스엠에스 계정 생성 후 발급 받아 sms 전송 기능 import
	private String api_key = "key"; 
	private String api_secret = "secret";
	private String phone_num = "num";
	private String auth_num = "authnumi";
	
	/*public static void main(String[] args){
		SMSauth smsAUTH = new SMSauth();
		boolean flag=smsAUTH.authnum_check("2341");
		if (flag==true) {
			System.out.print("YES");
		}
	}*/
	
	public SMSauth() {
		auth_num="authnum";
	}
	
	public void send_sms() {
		 // 4 params(to, from, type, text) are mandatory. must be filled
	    Message coolsms = new Message(api_key, api_secret);
	    HashMap<String, String> params = new HashMap<String, String>();
	    params.put("to", phone_num);	// 수신전화번호
	    params.put("from", phone_num);	// 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
	    params.put("type", "SMS");
	    params.put("text", auth_num);
	    params.put("app_version", "test app 1.2"); // application name and version
	    try {
	      JSONObject obj = (JSONObject) coolsms.send(params);
	      System.out.println(obj.toString());
	    } catch (CoolsmsException e) {
	      System.out.println(e.getMessage());
	      System.out.println(e.getCode());
	    }
	}
	
	public boolean authnum_check(String authnum) {
		try {
			if (authnum.equals(auth_num)) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public String getPhoneNUM() {
		return phone_num;
	}
	public void setPhoneNUM(String phone_num) {
		this.phone_num = phone_num;
	}
	
}
