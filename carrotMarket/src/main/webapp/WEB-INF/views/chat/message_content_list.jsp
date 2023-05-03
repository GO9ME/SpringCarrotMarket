<%@page import="com.market.carrot.dto.UserDTO"%>
<%@page import="com.market.carrot.dto.ChatConTentDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- </head> -->
<%
List<ChatConTentDTO> clist = (List<ChatConTentDTO>) request.getAttribute("clist");
System.out.println(clist);
UserDTO user = (UserDTO) session.getAttribute("userdata");
String user_id = user.getUser_id();
System.out.println(user_id);
%>

<body>
	<c:forEach var="tmp" items="${clist}">

		<c:choose>

			<c:when test="${sessionScope.userdata.user_id ne tmp.user_id}">
				<!-- 받은메시지 -->
				<div class="incoming_msg">
					<a href="">${tmp.user_id} <!-- <img alt="" src="받는사람프로필"> -->
					</a>
				</div>
				<div class="received_msg">
					<div class="received_withd_msg">
						<p>${tmp.content}</p>
						<span class="time_date">${tmp.send_at}</span>
					</div>
				</div>
			</c:when>

			<c:otherwise>

				<!-- 보낸메시지 -->
				<div class="outgoing_msg">
					<div class="sent_msg">
						<p>${tmp.content}</p>
						<span class="time_date">${tmp.send_at}</span>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
	</c:forEach>

</body>
</html>