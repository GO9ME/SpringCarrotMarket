package com.market.carrot.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.market.carrot.dto.ProductDTO;

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

}
