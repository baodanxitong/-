package cz.zl.bd.controller.shenhe;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cz.zl.bd.pojo.Admin_Settlement;
import cz.zl.bd.pojo.Beibao;
import cz.zl.bd.pojo.Toubao;
import cz.zl.bd.pojo.Auditor_list;
import cz.zl.bd.pojo.User_apply;
import cz.zl.bd.serivse.IAuditorService;

@Controller
@RequestMapping("/ac")
public class AuditorController {
	
	
	
	@Autowired
	private IAuditorService auditorService;
	
	@RequestMapping(value = "findById")
	public String findById(HttpServletRequest request,String Auditor_account_number,String Auditor_pwd) throws Exception {
		System.out.println("111");
		Auditor_list auditorList = auditorService.findbyid(Auditor_account_number);
		System.out.println(auditorList.getAuditor_name());
		System.out.println(auditorList.getAuditor_number());
		System.out.println(Auditor_account_number);
		System.out.println(Auditor_pwd);
		if(Auditor_pwd.equals(auditorList.getAuditor_pwd())) {
			System.out.println("222");
			request.getSession().setAttribute("Auditor", auditorList);
			System.out.println("333");
			/* return "redirect:/ac/findall"; */
			return "redirect:/ac/findall";
		}
		return "index";
	}
	
	@RequestMapping(value = "insterall")
	public String insterall(String Auditor_account_number,String Auditor_pwd,String Auditor_name) throws Exception {
		Auditor_list auditorList = new Auditor_list();
		auditorList.setAuditor_account_number(Auditor_account_number);
		auditorList.setAuditor_name(Auditor_name);
		auditorList.setAuditor_pwd(Auditor_pwd);
		return "index";
	}
	
	@RequestMapping(value = "findall")
	public String findall(Model model) {
		List<User_apply> userlist = auditorService.findall();
		model.addAttribute("userlist", userlist);
		return "tables";
	}
	
	@RequestMapping(value = "insertBySettlement")
	public String insertBySettlement(Admin_Settlement admin,Integer applyid,Double money) {
		User_apply users = auditorService.findByUserId(applyid);
		Toubao toubao = auditorService.findByToubao(users.getInsurance_id());
		Beibao beibao = auditorService.findByBeibao(users.getBeibao_id());
		admin.setApply_date(users.getApply_date());
		admin.setApplyid(applyid);
		admin.setBeibao_name(beibao.getBeibao_name());
		admin.setTao_name(toubao.getTaobao_name());
		admin.setId_card(toubao.getId_card());
		admin.setMoney(money);
		boolean flag = auditorService.insertBySettlement(admin);
		if(!flag) {
			boolean flage = auditorService.deleteByUser(applyid);
			if(!flage) {
				return "redirect:/ac/findall";
			}
			return "Admin";
		}
		return "redirect:/ac/findall";
	}
	
	@RequestMapping(value = "findByUser")
	public String findByUserId(Integer applyid,Model model) {
		User_apply userapply = auditorService.findByUserId(applyid);
		model.addAttribute("userapply", userapply);
		return "Admin";
	}
	

	
	
	 

}
