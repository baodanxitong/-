package cz.zl.bd.serivse;

import java.util.List;

import cz.zl.bd.pojo.Admin_Settlement;
import cz.zl.bd.pojo.Beibao;
import cz.zl.bd.pojo.Toubao;
import cz.zl.bd.pojo.Auditor_list;
import cz.zl.bd.pojo.User_apply;

public interface IAuditorService {
	
public Auditor_list findbyid(String Auditor_account_number);
	
	public boolean insertall(Auditor_list aidtiorlist);
	
	public List<User_apply> findall();
	
	public User_apply findByUserId(Integer applyid);
	
	public Toubao findByToubao(Integer toubao_id);
	
	public Beibao findByBeibao(Integer beibao_id);
	
	public boolean insertBySettlement(Admin_Settlement adminsett);
	
	public boolean deleteByUser(Integer applyid);

}
