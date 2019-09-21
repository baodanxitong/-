package cz.zl.bd.serivse.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cz.zl.bd.dao.ApplyDAO;
import cz.zl.bd.pojo.UserApply;
import cz.zl.bd.serivse.Applybiz;
@Service
public class ApplybizImpl implements Applybiz {
	@Autowired
	private ApplyDAO applydao;
	@Override
	public List<UserApply> selectall() {
		
		return applydao.selectall();
	}
	@Override
	public boolean charu(UserApply app) {
		
		return applydao.charu(app);
	}
	

}
