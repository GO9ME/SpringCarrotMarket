package com.market.carrot.member.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.market.carrot.dto.MyPageProductDTO;

@Controller
public class MyPageProductController {
	@Autowired
	MyPageProductDAO dao;

	@RequestMapping("/mypage/sellproductlist")
	public ModelAndView sellproductlist(String id) {
		ModelAndView mav = new ModelAndView();
		List<MyPageProductDTO> sellproductlist = dao.getSellProduct(id);
		mav.addObject("sellproductlist", sellproductlist);
		mav.setViewName("product/sellList");
		return mav;
	}
	
	@RequestMapping("/mypage/buyproductlist")
	public ModelAndView buyproductlist(String id) {
		ModelAndView mav = new ModelAndView();
		List<MyPageProductDTO> buyproductlist = dao.getBuyProduct(id);
		mav.addObject("buyproductlist", buyproductlist);
		mav.setViewName("product/buyList");
		return mav;
	}
	
	@RequestMapping("/mypage/interestproductlist")
	public ModelAndView interestproductlist(String id) {
		ModelAndView mav = new ModelAndView();
		List<MyPageProductDTO> interestproductlist = dao.getInterestProduct(id);
		mav.addObject("interestproductlist", interestproductlist);
		mav.setViewName("product/interestList");
		return mav;
	}

}
