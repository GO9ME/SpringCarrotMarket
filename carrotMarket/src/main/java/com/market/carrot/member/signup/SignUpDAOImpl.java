package com.market.carrot.member.signup;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.market.carrot.dto.UserDTO;

@Repository
public class SignUpDAOImpl implements SignUpDAO {
	@Autowired
	private JdbcTemplate template;

	@Override
	public int signUp(UserDTO user) {
		String sql = "insert into user values( ?,?,?,?,?,?,?,?,?,'Y',null,NOW(),NOW(),'Y')";
		return template.update(sql, user.getUser_id(), user.getName(), user.getNickname(), user.getPassword(),
				user.getEmail(), user.getSido(), user.getSigun(), user.getDong(), user.getCellphone());
	}

}
