package com.dogshop.dog.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dogshop.dog.dao.MemberDao;
import com.dogshop.dog.vo.MemberVO;

@Controller
public class Member {
	
	@Autowired
	MemberDao mDao;
	
	@RequestMapping("/main")
	public ModelAndView main(ModelAndView mv) {
		mv.setViewName("main");
		return mv;
		}
	
	
	@RequestMapping("/")
	public ModelAndView LoginForm(ModelAndView mv, HttpSession session) {
		mv.setViewName("login");
		return mv;
		}
	
	@RequestMapping("/loginProc")
	@ResponseBody
	public Map<String, String> loginProc(MemberVO mVO, HttpSession session){
		HashMap<String, String> map = new HashMap<String, String>();
		String result = "NO";
		int cnt = mDao.getLogin(mVO);
		mVO.setCnt(cnt);
		
		if(cnt == 1) {
			session.setAttribute("SID", mVO.getId());
			result = "OK";
		}
		
		map.put("result", result);
		return map;
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(ModelAndView mv, HttpSession session) {
		session.removeAttribute("SID");
		mv.setViewName("/main");
		return mv;
		}
}
