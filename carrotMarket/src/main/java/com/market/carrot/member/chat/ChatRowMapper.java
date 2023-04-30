package com.market.carrot.member.chat;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ChatRowMapper implements RowMapper<ChatDTO> {

	// 예시
	@Override
	public ChatDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		ChatDTO user = new ChatDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
				rs.getInt(6), rs.getString(7));
		return user;
	}

}
