package cz.zl.bd.pojo;

import java.io.Serializable;
/**
 * 审核人员
 * @author MECHREVO
 *
 */

public class Auditor_list implements Serializable {
	
	private Integer Auditor_number;//审核人员编号
	private String Auditor_account_number;//审核人员账号
	private String Auditor_pwd;//审核人员密码
	private String Auditor_name;//审核人员姓名
	
	public Integer getAuditor_number() {
		return Auditor_number;
	}
	public void setAuditor_number(Integer auditor_number) {
		Auditor_number = auditor_number;
	}
	public String getAuditor_account_number() {
		return Auditor_account_number;
	}
	public void setAuditor_account_number(String auditor_account_number) {
		Auditor_account_number = auditor_account_number;
	}
	public String getAuditor_pwd() {
		return Auditor_pwd;
	}
	public void setAuditor_pwd(String auditor_pwd) {
		Auditor_pwd = auditor_pwd;
	}
	public String getAuditor_name() {
		return Auditor_name;
	}
	public void setAuditor_name(String auditor_name) {
		Auditor_name = auditor_name;
	}
	
	

}
