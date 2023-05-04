package com.market.carrot.product.all;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.market.carrot.dto.FileDTO;
import com.market.carrot.dto.ProductDTO;
import com.market.carrot.product.ProductDAO;
@Controller
public class AllProductController {
	@Autowired
	ProductDAO dao;
	@Autowired
	FileDAO fileDao;
	
	@RequestMapping("/product/productlist") // 중고거래 -> 상품목록  전체상품조회
	public ModelAndView showlist() {
		ModelAndView mav = new ModelAndView();
		List<ProductDTO> productlist = dao.getProductList();
		for(ProductDTO dto:productlist) {
			List<FileDTO> file = fileDao.selectFile(dto.getItems_id());
			mav.addObject("file", file);
		}
		mav.addObject("productlist", productlist);
		mav.setViewName("product/productList");
		return mav;
	}
	
	@RequestMapping("/product/interestlist") // 중고거래 -> 인기상품 인기상품 좋아요 높은순 정렬
	public ModelAndView interestlist() {
		ModelAndView mav = new ModelAndView();
		List<ProductDTO> interestlist = dao.getProductList();
		for(ProductDTO dto:interestlist) {
			List<FileDTO> file = fileDao.selectFile(dto.getItems_id());
			mav.addObject("file", file);
		}
		mav.addObject("interestlist", interestlist);
		mav.setViewName("product/productInterestList");
		return mav;
	}
}
