package com.market.carrot.product;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/*

	��ǰ ��� / ���� / ���� 
*/
@Controller
public class ProductController {
	@RequestMapping("/product/register")
	public ModelAndView registerPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("product/register");
		
		return mav;
	}

}
