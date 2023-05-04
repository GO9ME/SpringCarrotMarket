package com.market.carrot.member.mypage;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.market.carrot.dto.FileDTO;
import com.market.carrot.dto.MyPageBuyDTO;
import com.market.carrot.dto.MyPageProductDTO;
import com.market.carrot.dto.MyPageSellDTO;
import com.market.carrot.dto.UserDTO;
import com.market.carrot.product.all.FileDAO;

@Controller
public class MyPageProductController {
	@Autowired
	MyPageProductDAO dao;
	@Autowired
	MyPageBuyDAO buyDao;
	@Autowired
	MyPageSellDAO sellDao;
	@Autowired
	FileDAO fileDao;

	@RequestMapping("/mypage/sellproductlist")
	public ModelAndView sellproductlist(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<FileDTO> file = null;
		UserDTO user = (UserDTO) session.getAttribute("userdata");
		String id = user.getUser_id();
		List<MyPageSellDTO> sellproductlist = sellDao.selectSellList(id);
		for(MyPageSellDTO dto:sellproductlist) {
			file = fileDao.selectFile(dto.getItems_id());
			mav.addObject("file", file);
		}
		mav.addObject("sellproductlist", sellproductlist);
		mav.setViewName("product/sellList");
		return mav;
	}

	@RequestMapping("/mypage/buyproductlist")
	public ModelAndView buyproductlist(HttpSession session) {
		UserDTO user = (UserDTO) session.getAttribute("userdata");
		String id = user.getUser_id();
		ModelAndView mav = new ModelAndView();
		List<MyPageBuyDTO> buyproductlist = buyDao.selectBuyList(id);
		List<FileDTO> file = null;
		for (MyPageBuyDTO dto : buyproductlist) {
			file = fileDao.selectFile(dto.getItems_id());
			mav.addObject("file", file);
		}
		mav.addObject("buyproductlist", buyproductlist);
		mav.setViewName("product/buyList");

		return mav;
	}

	@RequestMapping("/mypage/interestproductlist")
	public ModelAndView interestproductlist(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<FileDTO> file = null;
		UserDTO user = (UserDTO) session.getAttribute("userdata");
		String id = user.getUser_id();
		List<MyPageProductDTO> interestproductlist = dao.getInterestProduct(id);
		for(MyPageProductDTO dto:interestproductlist) {
			file = fileDao.selectFile(dto.getItems_id());
			mav.addObject("file", file);
		}
		mav.addObject("interestproductlist", interestproductlist);
		mav.setViewName("product/interestList");
		return mav;
	}

}
