package cz.zl.bd.pojo;

import java.io.Serializable;

/**
 *投保人表
 * @author MECHREVO
 *
 */
public class Toubao implements Serializable {
	
	private Integer toubao_id;//投保人信息表ID
	private String taobao_name;//投保人名字
	private String id_card;//投保人身份证号码
	private String phone;//投保人手机号码
	private String email;//投保人邮箱
	private String city;//常住城市
	public Integer getToubao_id() {
		return toubao_id;
	}
	public void setToubao_id(Integer toubao_id) {
		this.toubao_id = toubao_id;
	}
	public String getTaobao_name() {
		return taobao_name;
	}
	public void setTaobao_name(String taobao_name) {
		this.taobao_name = taobao_name;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	

}
