package com.mailsender.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mailsender.pojo.Email;
import com.mailsender.util.EmailUtil;

@Controller
public class EmailSenderController {
	@Autowired
	EmailUtil emailUtil;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String showIndex() {
		return "index";
	}
	
	@RequestMapping(value="/send", method=RequestMethod.POST)
	public String sendEmail(@ModelAttribute("email") Email email, ModelMap modelMap) {
		
		emailUtil.sendEmail(email.getFrom(), email.getTo(), email.getSubject(), email.getBody());
		modelMap.addAttribute("msg", "Email Send Successfully...");
		return "index";
	}
}
