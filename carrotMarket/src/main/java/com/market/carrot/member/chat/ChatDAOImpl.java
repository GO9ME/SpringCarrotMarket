package com.market.carrot.member.chat;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ChatDAOImpl implements ChatDAO{
	
	private JdbcTemplate mytemplate;
	
	@Autowired
	public ChatDAOImpl(JdbcTemplate mytemplate)  {
		// TODO Auto-generated constructor stub
		super();
		this.mytemplate = mytemplate;
	}
	
	@Override
	public void test() {
		// TODO Auto-generated method stub
		System.out.println("나 dao");
	}
	@Override
	public int insert(ChatDTO user) {
		String sql = "insert into myemp values(?,?,?,?,?,1000,?)";
		return mytemplate.update(sql,user.getDeptno(),user.getName(), user.getId(), user.getPass(),user.getAddr(),user.getGrade());
	}
	@Override
	public List<ChatDTO> select() {
		// TODO Auto-generated method stub
		return mytemplate.query("select * from myemp", new ChatRowMapper());
	}
	@Override
	public ChatDTO read(String id) {
		// TODO Auto-generated method stub
		return mytemplate.queryForObject("select * from myemp where id = ?", new Object[]{id}, new ChatRowMapper());
	}
	@Override
	public int update(ChatDTO dto) {
		// TODO Auto-generated method stub
		String sql = "update myemp set addr=?, grade=? where id = ?";
		return mytemplate.update(sql, dto.getAddr(), dto.getGrade(), dto.getId());
	}
	
	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		String sql = "delete from myemp where id =?";
		return mytemplate.update(sql, id);
	}
}
