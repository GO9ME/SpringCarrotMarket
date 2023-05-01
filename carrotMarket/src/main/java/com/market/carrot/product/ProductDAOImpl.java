package com.market.carrot.product;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.market.carrot.dto.ProductDTO;

@Repository
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	private JdbcTemplate template;

	@Override
	public int insert(ProductDTO product) {
		String sql = "INSERT INTO items VALUES(null,?,?,?,?,?,?,?,?,?,?);";
		return template.update(sql, product.getUser_id(), product.getCategory(), product.getTitle(),
				product.getContents(), product.getPrice(), product.getStatus_cd(), product.getViews(),
				new Timestamp(System.currentTimeMillis()), new Timestamp(System.currentTimeMillis()),
				product.getUse_at());
	}

	@Override
	public List<ProductDTO> select() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProductDTO read(int items_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(ProductDTO product) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String items_id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
