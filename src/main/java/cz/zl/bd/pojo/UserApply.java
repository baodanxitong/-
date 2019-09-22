package cz.zl.bd.pojo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class UserApply implements Serializable {
	private Integer applyid;
	private String applyname;
	private String relationship;
	private String applyphone;
	private String bankdeposit;
	private String bankname;
	private Long banknum;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")  
	private Date applydate;
	private Integer settlementstate;
	private String hospital_url;
	private String urlA;
	private String urlB;
	private String urlC;
	private Integer beibaoId;
	private Integer insuranceId;
	public Integer getApplyid() {
		return applyid;
	}
	public void setApplyid(Integer applyid) {
		this.applyid = applyid;
	}
	public String getApplyname() {
		return applyname;
	}
	public void setApplyname(String applyname) {
		this.applyname = applyname;
	}
	public String getRelationship() {
		return relationship;
	}
	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}
	public String getApplyphone() {
		return applyphone;
	}
	public void setApplyphone(String applyphone) {
		this.applyphone = applyphone;
	}
	public String getBankdeposit() {
		return bankdeposit;
	}
	public void setBankdeposit(String bankdeposit) {
		this.bankdeposit = bankdeposit;
	}
	public String getBankname() {
		return bankname;
	}
	public void setBankname(String bankname) {
		this.bankname = bankname;
	}
	public Long getBanknum() {
		return banknum;
	}
	public void setBanknum(Long banknum) {
		this.banknum = banknum;
	}
	public Date getApplydate() {
		return applydate;
	}
	public void setApplydate(Date applydate) {
		this.applydate = applydate;
	}
	public Integer getSettlementstate() {
		return settlementstate;
	}
	public void setSettlementstate(Integer settlementstate) {
		this.settlementstate = settlementstate;
	}
	public String getHospital_url() {
		return hospital_url;
	}
	public void setHospital_url(String hospital_url) {
		this.hospital_url = hospital_url;
	}
	public String getUrlA() {
		return urlA;
	}
	public void setUrlA(String urlA) {
		this.urlA = urlA;
	}
	public String getUrlB() {
		return urlB;
	}
	public void setUrlB(String urlB) {
		this.urlB = urlB;
	}
	public String getUrlC() {
		return urlC;
	}
	public void setUrlC(String urlC) {
		this.urlC = urlC;
	}
	public Integer getBeibaoId() {
		return beibaoId;
	}
	public void setBeibaoId(Integer beibaoId) {
		this.beibaoId = beibaoId;
	}
	public Integer getInsuranceId() {
		return insuranceId;
	}
	public void setInsuranceId(Integer insuranceId) {
		this.insuranceId = insuranceId;
	}

	
}
