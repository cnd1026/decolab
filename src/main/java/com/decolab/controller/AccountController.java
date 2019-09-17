package com.decolab.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.decolab.service.AccountService;

@Controller
@RequestMapping(value = "/account/*")
public class AccountController {
	@Inject
	private AccountService service;
	private static final Logger logger = LoggerFactory.getLogger(AccountController.class);
	
	@RequestMapping(value = "/sales", method = RequestMethod.GET)
	public String salesGET(Model model,String datepicker) throws Exception {
		logger.info("account get ...........");
		
		model.addAttribute("totalsales", service.sales());
		model.addAttribute("budget", service.budget());
		model.addAttribute("choicesales", service.choicesales(datepicker));
		
		model.addAttribute("date", datepicker);
		
		return"/account/sales";
	}
	@RequestMapping(value = "/sales", method = RequestMethod.POST)
	public String salesPOST(Model model) throws Exception {
		
		return "/account/sales";
		
	}
	@RequestMapping(value = "/yearsales", method = RequestMethod.GET)
	public String yearsalesGET(Model model,String year) throws Exception {
		logger.info("year get ...........");
		
		model.addAttribute("Jan", service.Jan(year));
		model.addAttribute("Feb", service.Feb(year));
		model.addAttribute("Mar", service.Mar(year));
		model.addAttribute("Apr", service.Apr(year));
		
		model.addAttribute("May", service.May(year));
		model.addAttribute("Jun", service.Jun(year));
		model.addAttribute("Jul", service.Jul(year));
		model.addAttribute("Aug", service.Aug(year));
		
		model.addAttribute("Sep", service.Sep(year));
		model.addAttribute("Oct", service.Oct(year));
		model.addAttribute("Nov", service.Nov(year));
		model.addAttribute("Dec", service.Dec(year));
		
		return "/account/yearsales";
		
	}
}
