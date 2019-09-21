package cz.zl.bd.controller.chakan;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cz.zl.bd.pojo.Info;
import cz.zl.bd.serivse.ILiHaoService;

@Controller
@RequestMapping("/cc")
public class ChaKanController {
	
	
	@Autowired
	private ILiHaoService lihaoService;
	
	//前端
	//跳转至个人中心页面
		@RequestMapping(value="back")
		public String back(Model model) {
			List<Info> infolist=lihaoService.findInfo();
			model.addAttribute("infolist", infolist);
			return "policy/chakan/Personal_Center";
		}
		//用户修改保单页面
		@RequestMapping(value="upinfo")
		public String upinfo() {
			return "policy/chakan/Update";
		}
		
		//跳转至保单详情页面
		@RequestMapping(value="jump")
		public String jump() {
			//调用黄涛的查询保单数据的方法
			return "policy/chakan/Policy_details";
		}
		
		//后台
		
		
		//跳转至后台首页
				@RequestMapping(value="backhoutai")
				public String backhoutai() {
					return "policy/chakan/houtai";
				}
				
				
		//跳转至业务员页面
		@RequestMapping(value="yewuyuan")
		public String yewuyuan(Model model) {
			List<Info> list=lihaoService.findInfo();
			model.addAttribute("list", list);
			return "policy/chakan/yewuyuan";
		}
		
		//跳转至保单详情页面
		@RequestMapping(value="update")
		public String update() {
			return "policy/chakan/yewuyuanupdate";
		}
		//跳转至业务员修改保单页面
		@RequestMapping(value="gotoinfo")
		public String gotoinfo() {
			return "policy/chakan/updateinfo";
		}
}
