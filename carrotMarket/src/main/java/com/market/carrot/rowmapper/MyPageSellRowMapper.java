package com.market.carrot.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.market.carrot.dto.MyPageSellDTO;

public class MyPageSellRowMapper implements RowMapper<MyPageSellDTO> {
	
	@Override
	public MyPageSellDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		MyPageSellDTO sellList = new MyPageSellDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
				rs.getString(5), rs.getString(6), rs.getInt(7),rs.getDate(8));
		return sellList;
	}
}
