package com.market.carrot.member;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/*
 chat
*/
@Controller
public class ChatController {
	@RequestMapping("/member/chat")
	public ModelAndView chatPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/chat/chat");
		
		return mav;
	}
}
