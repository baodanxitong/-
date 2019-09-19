package cz.zl.bd.controller.chakan;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cc")
public class ChaKanController {
	//跳转至保单详情页面
	@RequestMapping(value="jump")
	public String jump() {
		return "policy/chakan/Policy_details";
	}
	
	//跳转至个人中心页面
		@RequestMapping(value="back")
		public String back() {
			return "policy/chakan/Personal_Center";
		}
}
