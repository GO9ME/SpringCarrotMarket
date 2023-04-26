package com.market.carrot.product;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/*
	��ǰ ����Ʈ ������
	�Ǹ� ����Ʈ
	���� ����Ʈ 
	��ǰ �󼼺���
*/

@Controller
public class ListController {
	@RequestMapping("/product/detail")
	public ModelAndView detailPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("product/detailPage");

		
		return mav;
	}
}
