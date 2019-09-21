package cz.zl.bd.dao;
import java.util.List;

import cz.zl.bd.pojo.Info;

public interface ILiHaoDAO {
	//个人中心信息展示
	public List<Info> findInfo();

	/*//用户保单展示
	public List<Insurance> findInsurance();*/
	
}
