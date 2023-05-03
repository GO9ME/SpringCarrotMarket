package com.market.carrot.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.market.carrot.dto.FileDTO;
import com.market.carrot.dto.ProductDTO;

import com.market.carrot.dto.UserDTO;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	ProductDAO dao;

	@Override
	public int insert(ProductDTO product) {
		return dao.insert(product);
	}

	@Override
	public List<ProductDTO> select() {
		return null;
	}

	@Override
	public ProductDTO read(int items_id) {
		return null;
	}

	@Override
	public int update(ProductDTO product) {
		return 0;
	}


	@Override
	public int delete(String items_id) {
		return 0;
	}

	@Override
	public int insert(ProductDTO product, List<FileDTO> deptfiledtolist) {
		dao.insert(product);
		
		dao.insertFile(deptfiledtolist);
		return 0;
	}
	
	@Override
	public List<FileDTO> readImgFile(int items_id) {
		// TODO Auto-generated method stub
		List<FileDTO> filedto = dao.readStorageName(items_id);
		return filedto;
	}
	
	@Override
	public ProductDTO readProduct(int items_id) {
		// TODO Auto-generated method stub
		ProductDTO dto = dao.read(items_id);
		return dto;
	}
	@Override
	public int readChatCount(int items_id) {
		return dao.getCountChatFromItem(items_id);
	}
	
	@Override
	public List<ProductDTO> readItemsList() {
		// TODO Auto-generated method stub
		return dao.selectTopItem();
	}
	
	@Override
	public List<ProductDTO> getProductList() {
		// TODO Auto-generated method stub
		return dao.getProductList();
	}

	
	@Override
	public List<ProductDTO> interestlist() {
		// TODO Auto-generated method stub
		return dao.interestlist();
	}
	
	@Override
	public UserDTO readUserData(int items_id) {
		// TODO Auto-generated method stub
		return dao.readUserData(items_id);

	}

	@Override
	public int insert(ProductDTO product, List<FileDTO> deptfiledtolist) {
		dao.insert(product);
		
		dao.insertFile(deptfiledtolist);
		return 0;
	}
	
	@Override
	public List<FileDTO> readImgFile(int items_id) {
		// TODO Auto-generated method stub
		List<FileDTO> filedto = dao.readStorageName(items_id);
		return filedto;
	}
	
	@Override
	public ProductDTO readProduct(int items_id) {
		// TODO Auto-generated method stub
		ProductDTO dto = dao.read(items_id);
		return dto;
	}
	@Override
	public int readChatCount(int items_id) {
		return dao.getCountChatFromItem(items_id);
	}
	


}
