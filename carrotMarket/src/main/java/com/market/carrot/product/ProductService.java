package com.market.carrot.product;

import java.util.List;

import com.market.carrot.dto.ProductDTO;

public interface ProductService {
	public int insert(ProductDTO product);
	public List<ProductDTO> select();
	public ProductDTO read(int items_id);
	int update(ProductDTO product);
	public int delete(String items_id);
}
