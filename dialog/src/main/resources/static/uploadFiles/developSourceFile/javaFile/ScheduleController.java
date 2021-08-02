package net.su.dialog.schedule.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import net.su.dialog.schedule.domain.SchVo;

@Controller
public class ScheduleController {
	
	//스케줄 목록 화면
	@RequestMapping("/scheduleList")
	public String scheduleList() {
		return ".scheduleList";
	}
	//스케줄 상세조회 화면  
	@RequestMapping("/scheduleinfoView")
	public String scheduleinfoView (SchVo schVo, Model model) throws Exception{
		System.out.println("@@@@@@@@" + schVo.getScheCode());
		model.addAttribute("scheCode",schVo.getScheCode());
		return ".scheduleInfoPopup";
	}
	
}
