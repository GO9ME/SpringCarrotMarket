package com.market.carrot.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	JdbcTemplate template;

	@Override
	public List<ProductDTO> getProductList() {
		// TODO Auto-generated method stub
		// return template.query("select * from items", new ProductRowMapper());
		return template.query(
				"select a.items_id, a.user_id, a.category, a.title, a.contents, a.price, a.status_cd, a.views, a.registerd_at, a.updated_at, a.use_at, d.sigun\r\n"
						+ ", ifnull(b.cnt,0) as likeCount\r\n" + ", ifnull(c.cnt,0) as chatCount\r\n"
						+ "from items as A\r\n" + "LEFT OUTER JOIN (\r\n" + "    SELECT items_id, COUNT(*) AS CNT\r\n"
						+ "    FROM interest\r\n" + "    GROUP BY items_id\r\n" + ") AS b\r\n"
						+ "ON a.items_id = b.items_id\r\n" + "LEFT OUTER JOIN (\r\n"
						+ "    SELECT items_id, COUNT(*) AS CNT\r\n" + "    FROM chat\r\n" + "    GROUP BY items_id\r\n"
						+ ") AS C\r\n" + "ON a.items_id = C.items_id\r\n" + "left join  user as D\r\n"
						+ "on a.user_id = d.user_id",
				new ProductRowMapper());
	}

}
