package com.market.carrot.product.all;

import java.util.List;

import com.market.carrot.dto.FileDTO;

public interface FileDAO {
	public List<FileDTO> selectFile(int items_id);
}
