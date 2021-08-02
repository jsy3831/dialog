package net.su.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.su.service.HomeService;
import net.su.vo.Homevo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Resource
	private HomeService homeService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "home";
	}
	
	@RequestMapping(value ="/insertInfo.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String insertInfo(Homevo vo) throws Exception{
		System.out.println("작동완료");
		homeService.select();
		return "home";
	}
	
	@RequestMapping(value ="/start.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String start() throws Exception{
		System.out.println("작동완료2");
		homeService.select2();
		return "home";
	}
	@RequestMapping(value ="/test.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String test() throws Exception{
		System.out.println("작동완료3");
		homeService.test(true);
		return "home";
	}
}
