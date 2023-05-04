package com.market.carrot.member.mypage;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MyPageUpdateDAOImpl implements MyPageUpdateDAO {
	@Autowired
	JdbcTemplate template;

	@Override
	public int nicknameUpdate(String id, String nick) {
		String sql = "update user set nickname=? where user_id=?";
		return template.update(sql, nick, id);
	}


}
