package com.market.carrot.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.ColumnMapRowMapper;
import org.springframework.jdbc.core.RowMapper;

import com.market.carrot.dto.ChatConTentDTO;
import com.market.carrot.dto.ChatDTO;

public class ChatContentRowMapper implements RowMapper<ChatConTentDTO> {

	// 예시
	@Override
	public ChatConTentDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		ChatConTentDTO content = new ChatConTentDTO(
				rs.getInt(1),
				rs.getString(2),
				rs.getInt(3),
				rs.getInt(4),
				rs.getString(5),
				rs.getTimestamp(6),
				rs.getString(7),
				rs.getString(8));
		return content;
	}
	

}
