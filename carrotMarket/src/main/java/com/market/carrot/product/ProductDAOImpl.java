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
}
