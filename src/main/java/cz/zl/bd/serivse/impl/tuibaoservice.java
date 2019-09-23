package cz.zl.bd.serivse.impl;
import java.text.ParseException;
import java.util.List;
import java.util.Map;
import cz.zl.bd.pojo.tuibaoinfo;
public interface tuibaoservice {
	//查询所有退保申请
	public List<tuibaoinfo> GetTuibaoInfo(int pagenum);
	//查询所有退保申请数量
	public int GetAllTuiBaoCount();
	//根据保单号删除保单
	public void TuiBaoByBaoDanHao(Integer baodanhao);
	//根据退保规则计算能退多少钱
	public String Calculator(String BuyTime,float BaoFei) throws ParseException;
}

