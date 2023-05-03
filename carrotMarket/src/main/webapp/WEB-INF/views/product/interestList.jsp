<%@page import="com.market.carrot.dto.MyPageProductDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../common/header.jsp"></jsp:include>
<link href="/carrot/common/css/style_mypage_product.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<%
	List<MyPageProductDTO> interestproductlist = (List<MyPageProductDTO>) request.getAttribute("interestproductlist");
	%>
	<div class="content">
		<div class="media">
			<div class="media-head">
				<img src="/carrot/images/popular-sale-3.jpeg">
			</div>
			<div class="media-body">
				<h2>장동건님 관심품목</h2>
			</div>
		</div>
		<div class="container">
			<div class="bbs-top-search">
				<div class="select">
					<select name="category" class="pl">
						<option value="0" selected>카테고리</option>
						<option value="가전제품">가전제품</option>
						<option value="생활용품">생활용품</option>
						<option value="디지털용품">디지털용품</option>
						<option value="의류">의류</option>
					</select>
				</div>
				<div class="select">
					<select name="status" class="pl">
						<option value="상품상태" selected>상품상태</option>
						<option value="판매중">판매중</option>
						<option value="예약중">예약중</option>
						<option value="판매완료">판매완료</option>
					</select>
				</div>
				<div class="search">
					<input type="text" placeholder="Searah.." class="ser-txt">
					<input type="submit" value="검색" class="btn-ser">
				</div>
			</div>
			<table class="list-typeA">
				<thead>
					<tr>
						<th>상품번호</th>
						<th>제목</th>
						<th>카테고리</th>
						<th>등록일시</th>
						<th>판매상태</th>
						<th>이미지</th>
					</tr>
				</thead>
				<tbody>
					<% int size = interestproductlist.size();
							for(int i = 0; i < size; i++){
								MyPageProductDTO interestProduct = interestproductlist.get(i);%>
					<tr>
						<td class="col_blue"><%= interestProduct.getItems_id() %></td>
						<td class="subject"><a href="#"><%= interestProduct.getTitle() %></a></td>
						<td><%= interestProduct.getCategory() %></td>
						<td><%= interestProduct.getRegisterd_at() %></td>
						<td class="txt_left"><span class="state1 green"><span
								class="green"></span><%= interestProduct.getStatus_cd() %></span></td>
						<td>
							<div class="product-img">
								<img alt="" src="/carrot/images/popular-sale-1.jpeg">
							</div>
						</td>
					</tr>
					<% }%>
				</tbody>
			</table>
		</div>
	</div>
</body>
<jsp:include page="../common/footer.jsp"></jsp:include>
</html>