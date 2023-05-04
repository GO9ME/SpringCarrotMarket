package com.market.carrot.product;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import com.market.carrot.dto.FileDTO;
import com.market.carrot.dto.ProductDTO;
import com.market.carrot.dto.UserDTO;

/*
	상품등록/수정/삭제 
*/
@Controller
public class ProductController {
	@Autowired
	ProductService service;
	@Autowired
	FileUploadLogic fileuploadService;

	@RequestMapping("/product/register")
	public ModelAndView registerPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("product/register");

		return mav;
	}

	@RequestMapping("/product/post")
	public String insertPost(ProductDTO product, HttpSession session) throws IllegalStateException, IOException {
		List<MultipartFile> files = product.getFile();
		String path = WebUtils.getRealPath(session.getServletContext(), "/WEB-INF/upload");
		List<FileDTO> fileDtoList = fileuploadService.uploadFiles(files, path);
		int count = 1;
		for (FileDTO fileDto : fileDtoList) {
			fileDto.setImageFileno(count + "");
			count++;
		}
		
		service.insert(product, fileDtoList);

		return "redirect:/product/list";

	}
	
	@RequestMapping("/product/detail")
	public ModelAndView insertPost(int items_id, HttpSession session) throws FileNotFoundException {
		UserDTO user = (UserDTO) session.getAttribute("userdata");
		List<FileDTO> imglist = service.readImgFile(items_id);

		int ChatCount = service.readChatCount(items_id);
		ProductDTO dto = service.readProduct(items_id);
		List<ProductDTO> listForSix = service.readItemsList();
		UserDTO userdto = service.readUserData(items_id);
		

		ModelAndView mav = new ModelAndView("product/productDetail");
		mav.addObject("imglist",imglist);
		mav.addObject("dto",dto);
		mav.addObject("ChatCount",ChatCount);

		mav.addObject("listForSix",listForSix);
		mav.addObject("userdto",userdto);
		
		return mav;
	}
	
	@RequestMapping("/product/list") // 중고거래 -> 상품목록  전체상품조회
	public ModelAndView showlist() {
		ModelAndView mav = new ModelAndView();
		List<ProductDTO> productlist = service.getProductList();
		mav.addObject("productlist", productlist);
		mav.setViewName("product/productList");
		return mav;
	}
	
	@RequestMapping("/product/interestlist") // 중고거래 -> 인기상품 인기상품 좋아요 높은순 정렬
	public ModelAndView interestlist() {
		ModelAndView mav = new ModelAndView();
		List<ProductDTO> interestlist = service.interestlist();
		mav.addObject("interestlist", interestlist);
		mav.setViewName("product/productInterestList");
		return mav;
	}

	@RequestMapping("/product/modify") // 상품수정 페이지 
	public ModelAndView showModify(int items_id, HttpSession session) {
		UserDTO user = (UserDTO) session.getAttribute("userdata");
		List<FileDTO> imglist = service.readImgFile(items_id);
		ProductDTO dto = service.readProduct(items_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", dto);
		mav.addObject("user", user);
		mav.addObject("imglist",imglist);
		mav.setViewName("product/modify");
		return mav;
	}
	
	@RequestMapping("/product/modifyConfirm") // 상품수정 페이지 
	public String update(ProductDTO product, HttpSession session) throws IllegalStateException, IOException {
		List<MultipartFile> files = product.getFile();
		String path = WebUtils.getRealPath(session.getServletContext(), "/WEB-INF/upload");
		List<FileDTO> fileDtoList = fileuploadService.uploadFiles(files, path);
		
		System.out.println(product);
		int count = service.readStorageCount(product.getItems_id()) + 1;
		for (FileDTO fileDto : fileDtoList) {
			fileDto.setImageFileno(count + "");
			count++;
		}
		
		service.update(product, fileDtoList);

		return "redirect:/product/detail?items_id=" + product.getItems_id();

	}
	

}
