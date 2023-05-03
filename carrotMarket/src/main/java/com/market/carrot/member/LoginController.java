package com.market.carrot.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.market.carrot.dto.UserDTO;
import com.market.carrot.member.login.LoginService;

@Controller
public class LoginController {

	@Autowired
	LoginService service;

	@RequestMapping("/login")
	public String login(String user_id, String password, HttpServletRequest request) {
		UserDTO user = null;
		user = service.checkLogin(user_id, password);
		String view = "redirect:/main";
		if (user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("userdata", user);
		} else {
			request.setAttribute("msg", "로그인 실패");
			request.setAttribute("url", "/carrot/main");
			return "common/alert";
		}
		return view;
	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.invalidate();
		}
		return "redirect:/main";
	}
}
