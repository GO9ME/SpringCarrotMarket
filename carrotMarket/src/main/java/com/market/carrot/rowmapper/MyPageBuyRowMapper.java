package com.market.carrot.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.market.carrot.dto.MyPageBuyDTO;

public class MyPageBuyRowMapper implements RowMapper<MyPageBuyDTO> {
	
	@Override
	public MyPageBuyDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		MyPageBuyDTO buylist = new MyPageBuyDTO(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
				rs.getString(5), rs.getDate(6), rs.getString(7));
		return buylist;
	}
}
