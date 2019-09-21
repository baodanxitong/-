package cz.zl.bd.dao;

import java.util.List;

import cz.zl.bd.pojo.UserApply;

public interface ApplyDAO {
	public List<UserApply> selectall();
	public boolean charu(UserApply app);
}
