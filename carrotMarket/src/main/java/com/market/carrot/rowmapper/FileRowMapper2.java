package com.market.carrot.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.market.carrot.dto.FileDTO;

public class FileRowMapper2 implements RowMapper<FileDTO> {

	@Override
	public FileDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		FileDTO fileProduct = new FileDTO(rs.getInt(1),  rs.getString(4),rs.getString(2), rs.getString(3));
		return fileProduct;
	}
}