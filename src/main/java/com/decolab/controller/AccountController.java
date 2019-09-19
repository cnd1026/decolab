package com.decolab.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

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
	
	@RequestMapping(value = "/yearsales", method = RequestMethod.GET)
	public String yearsalesGET(Model model,String year,String datepicker,Locale locale) throws Exception {
		logger.info("year get ...........");
		
		if( service.choicesales(datepicker) == "" ||  service.choicesales(datepicker) ==null) {
			model.addAttribute("choicesales", "0");
		}else {
			model.addAttribute("choicesales", service.choicesales(datepicker));
		}
		
		SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd");
		Date time = new Date();
		String time1 = format1.format(time);

		if( datepicker == "" ||  datepicker ==null) {
			model.addAttribute("date", time1);
		}else {
			model.addAttribute("date", datepicker);
		}
		
		model.addAttribute("totalsales", service.sales());
		model.addAttribute("budget", service.budget());
		
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
