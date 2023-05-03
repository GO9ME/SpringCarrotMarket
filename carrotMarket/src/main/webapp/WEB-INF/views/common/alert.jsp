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

	<script type="text/javascript">
		var msg = "<c:out value='${msg}'/>";
		var url = "<c:out value='${url}'/>";
		alert(msg);
		location.href = url;
	</script>
</body>
</html>