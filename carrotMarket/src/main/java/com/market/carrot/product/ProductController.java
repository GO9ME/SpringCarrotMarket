package com.market.carrot.product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.market.carrot.dto.ProductDTO;

/*

	상품등록/수정/삭제 
*/
@Controller
public class ProductController {
	@Autowired
	ProductService service;
	
	@RequestMapping("/product/register")
	public ModelAndView registerPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("product/register");
		
		return mav;
	}
	
	@RequestMapping("/product/post")
	public String insertPost(ProductDTO product) {
//		service.insert(product);
		System.out.println(product);
		return "product/list";
	}
	

}
