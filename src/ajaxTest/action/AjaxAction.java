package ajaxTest.action;

import com.opensymphony.xwork2.ActionSupport;

public class AjaxAction extends ActionSupport {
	
	//변수만들때 iNum이라고 만들면 getiNum이라 만들어지고 intNum이라 만들면 getIntNum이라 만들어짐
	//명명규칙을 생각해보면 후자가 좋다
	private String str = "strOne";
	private int intNum = 10;
	private String[] strArray = {"a","b","c","d"};
	private int[] intArray = {1,2,3,4,5};
	
	public String ajaxTestOne(){
		System.out.println("=========");
		return SUCCESS;
	}

	public String getStr() {
		return str;
	}

	public void setStr(String str) {
		this.str = str;
	}

	public int getIntNum() {
		return intNum;
	}

	public void setIntNum(int intNum) {
		this.intNum = intNum;
	}

	public String[] getStrArray() {
		return strArray;
	}

	public void setStrArray(String[] strArray) {
		this.strArray = strArray;
	}

	public int[] getIntArray() {
		return intArray;
	}

	public void setIntArray(int[] intArray) {
		this.intArray = intArray;
	}

	
}
