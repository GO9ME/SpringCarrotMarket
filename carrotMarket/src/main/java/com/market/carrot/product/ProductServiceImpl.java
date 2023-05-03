package com.market.carrot.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	ProductDAO dao;


	@Override
	public List<ProductDTO> select() {
		// TODO Auto-generated method stub
		return dao.getProductList();
	}

}
