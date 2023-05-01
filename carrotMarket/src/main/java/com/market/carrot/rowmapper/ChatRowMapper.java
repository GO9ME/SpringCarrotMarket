package com.market.carrot.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.ColumnMapRowMapper;
import org.springframework.jdbc.core.RowMapper;

import com.market.carrot.dto.ChatDTO;

public class ChatRowMapper implements RowMapper<ChatDTO> {

	// 예시
	@Override
	public ChatDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		ChatDTO user = new ChatDTO(
				rs.getInt(1),
				rs.getInt(2),
				rs.getTimestamp(3));
		return user;
	}
	

}
