package cz.zl.bd.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * 理赔申请表
 * @author MECHREVO
 *
 */

public class User_apply implements Serializable {
	
	private Integer applyid;//申请单ID
	private String apply_name;//申请人姓名
	private String relationship;//与被保人关系
	private String apply_phone;//申请人联系电话
	private String bank_deposit;//开户银行
	private String bank_name;//户名
	private String bank_num;//银行账号
	private Date apply_date;//申请时间
	private String settlementstate;//状态
	private String hospital_url;//就诊证明路径
	private String url_a;//其他资料路径
	private String url_b;//其他资料路径
	private String url_c;//其他资料路径
	private Integer beibao_id;//被保人表ID
	private Integer insurance_id;//保单表ID
	public Integer getApplyid() {
		return applyid;
	}
	public void setApplyid(Integer applyid) {
		this.applyid = applyid;
	}
	public String getApply_name() {
		return apply_name;
	}
	public void setApply_name(String apply_name) {
		this.apply_name = apply_name;
	}
	public String getRelationship() {
		return relationship;
	}
	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}
	public String getApply_phone() {
		return apply_phone;
	}
	public void setApply_phone(String apply_phone) {
		this.apply_phone = apply_phone;
	}
	public String getBank_deposit() {
		return bank_deposit;
	}
	public void setBank_deposit(String bank_deposit) {
		this.bank_deposit = bank_deposit;
	}
	public String getBank_name() {
		return bank_name;
	}
	public void setBank_name(String bank_name) {
		this.bank_name = bank_name;
	}
	public String getBank_num() {
		return bank_num;
	}
	public void setBank_num(String bank_num) {
		this.bank_num = bank_num;
	}
	public Date getApply_date() {
		return apply_date;
	}
	public void setApply_date(Date apply_date) {
		this.apply_date = apply_date;
	}
	public String getSettlementstate() {
		return settlementstate;
	}
	public void setSettlementstate(String settlementstate) {
		this.settlementstate = settlementstate;
	}
	public String getHospital_url() {
		return hospital_url;
	}
	public void setHospital_url(String hospital_url) {
		this.hospital_url = hospital_url;
	}
	public String getUrl_a() {
		return url_a;
	}
	public void setUrl_a(String url_a) {
		this.url_a = url_a;
	}
	public String getUrl_b() {
		return url_b;
	}
	public void setUrl_b(String url_b) {
		this.url_b = url_b;
	}
	public String getUrl_c() {
		return url_c;
	}
	public void setUrl_c(String url_c) {
		this.url_c = url_c;
	}
	public Integer getBeibao_id() {
		return beibao_id;
	}
	public void setBeibao_id(Integer beibao_id) {
		this.beibao_id = beibao_id;
	}
	public Integer getInsurance_id() {
		return insurance_id;
	}
	public void setInsurance_id(Integer insurance_id) {
		this.insurance_id = insurance_id;
	}
	
	
	
	

}
