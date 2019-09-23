package cz.zl.bd.serivse.impl;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import cz.zl.bd.dao.tuibao;
import cz.zl.bd.pojo.tuibaoinfo;
@Service
@Transactional
public class tuibaoserviceimpl implements tuibaoservice{
	@Autowired
	private tuibao TuiBao;
	@Override
	public List<tuibaoinfo> GetTuibaoInfo(int pagenum) {
		// TODO Auto-generated method stub
		return TuiBao.GetTuiBaoInfo(pagenum);
	}
	@Override
	public int GetAllTuiBaoCount() {
		return TuiBao.GetTuiBaoCount();
	}
	@Override
	public void TuiBaoByBaoDanHao(Integer baodanhao) {
		//1.根据保单id将报单表中的id删除
		TuiBao.TuiBaoByBaodanId(baodanhao);
	}
	
	
	
	public static void main(String[] args) throws ParseException {
		tuibaoserviceimpl ll=new tuibaoserviceimpl();
		String returndata=ll.Calculator("2019-9-10 06:11:22",(float) 4000);
		System.out.println("返回值是:"+returndata);
	}
	
	
	
	
	
	
	//计算退多少钱给用户,输入(1.购保时间:'2019-9-2 06-11-22',2.购保费用:'2322￥'),输出(String:'超过天数-扣除费用-退还费用')
	@Override
	public String Calculator(String BuyTime,float BaoFei) throws ParseException {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		long time = simpleDateFormat.parse(BuyTime).getTime();
		//获取当前时间
		long t1=System.currentTimeMillis();
		int days=(int) ((t1-time)/(24*60*60*1000));
		System.out.println("相差天数是:"+days);
		 
		String ReturnData=null;
		if(days<=7) {
			//System.out.println("未超过犹豫期,全额退还:"+BaoFei+"元");
			ReturnData="0-"+"0-"+BaoFei;
		}else {
			float kouchu=(float) (BaoFei*0.02*(days-7));
			float refund=(float)(BaoFei-(BaoFei*0.02*(days-7)));
			if(refund<0) {
				System.out.println("超过犹豫期"+days+"天需要扣除手续费"+(BaoFei*0.02*(days-7))+"共退还:"+0+"元");
				ReturnData=days+"-"+kouchu+"-"+0;
			}else {
				System.out.println("超过犹豫期"+days+"天需要扣除手续费"+(BaoFei*0.02*(days-7))+"共退还:"+refund+"元");
				ReturnData=days+"-"+kouchu+"-"+refund;
			}
		}
		return ReturnData;
	}
}














