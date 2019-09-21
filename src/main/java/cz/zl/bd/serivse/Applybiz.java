package cz.zl.bd.serivse;

import java.util.List;

import cz.zl.bd.pojo.UserApply;

public interface Applybiz {
	public List<UserApply> selectall();
	public boolean charu(UserApply app);
}
