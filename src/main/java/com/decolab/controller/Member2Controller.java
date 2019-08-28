package com.decolab.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.decolab.domain.Member2VO;
import com.decolab.service.Member2Service;

@Controller
@RequestMapping("/member/*")
public class Member2Controller {
	
	private static final Logger logger = LoggerFactory.getLogger(Member2Controller.class);

	@Inject
	private Member2Service service2;
	
		//일반회원가입
		@RequestMapping(value = "/signin", method = RequestMethod.GET)
		public void registerGET(Member2VO vo,Model model) throws Exception {
			logger.info("sign get ...........");
		}
		@RequestMapping(value = "/signin", method = RequestMethod.POST)
		public String registPOST(Member2VO vo, RedirectAttributes rttr) throws Exception {
			logger.info("regist post ...........");
			
			service2.insertMember(vo);
			
			return "redirect:/";
		}
		//판매자 회원가입
		@RequestMapping(value = "/sellersignin", method = RequestMethod.GET)
		public void sellerGET(Member2VO vo,Model model) throws Exception {
			logger.info("seller get ...........");
		}
		
		@RequestMapping(value = "/sellersignin", method = RequestMethod.POST)
		public String sellerPOST(Member2VO vo, RedirectAttributes rttr) throws Exception {
			logger.info("seller post ...........");
			
			service2.insertSMember(vo);
			
			return "redirect:/";
		}
		//로그인페이지이동
			@RequestMapping(value = "/login")
			public String login() {
				return "/member/login";
			}
		//로그인처리
		@RequestMapping(value = "/loginPost")
		public  ModelAndView loginPOST(@ModelAttribute Member2VO vo2, HttpSession session,Model model) throws Exception {
			
			boolean result = service2.login2(vo2,session);
			ModelAndView mav = new ModelAndView();
			
			if (result == true) {
				mav.setViewName("home");
				
			}else {
				mav.setViewName("/member/login");
			}
			logger.info("LOG post ...........");
			return mav;
		}
		//로그아웃
		@RequestMapping(value = "/logout")
		public ModelAndView logout(HttpSession session) {
			service2.logout(session);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("home");
			return mav;
		}
		//회원수정
		@RequestMapping(value = "/modify",method = RequestMethod.GET)
		public String Modify(@ModelAttribute Member2VO vo2) throws Exception {
			return "/member/modify";
		}
		@RequestMapping(value = "/modify",method = RequestMethod.POST)
		public String memberModify(@ModelAttribute Member2VO vo2,HttpSession session) throws Exception {
			service2.modifyMember(vo2);
			service2.login2(vo2,session);
			return "redirect:/";
		}
		//회원수정
		@RequestMapping(value = "/sellermodify",method = RequestMethod.GET)
		public String sModify(@ModelAttribute Member2VO vo2) throws Exception {
			return "/member/sellermodify";
		}
		@RequestMapping(value = "/sellermodify",method = RequestMethod.POST)
		public String sellerModify(@ModelAttribute Member2VO vo2,HttpSession session) throws Exception {
			service2.modifyMember(vo2);
			service2.login2(vo2,session);
			return "redirect:/";
		}
		//
		@RequestMapping(value = "/info",method = RequestMethod.GET)
		public void read(@RequestParam("mem_id") String mem_id, Model model) throws Exception {
		model.addAttribute(service2.read(mem_id));
		}
		@RequestMapping("/getAttach/{mem_id}")
		@ResponseBody
		public List<String> getAttach(@PathVariable("mem_id")String mem_id)throws Exception{

			return service2.getAttach(mem_id);
		}
}
