package com.market.carrot.member;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/*

	회원가입
	회원수정
	마이페이지
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

