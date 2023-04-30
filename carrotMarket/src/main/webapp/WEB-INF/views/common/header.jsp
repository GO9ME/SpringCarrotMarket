<%@page import="com.market.carrot.dto.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>


<script src="https://kit.fontawesome.com/700619e3a2.js"
	crossorigin="anonymous"></script>

<link rel="daangn icon" href="/carrot/images/logo.ico" />
<link rel="stylesheet" href="/carrot/common/css/reset.css" />
<link rel="stylesheet" href="/carrot/common/css/style.css" />

<title>당신 근처의 당근마켓</title>
</head>
<body>
	<%
	UserDTO user = (UserDTO) session.getAttribute("userdata");
	%>

	<!-- header part -->
	<header>
		<div class="header__inner">
			<a href="/carrot/main"><img src="/carrot/images/logo-basic.svg"
				alt="daangn-logo" /></a>
			<div class="buttons">

				<div class="buttons-menu">
					<button class="buttons-menu__list btn-click">중고거래</button>
					<!-- main 1dep menu -->
					<div id="gnb" class="gnb-wrap">
						<div class="gnb-inner">
							<ul>
								<li class="active"><a
									href="/carrot/view/product/sellList.jsp"><button
											class="buttons-menu__list">상품목록</button></a></li>
								<li><a href=""><button class="buttons-menu__listk">인기상품</button></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="buttons-menu">
					<button class="buttons-menu__store"
						onclick="location.href='/carrot/product/register'">상품등록</button>
				</div>



			</div>
			<div class="search">
				<input type="text" name="header-search-input" class="search__input"
					placeholder="동네 이름, 물품명 등을 검색해보세요!" />
				<button class="search__button">
					<img src="/carrot/images/search-icon.svg" alt="daangn-search" />
				</button>
			</div>
			<div class="buttons">
				<%
				if (user != null) {
				%>

				<div class="buttons-menu">
					<button class="buttons-menu__store"
						onclick="location.href='/carrot/product/register'">마이페이지</button>
				</div>

				<%
				}
				%>
				<div class="buttons-chat">
					<%
					if (user == null) {
					%>
					<button type="button" class="buttons-chat__button"
						data-toggle="modal" data-target="#exampleModal" data-whatever="">당근채팅</button>
					<%
					} else {
					%>
					<button class="buttons-chat__button"
						onclick="location.href='/carrot/member/chat'">당근채팅</button>
					<%
					}
					%>
				</div>
				<!-- 로그아웃 시  -->
				<%
				if (user == null) {
				%>
				<div class="buttons-login">

					<button type="button" class="buttons-login__button"
						data-toggle="modal" data-target="#exampleModal" data-whatever="">로그인</button>
				</div>
				<%
				} else {
				%>
				<!-- 로그인 시  -->

				<div class="buttons-login">
					<button type="button" class="buttons-logout__button"
						onclick="location.href='/carrot/logout'">로그아웃</button>
				</div>
				<%
				}
				%>
			</div>
			<div class="tablet-buttons">
				<img src="/carrot/images/search-icon-orange.svg"
					alt="daangn-search-orange" />
			</div>
		</div>



	</header>
	<jsp:include page="login.jsp"></jsp:include>



</body>
<script src="/carrot/common/js/main.js"></script>
</html>