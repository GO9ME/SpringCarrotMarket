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
		mav.setViewName("member/SignUpForm1");
		
		return mav;
	}
	@RequestMapping("/member/signup2")
	public ModelAndView signUpPage2() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/SignUpForm2");
		
		return mav;
	}
	@RequestMapping("/member/signup3")
	public ModelAndView signUpPage3() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/SignUpForm3");
		
		return mav;
	}
	@RequestMapping("/member/signup4")
	public ModelAndView signUpPage4() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/SignUpForm4");
		
		return mav;
	}
}

