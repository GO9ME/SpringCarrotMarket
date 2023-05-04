package com.market.carrot.product.all;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.market.carrot.dto.FileDTO;
import com.market.carrot.rowmapper.FileRowMapper2;

@Repository
public class FileDAOImpl implements FileDAO {
	@Autowired
	JdbcTemplate template;

	@Override
	public List<FileDTO> selectFile(int items_id) {
		
		return template.query("select items_id, originalFilename, storeFilename, imageFileno "
				+ "from items_photo "
				+ "where 1=1 "
				+ "and items_id =? "
				+ "order by imageFileno ",
				new Object[] { items_id },
				new FileRowMapper2());
	}

}
