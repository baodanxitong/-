package cz.zl.bd.controller.lipei;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonFormat;

import cz.zl.bd.pojo.UserApply;
import cz.zl.bd.serivse.Applybiz;

@Controller
@RequestMapping(value="/app")
public class Applycontroller {
	@Autowired
	private Applybiz apply;
	
	@RequestMapping(value="/ye")
	public String tiao() {//理赔页面跳转
		
		return "policy/lipei/apply";
	}
	@RequestMapping(value="/ac")
	@ResponseBody
	private List<UserApply> checkall(Model model){
		List<UserApply> d=apply.selectall();
		model.addAttribute("d", d);
		return d;
		
	}
	@RequestMapping(value="/load")
	private String upload(UserApply app,@RequestParam MultipartFile yizhen,@RequestParam MultipartFile yizhen1,@RequestParam MultipartFile yizhen2,@RequestParam MultipartFile yizhen3,HttpServletRequest request) {
		String begin=request.getSession().getServletContext().getRealPath("/images");
		MultipartFile a[]= {yizhen,yizhen1,yizhen2,yizhen3};
		String [] endname=new String[4];
		String [] newfilename=new String[4];
		System.out.println(a.length);
		for (int i = 0; i < a.length; i++) {
			endname[i]=a[i].getOriginalFilename().substring(a[i].getOriginalFilename().lastIndexOf("."));
			newfilename[i]=UUID.randomUUID().toString();
			try {
				InputStream is=a[i].getInputStream();
				OutputStream os=new FileOutputStream(new File(begin+"/"+newfilename[i]+endname[i]));
				FileCopyUtils.copy(is,os);
				//app.set("/bookimg"+newfilename+endname);
				if(i==0) {
					app.setHospital_url("/images/"+newfilename[0]+endname[0]);
				}else if(i==1) {
					app.setUrlA("/images/"+newfilename[1]+endname[1]);
				}else if(i==2) {
					app.setUrlB("/images/"+newfilename[2]+endname[2]);
				}else {
					app.setUrlC("/images/"+newfilename[3]+endname[3]);
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		//String endname=yizhen.getOriginalFilename().substring(yizhen.getOriginalFilename().lastIndexOf("."));
		//String newfilename = UUID.randomUUID().toString();
		System.out.println(app.getUrlA());
		boolean ab= apply.charu(app);
		if(ab) {
			return "/policy/lipei/a";
		}else {
		return "/policy/lipei/apply";
		}
	}
	@RequestMapping(value="/abc")
	
	private String che(Model model){
		List<UserApply> d=apply.selectall();
		model.addAttribute("d", d);
		return "/policy/lipei/a";
		
	}
}
