package cz.zl.bd.dao;
import java.util.List;
import cz.zl.bd.pojo.tuibaoinfo;
public interface tuibao {
	//分页查询可以退保保单
	public List<tuibaoinfo> GetTuiBaoInfo(int pagenum);
	//查询所有可退保单数量
	public int GetTuiBaoCount();
	//根据保单ID删除保单
	public void TuiBaoByBaodanId(Integer baodanhao);
}
