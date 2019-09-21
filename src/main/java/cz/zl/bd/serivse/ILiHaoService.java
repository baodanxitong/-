package cz.zl.bd.serivse;

import java.util.List;

import cz.zl.bd.pojo.Info;

public interface ILiHaoService {

	//个人中心信息展示
		public List<Info> findInfo();
}
