package com.market.carrot.member;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.market.carrot.dto.ChatDTO;
import com.market.carrot.member.chat.ChatService;

/*
 chat
*/
@Controller
public class ChatController {
	@RequestMapping("/member/chat")
	public ModelAndView chatPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("chat/chat");
		
		return mav;
	}
	
	// 서비스단의 메소드 호출
	@Autowired
	ChatService service;

	@RequestMapping("/pro.do")
	public String sampletest() {
		System.out.println("나는 컨트롤러");
		return "main/index";
	}

	@RequestMapping(value = "/mvc/insert.do", method = RequestMethod.POST)
	public String sampletest(ChatDTO user) {
		service.servicetest(user);
		return "main/index";
	}

	@RequestMapping("/mvc/list.do")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView("member/list");
		List<ChatDTO> userlist = service.selectList();
		mav.addObject("userlist",userlist);
		return mav;
	}

	@RequestMapping("/mvc/read.do")
	public ModelAndView read(String id, String state) {
		ModelAndView mav = new ModelAndView();
		ChatDTO userdata = service.selectDetail(id);
		String view = "";
		if(state.equals("READ")) {
			view = "member/emp_read";
		} else {
			view = "member/emp_update";
			
		}
		mav.setViewName(view);
		mav.addObject("userdata",userdata);
		return mav;
	}
	
	@RequestMapping("/mvc/update.do")
	public String update(ChatDTO user) {
		int result = service.update(user);
		return "redirect:/mvc/list.do";
	}
	

}


