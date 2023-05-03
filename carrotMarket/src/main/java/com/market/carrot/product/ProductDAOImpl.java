package com.market.carrot.product;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ParameterizedPreparedStatementSetter;
import org.springframework.stereotype.Repository;

import com.market.carrot.dto.FileDTO;
import com.market.carrot.dto.ProductDTO;
import com.market.carrot.dto.UserDTO;
import com.market.carrot.rowmapper.FileRowMapper;
import com.market.carrot.rowmapper.ProductRowMapper;
import com.market.carrot.rowmapper.UserRowMapper;

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
		String sql = "select * from items where items_id = ?";
		ProductDTO dto = null;
		try {
			dto = template.queryForObject(sql, new Object[] { items_id }, new ProductRowMapper());
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dto;
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

	@Override
	public int insertFile(List<FileDTO> fileDtoList) {
		;
		String sql = "INSERT INTO items_photo values(?,?,?,?)";
		template.batchUpdate(sql, fileDtoList, fileDtoList.size(), new ParameterizedPreparedStatementSetter<FileDTO>() {
			int last_id = getLastIdFromItems();

			@Override
			public void setValues(PreparedStatement ps, FileDTO fileDto) throws SQLException {

				ps.setInt(1, last_id);
				ps.setString(2, fileDto.getOriginalFilename());
				ps.setString(3, fileDto.getStoreFilename());
				ps.setString(4, fileDto.getImageFileno());
			}
		});
		return 0;
	}

	@Override
	public int getLastIdFromItems() {
		// TODO Auto-generated method stub
		String sql = "select items_id from items order by items_id DESC LIMIT 1";
		int result = 0;
		try {
			result = template.queryForObject(sql, Integer.class);
			System.out.println("result : " + result);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public List<FileDTO> readStorageName(int items_id) {
		// TODO Auto-generated method stub
		String sql = "select * from items_photo where items_id = ?";

		return template.query(sql, new Object[] { items_id }, new FileRowMapper());
	}

	@Override
	public int getCountChatFromItem(int items_id) {
		// TODO Auto-generated method stub
		String sql = "select count(*) from chat where items_id = ?";
		int result = 0;
		try {
			result = template.queryForObject(sql, Integer.class, items_id);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public List<ProductDTO> selectTopItem() {
		String sql = "select * from items order by views limit 6";
		List<ProductDTO> dtolist = template.query(sql, new ProductRowMapper());
		for (ProductDTO dto : dtolist) {
			try {
				String region = "";
				sql = "select storeFilename from items_photo WHERE items_id = ? and imageFileno = 1";
				String storeFilename = template.queryForObject(sql, String.class, dto.getItems_id());
				dto.setStoreFilename(storeFilename);

				sql = "SELECT sido FROM user WHERE user_id = ?";
				region += template.queryForObject(sql, String.class, dto.getUser_id()) + " ";

				sql = "SELECT sigun FROM user WHERE user_id = ?";
				region += template.queryForObject(sql, String.class, dto.getUser_id()) + " ";

				sql = "SELECT dong FROM user WHERE user_id = ?";
				region += template.queryForObject(sql, String.class, dto.getUser_id());

				dto.setRegion(region);
				System.out.println("dto : " + dto);
			} catch (DataAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return dtolist;

	}

	@Override
	public UserDTO readUserData(int items_id) {
		// TODO Auto-generated method stub
		String sql = "SELECT u.* FROM user u JOIN items i ON u.user_id = i.user_id WHERE i.items_id = ?";
		UserDTO dto = template.queryForObject(sql, new UserRowMapper(), items_id);
		return dto;
	}
	@Override
	public List<ProductDTO> getProductList() {
		// TODO Auto-generated method stub
//		return template.query(
//				"select a.items_id, a.user_id, a.category, a.title, a.contents, a.price, a.status_cd, a.views, a.registerd_at, a.updated_at, a.use_at, d.sigun\r\n"
//						+ ", ifnull(b.cnt,0) as likeCount\r\n" + ", ifnull(c.cnt,0) as chatCount\r\n"
//						+ "from items as A\r\n" + "LEFT OUTER JOIN (\r\n" + "    SELECT items_id, COUNT(*) AS CNT\r\n"
//						+ "    FROM interest\r\n" + "    GROUP BY items_id\r\n" + ") AS b\r\n"
//						+ "ON a.items_id = b.items_id\r\n" + "LEFT OUTER JOIN (\r\n"
//						+ "    SELECT items_id, COUNT(*) AS CNT\r\n" + "    FROM chat\r\n" + "    GROUP BY items_id\r\n"
//						+ ") AS C\r\n" + "ON a.items_id = C.items_id\r\n" + "left join  user as D\r\n"
//						+ "on a.user_id = d.user_id",
//				new ProductRowMapper());

		String sql = "select * from items order by registerd_at desc";
		List<ProductDTO> dtolist = template.query(sql, new ProductRowMapper());
		for (ProductDTO dto : dtolist) {
			try {
				String region = "";
				sql = "select storeFilename from items_photo WHERE items_id = ? and imageFileno = 1";
				String storeFilename = template.queryForObject(sql, String.class, dto.getItems_id());
				dto.setStoreFilename(storeFilename);

				sql = "SELECT sido FROM user WHERE user_id = ?";
				region += template.queryForObject(sql, String.class, dto.getUser_id()) + " ";

				sql = "SELECT sigun FROM user WHERE user_id = ?";
				region += template.queryForObject(sql, String.class, dto.getUser_id()) + " ";

				sql = "SELECT dong FROM user WHERE user_id = ?";
				region += template.queryForObject(sql, String.class, dto.getUser_id());

				dto.setRegion(region);
			} catch (DataAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return dtolist;

	}
	
	

	@Override
	public List<ProductDTO> interestlist() {
		return template.query(
				"select a.items_id, a.user_id, a.category, a.title, a.contents, a.price, a.status_cd, a.views, a.registerd_at, a.updated_at, a.use_at, d.sigun\r\n"
						+ ", ifnull(b.cnt,0) as likeCount\r\n" + ", ifnull(c.cnt,0) as chatCount\r\n"
						+ "from items as A\r\n" + "LEFT OUTER JOIN (\r\n" + "    SELECT items_id, COUNT(*) AS CNT\r\n"
						+ "    FROM interest\r\n" + "    GROUP BY items_id\r\n" + ") AS b\r\n"
						+ "ON a.items_id = b.items_id\r\n" + "LEFT OUTER JOIN (\r\n"
						+ "    SELECT items_id, COUNT(*) AS CNT\r\n" + "    FROM chat\r\n" + "    GROUP BY items_id\r\n"
						+ ") AS C\r\n" + "ON a.items_id = C.items_id\r\n" + "left join  user as D\r\n"
						+ "on a.user_id = d.user_id" + "order by  ifnull(b.cnt,0) desc",
				new ProductRowMapper());
	}
}
