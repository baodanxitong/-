package cz.zl.bd.dao;

import java.util.List;

import cz.zl.bd.pojo.Admin_Settlement;
import cz.zl.bd.pojo.Beibao;
import cz.zl.bd.pojo.Toubao;
import cz.zl.bd.pojo.Auditor_list;
import cz.zl.bd.pojo.User_apply;

public interface IAuditorDAO {
	
		//审核人员登录
		public Auditor_list findbyid(String Auditor_account_number);
		
		//审核人员注册
		public boolean insertall(Auditor_list aidtiorlist);
		
		//查询所有理赔申请
		public List<User_apply> findall();
		
		//根据申请理赔的ID查询理赔信息
		public User_apply findByUserId(Integer applyid);
		
		//生成理赔成功信息表
		public boolean insertBySettlement(Admin_Settlement adminsett);
		
		//根据投保人ID去获取投保人名字和身份证号码
		public Toubao findByToubao(Integer toubao_id);
		
		//根据配包人ID去获取被保人名字
		public Beibao findByBeibao(Integer beibao_id);
		
		//审核成功删除理赔申请表信息
		public boolean deleteByUser(Integer applyid);

}
