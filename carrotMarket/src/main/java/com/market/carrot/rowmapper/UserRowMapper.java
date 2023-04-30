package com.market.carrot.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.market.carrot.dto.ChatDTO;
import com.market.carrot.dto.UserDTO;

public class UserRowMapper implements RowMapper<UserDTO> {

	// 예시
	@Override
	public UserDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		UserDTO user = new UserDTO(
				rs.getString(1), 
				rs.getString(2), 
				rs.getString(3),
				rs.getString(4),
				rs.getString(5),
				rs.getString(6),
				rs.getString(7),
				rs.getString(8),
				rs.getString(9),
				rs.getString(10),
				rs.getString(11),
				rs.getDate(12),
				rs.getDate(13),
				rs.getString(14));
		return user;
	}

}
