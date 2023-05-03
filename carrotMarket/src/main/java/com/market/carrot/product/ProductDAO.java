package com.market.carrot.product;

import java.util.List;

import com.market.carrot.dto.FileDTO;
import com.market.carrot.dto.ProductDTO;

public interface ProductDAO {
	public int insert(ProductDTO product);
	int insertFile(List<FileDTO> filedtolist);
	public List<ProductDTO> select();
	public ProductDTO read(int items_id);
	int update(ProductDTO product);
	public int delete(String items_id);
	int getLastIdFromItems();
	List<FileDTO> readStorageName(int items_id);
	int getCountChatFromItem(int items_id);
}
