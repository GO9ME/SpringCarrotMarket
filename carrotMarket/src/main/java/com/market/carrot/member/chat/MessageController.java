package com.market.carrot.member.chat;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.market.carrot.dto.ChatConTentDTO;
import com.market.carrot.dto.UserDTO;

@Controller
public class MessageController {

	@Autowired
	ChatService service;

	// 메시지 목록
	@RequestMapping(value = "/chat")
	public ModelAndView message_list(HttpSession session) {
		ModelAndView mav = new ModelAndView("chat/message_list");
		UserDTO user = (UserDTO) session.getAttribute("userdata");
		System.out.println(user);
		String nick = user.getUser_id();
		ChatConTentDTO dto = new ChatConTentDTO();
		dto.setNick(nick);

		// 메시지 리스트
		List<ChatConTentDTO> list = service.messageList(dto);
		mav.addObject("list", list);

		return mav;
	}

	@RequestMapping(value = "/message_ajax_list")
	public ModelAndView message_ajax_list(HttpSession session) {
		ModelAndView mav = new ModelAndView("chat/message_ajax_list");
		UserDTO user = (UserDTO) session.getAttribute("userdata");
		System.out.println("ajax" + user);
		String nick = user.getUser_id();
		ChatConTentDTO dto = new ChatConTentDTO();
		dto.setNick(nick);

		// 메시지 리스트
		List<ChatConTentDTO> list = service.messageList(dto);
		mav.addObject("list", list);

		return mav;
	}

	@RequestMapping(value = "/message_content_list")
	public ModelAndView message_content_list(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView("chat/message_content_list");
		UserDTO user = (UserDTO) session.getAttribute("userdata");
		String nick = user.getUser_id();
		int room = Integer.parseInt(request.getParameter("room"));
		ChatConTentDTO dto = new ChatConTentDTO();
		dto.setNick(nick);
		dto.setChat_id(room);

		// 메시지 리스트
		List<ChatConTentDTO> clist = service.roomContentList(dto);
		mav.addObject("clist", clist);

		return mav;
	}
	
	@RequestMapping(value = "/create_chat")
	public ModelAndView createChatRoom(String items_id, HttpSession session) {
		ModelAndView mav = new ModelAndView("redirect:/chat");
	
		return mav;
	}

	// 메시지 리스트에서 메세지 보내기
	@ResponseBody
	@RequestMapping(value = "/message_send_list")
	public int message_send_inlist(@RequestParam int room, @RequestParam String other_nick,
			@RequestParam String content, HttpSession session) {
		

		UserDTO user = (UserDTO) session.getAttribute("userdata");
		String nick = user.getUser_id();
		System.out.println(nick);

		ChatConTentDTO dto = new ChatConTentDTO();
		dto.setChat_id(room);
		dto.setUser_id(nick);
		dto.setOther_nick(other_nick);
		dto.setContent(content);
		int flag = service.messageSendInlist(dto);
		return flag;
	}

}
