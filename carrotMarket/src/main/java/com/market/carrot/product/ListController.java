package com.market.carrot.product;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/*
	상품 리스트 종류별
	판매 리스트
	구매 리스트 
	상품 상세보기
*/

@Controller
public class ListController {
	@RequestMapping("/product/detail")
	public ModelAndView detailPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/product/detailPage");
		
		return mav;
	}
}
