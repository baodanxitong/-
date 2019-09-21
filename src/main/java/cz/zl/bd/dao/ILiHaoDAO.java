package cz.zl.bd.dao;
import java.util.List;

import cz.zl.bd.pojo.Info;
import cz.zl.bd.pojo.Insurance;

public interface ILiHaoDAO {
	//前台个人中心信息展示
	public List<Info> findInfo(Integer cid);
	
	//后台业务员显示
	public List<Info> findhoutai(Integer cid);

	//用户保单详情展示
	public Insurance findInsurance(Integer insurance_id);
	
}
