package cz.zl.bd.serivse.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cz.zl.bd.pojo.Admin_Settlement;
import cz.zl.bd.pojo.Beibao;
import cz.zl.bd.pojo.Toubao;
import cz.zl.bd.dao.IAuditorDAO;
import cz.zl.bd.pojo.Auditor_list;
import cz.zl.bd.pojo.User_apply;
import cz.zl.bd.serivse.IAuditorService;

@Service
public class AuditorServiceImpl implements IAuditorService {
	
	@Autowired
	private IAuditorDAO auditordao;
	

	@Override
	public Auditor_list findbyid(String Auditor_account_number) {
		if(Auditor_account_number == null || Auditor_account_number.equals("")) {
			return null;
		}
		return auditordao.findbyid(Auditor_account_number);
	}

	@Override
	public boolean insertall(Auditor_list aidtiorlist) {
		return auditordao.insertall(aidtiorlist);
	}

	@Override
	public List<User_apply> findall() {
		List<User_apply> userlist = auditordao.findall();
		return userlist;
	}

	@Override
	public boolean insertBySettlement(Admin_Settlement adminsett) {
		return auditordao.insertBySettlement(adminsett);
	}

	@Override
	public User_apply findByUserId(Integer applyid) {
		if(applyid == null) {
			return null;
		}
		return auditordao.findByUserId(applyid);
	}

	@Override
	public Toubao findByToubao(Integer toubao_id) {
		if(toubao_id == null) {
			return null;
		}
		return auditordao.findByToubao(toubao_id);
	}

	@Override
	public Beibao findByBeibao(Integer beibao_id) {
		if(beibao_id == null) {
			return null;
		}
		return auditordao.findByBeibao(beibao_id);
	}

	@Override
	public boolean deleteByUser(Integer applyid) {
		if(applyid == null) {
			return false;
		}
		return auditordao.deleteByUser(applyid);
	}

	

	

}
