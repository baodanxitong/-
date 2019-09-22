package cz.zl.bd.pojo;

import java.io.Serializable;
import java.util.Date;

public class Insurance implements Serializable {

	private Integer insurance_id;//主键
	private String product_name;//产品名称
	private String toubao_name;//投保人姓名
	private String toubao_id_card;//投保人身份证号码 
	private String toubao_phone;//投保人手机号码
	private String email;//投保人邮箱
	private String relation;//投保人与被保人关系
	private String beibao_name;//被保人名字
	private String beibao_id_card;//被保人身份证号码
	private String beibao_phone;//被保人手机号码
	private String style;//受益人方式
	private Double price;//保费
	private String border;//保额
	private Date start_date;//保单生效起始日
	private Date end_date;//保单生效截止日
	private Integer status;//保单生效状态,
	
	
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getToubao_name() {
		return toubao_name;
	}
	public void setToubao_name(String toubao_name) {
		this.toubao_name = toubao_name;
	}
	public String getToubao_id_card() {
		return toubao_id_card;
	}
	public void setToubao_id_card(String toubao_id_card) {
		this.toubao_id_card = toubao_id_card;
	}
	public String getToubao_phone() {
		return toubao_phone;
	}
	public void setToubao_phone(String toubao_phone) {
		this.toubao_phone = toubao_phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public String getBeibao_id_card() {
		return beibao_id_card;
	}
	public void setBeibao_id_card(String beibao_id_card) {
		this.beibao_id_card = beibao_id_card;
	}
	public String getBeibao_phone() {
		return beibao_phone;
	}
	public void setBeibao_phone(String beibao_phone) {
		this.beibao_phone = beibao_phone;
	}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getBorder() {
		return border;
	}
	public void setBorder(String border) {
		this.border = border;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	
	
}
