package com.market.carrot.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.market.carrot.dto.ProductDTO;
import com.market.carrot.dto.UserDTO;

public class ProductRowMapper implements RowMapper<ProductDTO> {

	// 예시
	@Override
	public ProductDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		ProductDTO product = new ProductDTO(
				rs.getInt(1), 
				rs.getString(2), 
				rs.getString(3),
				rs.getString(4),
				rs.getString(5),
				rs.getString(6),
				rs.getString(7),
				rs.getInt(8),
				rs.getDate(9),
				rs.getDate(10),
				rs.getString(11));
		return product;
	}

}
