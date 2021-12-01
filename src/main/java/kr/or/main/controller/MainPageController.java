package kr.or.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainPageController 
{
	@RequestMapping(value = "/call_MainPage.do")
	public String call_MainPage()
	{
		return "common/main";
	}
	
	@RequestMapping(value = "/call_AdminPage.do")
	public String call_AdminMain()
	{
		return "admin/admin_main";
	}
}
