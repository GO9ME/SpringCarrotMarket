package com.market.carrot.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class AllProductController {
	@Autowired
	ProductDAO dao;
	
	@RequestMapping("/product/productlist")
	public ModelAndView showlist() {
		ModelAndView mav = new ModelAndView();
		List<ProductDTO> productlist = dao.getProductList();
		mav.addObject("productlist", productlist);
		mav.setViewName("/product/productList");
		return mav;
	}
}
