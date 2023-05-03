package com.market.carrot.member.delete;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.market.carrot.dto.UserDTO;

@Repository
public class DeleteDAOImpl implements DeleteDAO {
	@Autowired
	private JdbcTemplate template;
	@Override
	public int delet(String userid) {
		String sql = "delete from user where user_id = ?";
		return template.update(sql, userid);
	}

}
