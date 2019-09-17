package com.decolab.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.decolab.domain.AccountVO;
import com.decolab.service.AdminService;

@Controller
@RequestMapping(value = "/admin/*")
public class AdminController {
	
	@Inject
	private AdminService service;
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@RequestMapping(value = "/membermanagement")
	public void manage(Model model) throws Exception {
		logger.info("show all list......................");

		model.addAttribute("list", service.manage());
	}
}
