package com.market.carrot.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.market.carrot.dto.FileDTO;
import com.market.carrot.dto.UserDTO;

public class FileRowMapper implements RowMapper<FileDTO> {

	// 예시
	@Override
	public FileDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		FileDTO file = new FileDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
		return file;
	}

}
