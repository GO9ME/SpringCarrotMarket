package com.market.carrot.product;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ProductRowMapper implements RowMapper<ProductDTO> {
	
	@Override
	public ProductDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		System.out.println(rowNum);
		ProductDTO product = new ProductDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
				rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getDate(9), rs.getDate(10),
				rs.getString(11), rs.getString(12), rs.getInt(13), rs.getInt(14));
		return product;
	}
}
