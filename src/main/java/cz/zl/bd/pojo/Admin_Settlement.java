package cz.zl.bd.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * 管理~理赔表
 * @author MECHREVO
 *
 */
public class Admin_Settlement implements Serializable {
	
	private Integer id;//理赔成功表ID
	private Integer applyid;//申请单ID
	private String tao_name;//投保人姓名
	private String beibao_name;//被保人姓名
	private String id_card;//投保人身份证号码
	private Date apply_date;//申请理赔时间
	private Double money;//理赔金额
	public Double getMoney() {
		return money;
	}
	public void setMoney(Double money) {
		this.money = money;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getApplyid() {
		return applyid;
	}
	public void setApplyid(Integer applyid) {
		this.applyid = applyid;
	}
	public String getTao_name() {
		return tao_name;
	}
	public void setTao_name(String tao_name) {
		this.tao_name = tao_name;
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
	public Date getApply_date() {
		return apply_date;
	}
	public void setApply_date(Date apply_date) {
		this.apply_date = apply_date;
	}

}
