package com.market.carrot.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.market.carrot.dto.MyPageProductDTO;

public class MyPageProductRowMapper implements RowMapper<MyPageProductDTO> {

	@Override
	public MyPageProductDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		MyPageProductDTO product = new MyPageProductDTO(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
				rs.getString(5), rs.getDate(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10),
				rs.getString(11));
		return product;
	}
}
