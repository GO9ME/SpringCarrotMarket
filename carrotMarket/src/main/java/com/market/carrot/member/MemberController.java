package com.market.carrot.member;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/*

	ȸ������
	ȸ������
	����������
*/
@Controller
public class MemberController {
	@RequestMapping("/member/signup1")
	public ModelAndView signUpPage1() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/mySignUpForm1");
		
		return mav;
	}
}

