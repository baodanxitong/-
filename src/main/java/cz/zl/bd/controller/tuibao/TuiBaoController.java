package cz.zl.bd.controller.tuibao;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import cz.zl.bd.pojo.tuibaoinfo;
import cz.zl.bd.serivse.impl.tuibaoservice;
@Controller
public class TuiBaoController{
	@Autowired
	//用户首次进入此方法,查询用户可退保信息
	private tuibaoservice tuibaoservice;
	@RequestMapping(value="/queryalltuibaoinfo")
	public String queryalltuibaoinfo(Model model,Map<String,Object> map){
		map=new HashMap<String,Object>();
		map.put("PageNum",1);
		System.out.println("map中的值是:"+map.get("PageNum"));
				
		List<tuibaoinfo> tuibaoinfo=tuibaoservice.GetTuibaoInfo(1);
		for(tuibaoinfo o:tuibaoinfo) {
			System.out.println(o.getEnd_date());
		}
		System.out.println("获取到的值是:"+tuibaoinfo);
	
		int tuibaocount=tuibaoservice.GetAllTuiBaoCount();
		System.out.println(tuibaoinfo);
		model.addAttribute("tuibaoinfo",tuibaoinfo);
		model.addAttribute("alltuibaocount",tuibaocount);
		model.addAttribute("pagenum",1);//pagenum前台传过来的页码
		int allpagecount=tuibaocount%4==0?tuibaocount/4:tuibaocount/4+1;
		model.addAttribute("pagecount",allpagecount);//pagecount总页数
		return "tuibao";
	}
	//分页则进入此方法
	@RequestMapping(value="/queryalltuibaoinfo/{PageNum}")
	public String queryalltuibaoinfo(Model model,@PathVariable("PageNum") Integer pagenum,Map<String,Object> map){
		System.out.println("进入分页方法:"+pagenum);
//		map.put("PageNum",PageNum);
//		System.out.println("map中的值是:"+map.get("PageNum"));
		List<tuibaoinfo> tuibaoinfo=tuibaoservice.GetTuibaoInfo(pagenum);
		//获取总页数
		int tuibaocount=tuibaoservice.GetAllTuiBaoCount();
		System.out.println(tuibaoinfo);
		model.addAttribute("tuibaoinfo",tuibaoinfo);
		model.addAttribute("alltuibaocount",tuibaocount);
		model.addAttribute("pagenum",pagenum);//pagenum前台传过来的页码
		//计算总页数
		int allpagecount=tuibaocount%4==0?tuibaocount/4:tuibaocount/4+1;
		model.addAttribute("pagecount",allpagecount);
		return "tuibao";
	}
	
	
	//退保模块,根据保单ID号删除对应保单
	@ResponseBody
	@RequestMapping(value="/tuibaobyid/{BaoDanHao}")
	public String TuiBaoByBaodanId(@PathVariable("BaoDanHao") Integer baodanhao) {
		tuibaoservice.TuiBaoByBaoDanHao(baodanhao);
		return "保单号"+baodanhao+"退保成功!";
	}
	//计算退多少钱给用户,输入(1.购保时间:'2019-9-2 06-11-22',2.购保费用:'2322￥'),输出(String:'超过天数-扣除费用-退还费用')
	@ResponseBody
	@RequestMapping(value="/CalculatorRefund/{BuyTime}/{BaoFei}")
	public String Cal_Return_Cost(@PathVariable("BuyTime") String BuyTime,@PathVariable("BaoFei") float BaoFei) throws ParseException{
		System.out.println("输入的时间是:"+BuyTime+"     保费是:"+BaoFei);
		return tuibaoservice.Calculator(BuyTime, BaoFei);
	}
}
























