package cz.zl.bd.pojo;

import java.io.Serializable;

/**
 * 被保人表
 * @author MECHREVO
 *
 */
public class Beibao implements Serializable {
	
	private Integer beibao_id;//被保人信息表ID
	private String relation;//投保人与被保人关系
	private String beibao_name;//被保人姓名
	private String id_card;//被保人身份证号码
	private String phone;//被保人手机号码
	public Integer getBeibao_id() {
		return beibao_id;
	}
	public void setBeibao_id(Integer beibao_id) {
		this.beibao_id = beibao_id;
	}
	public String getRelation() {
		return relation;
	}
	public void setRelation(String relation) {
		this.relation = relation;
	}
	public String getBeibao_name() {
		return beibao_name;
	}
	public void setBeibao_name(String beibao_name) {
		this.beibao_name = beibao_name;
	}
	public String getId_card() {
		return id_card;
	}
	public void setId_card(String id_card) {
		this.id_card = id_card;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	

}
