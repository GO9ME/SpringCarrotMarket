package com.market.carrot.product;

import java.util.List;

import com.market.carrot.dto.FileDTO;
import com.market.carrot.dto.ProductDTO;
import com.market.carrot.dto.UserDTO;


public interface ProductService {
	int insert(ProductDTO product);

	int insert(ProductDTO product, List<FileDTO> deptfiledtolist);

	List<ProductDTO> select();

	ProductDTO read(int items_id);

	int update(ProductDTO product);

	int delete(String items_id);

	List<FileDTO> readImgFile(int items_id);

	ProductDTO readProduct(int items_id);


	int readChatCount(int items_id);

	List<ProductDTO> readItemsList();
	
	List<ProductDTO> getProductList();
	
	List<ProductDTO> interestlist();
	
	UserDTO readUserData(int items_id);
	


	int readChatCount(int items_id);
}
