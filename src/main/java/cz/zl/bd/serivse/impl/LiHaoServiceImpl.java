package cz.zl.bd.serivse.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cz.zl.bd.dao.ILiHaoDAO;
import cz.zl.bd.pojo.Info;
import cz.zl.bd.pojo.Insurance;
import cz.zl.bd.serivse.ILiHaoService;
@Service
public class LiHaoServiceImpl implements ILiHaoService {

	
	
	
	@Autowired
	private ILiHaoDAO lihaodao;
	
	//个人中心信息展示
	@Override
	public List<Info> findInfo(Integer cid) {
		return lihaodao.findInfo(cid);
	}
	
	//后台业务员显示
	@Override
	public List<Info> findhoutai(Integer cid) {
		return lihaodao.findhoutai(cid);
	}
	
	//用户保单详情展示
	@Override
	public Insurance findInsurance(Integer insurance_id) {
		return lihaodao.findInsurance(insurance_id);
	}

}
