<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="tmp" items="${list}">
		<div class="chat_list_box${tmp.room} chat_list_box">
			<div class="chat_list" type="button" room="${tmp.room}"
				other-nick="${tmp.other_nick}">
				<!-- active chat -->
				<div class="chat_people">
					<a href=""> <img alt="" src="받는사람프로필">
					</a>
				</div>
				<div class="chat_ib">
					<h5>${tmp.other_nick}<span class="chat_date">${tmp.send_time}</span>
					</h5>
					<div class="row">
						<div class="col-10">
							<p>${tmp.content}</p>
						</div>
						<c:if test="${tmp.unread > 0 }">
							<div class="col-2 unread${tmp.room}">
								<span class="badge bg-danger">${tmp.unread}</span>
							</div>
						</c:if>
					</div>
				</div>
			</div>
		</div>

	</c:forEach>
</body>
</html>