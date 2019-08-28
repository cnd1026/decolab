package com.decolab.controller;

import java.awt.Desktop.Action;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.decolab.domain.Criteria;
import com.decolab.domain.GoodsVO;
import com.decolab.domain.PageMaker;
import com.decolab.service.GoodsService;

@Controller
@RequestMapping("/goods/*")
public class GoodsController {

	private static final Logger logger = LoggerFactory.getLogger(GoodsController.class);
	
	@Inject
	private GoodsService service;
	
	@RequestMapping(value = "/register" , method = RequestMethod.GET)
	public void register(GoodsVO goods, Model model) throws Exception{
		logger.info("register get ..............");
	}
	
	@RequestMapping(value = "/register" , method = RequestMethod.POST)
	public String registerPost(GoodsVO goods, RedirectAttributes rttr) throws Exception{
		logger.info("register post ..............");
		
		service.regist(goods);
		
		rttr.addFlashAttribute("msg","success");
		
		//리스트는 판매자용이므로 listall을 read로 바꿀예정
		return "redirect:/";
	}
	
	@RequestMapping(value = "/order", method = RequestMethod.GET)
	public void listAll(Criteria cri, Model model) throws Exception {

		logger.info("show all list......................");
		model.addAttribute("list", service.listAll());
		model.addAttribute("list", service.listCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		//pageMaker.setTotalCount(20);
		pageMaker.setTotalCount(service.listCountCriteria(cri));

		model.addAttribute("pageMaker", pageMaker);
	}
	
	@RequestMapping(value = "/processing", method = RequestMethod.GET)
	public void listAll3(Criteria cri, Model model) throws Exception {

		logger.info("show all list......................");
		model.addAttribute("list", service.listAll3());
		model.addAttribute("list2", service.listAll2());
		model.addAttribute("list", service.listCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		//pageMaker.setTotalCount(20);
		pageMaker.setTotalCount(service.listCountCriteria(cri));

		model.addAttribute("pageMaker", pageMaker);
	}
	
	@RequestMapping(value = "/finished", method = RequestMethod.GET)
	public void listAll4(Criteria cri, Model model) throws Exception {

		logger.info("show all list......................");
		model.addAttribute("list", service.listAll4());
		model.addAttribute("list2", service.listAll5());
		model.addAttribute("list", service.listCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		//pageMaker.setTotalCount(20);
		pageMaker.setTotalCount(service.listCountCriteria(cri));

		model.addAttribute("pageMaker", pageMaker);
	}
	
	//리스트 판매자들이 보는 용도
	@RequestMapping(value = "/listPage", method = RequestMethod.GET)
	public void listPage(Criteria cri, Model model) throws Exception {
		logger.info(cri.toString());
		
		model.addAttribute("list", service.listCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		//pageMaker.setTotalCount(20);
		pageMaker.setTotalCount(service.listCountCriteria(cri));

		model.addAttribute("pageMaker", pageMaker);
	}
	
	
	//구매자 목록 페이지
	@ResponseBody
		@RequestMapping(value = "/myList", method = RequestMethod.GET)
		public void myList(@RequestParam("mem_id") String mem_id, Criteria cri, Model model) throws Exception {
			//logger.info(cri.toString());
		System.out.println(mem_id);
			model.addAttribute("list", service.listCriteria(cri));
			model.addAttribute("list", service.myList(mem_id));
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(cri);
			//pageMaker.setTotalCount(20);
			pageMaker.setTotalCount(service.listCountCriteria(cri));
			System.out.println(mem_id);
			model.addAttribute("pageMaker", pageMaker);
			
		}
	
	
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void read(@RequestParam("goods_no") int goods_no, Model model) throws Exception {
		model.addAttribute(service.read(goods_no));
	}
	
	//삭제
	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String remove(@RequestParam("goods_no") int goods_no, RedirectAttributes rttr) throws Exception {
		logger.info("delete ......................");
		
		service.remove(goods_no);

		rttr.addFlashAttribute("msg", "delete_success");
		
		//견적 요청자가 삭제할 경우 홈으로 보낼것 수정요망
		return "redirect:/board/listAll";
	}
	
	// 수정
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void modifyGET(int goods_no, Model model) throws Exception {
		model.addAttribute(service.read(goods_no));
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPOST(GoodsVO goods, Criteria cri, RedirectAttributes rttr) throws Exception {

		logger.info("mod post............");

		service.modify(goods);
		rttr.addFlashAttribute("msg", "modify_success");
		rttr.addAttribute("page", cri.getPage());
		
		//이 부분도 홈으로 가도록 변경
		return "redirect:/board/listPage";
	}
	
	//makerQuery 방식 처리
	@RequestMapping(value = "/readPage", method = RequestMethod.GET)
	public void read(@RequestParam("goods_no") int goods_no, @ModelAttribute("cri") Criteria cri, Model model) throws Exception {
		//System.out.println("dada");
		//logger.info("되고 있는가...");
		model.addAttribute(service.read(goods_no));
	}
	
	@RequestMapping(value = "/removePage/", method = RequestMethod.GET)
	public String remove(@RequestParam("goods_no") int goods_no, Criteria cri, RedirectAttributes rttr) throws Exception {

		service.remove(goods_no);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addFlashAttribute("msg", "delete_success");

		//마찬가지로 삭제시 홈으로
		return "redirect:/board/listPage";
	}
	
	@RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
	public void modifyPagingGET(@RequestParam("goods_no") int goods_no, @ModelAttribute("cri") Criteria cri, Model model) throws Exception {
		model.addAttribute(service.read(goods_no));
	}
	
	@RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
	public String modifyPOST2(GoodsVO goods, Criteria cri, RedirectAttributes rttr) throws Exception {
		logger.info("mod post............");

		service.modify(goods);		

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/board/listPage";
	}
	
	 
	 
	//댓글 달기
	


}
