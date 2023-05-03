<%@page import="com.market.carrot.dto.ProductDTO"%>
<%@page import="com.market.carrot.dto.FileDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../common/header.jsp"></jsp:include>
<link rel="stylesheet"
	href="/carrot/common/css/style_product_detail.css" />
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<link href="https://fonts.cdnfonts.com/css/helvetica-neue-9"
	rel="stylesheet">

</head>
<% List<FileDTO>imglist = (List<FileDTO>) request.getAttribute("imglist");
ProductDTO dto = (ProductDTO) request.getAttribute("dto");
int ChatCount = (Integer) request.getAttribute("ChatCount");

%>

<body>
	<article id="content">
		<section class="article-images">
			<div class="swiper mySwiper">
				<div class="swiper-wrapper">
					<%
					for (int i = 0; i < imglist.size(); i++) {
						FileDTO fdto = imglist.get(i);
					%>
					<div class="swiper-slide">
						<img class="slide_img_size"
							src="/carrot/upload/<%=fdto.getStoreFilename()%>"
							alt="" />
					</div>
					<%
					}
					%>
				</div>
			</div>
		</section>

		<section class="article-profile">

			<div class="space-between">
				<!-- 프로필 사진 -->
				<div style="display: flex">
					<div id="article-profile-image">
						<img
							src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-c649f052a34ebc4eee35048815d8e4f73061bf74552558bb70e07133f25524f9.png"
							alt=""
							onerror="this.onerror=null; this.src='https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-c649f052a34ebc4eee35048815d8e4f73061bf74552558bb70e07133f25524f9.png';" />
					</div>
					<div id="article-profile-left">

						<div id="nickname">
							<a>닉네임</a>
						</div>

						<div id="region-name">지역 정보 입력칸</div>

					</div>
				</div>

				<div id="article-profile-right">
					<dl id="temperature-wrap">

						<dt>
							<a href="/carrot/create_chat?items_id=<%=dto.getItems_id()%>">문의하기&nbsp;<i class="fa-regular fa-comment"></i>
							</a>
						</dt>
					</dl>
				</div>
			</div>
		</section>

		<section class="article-description">
			<div id="like-item">
				<a><span>관심등록&nbsp;<i class="fa-solid fa-heart"
					style="font-size: 1.4em; color: red;"></i></span></a>
			</div>
			<h1><%=dto.getTitle() %></h1>
			<p id="article-category">
				<%=dto.getCategory() %>
				<time>/ <%=dto.getUpdated_at() %></time>
			</p>
			<p id="article-price"
				style="font-size: 18px; font-weight: bold; color: black;">
				<%=dto.getPrice()%></p>
			<div id="article-detail"><%=dto.getContents()%></div>

			<p id='article-counts'>관심 22 ∙ 채팅 <%=ChatCount%> ∙ 조회 <%=dto.getViews()%></p>
		</section>

	</article>

	<section class="article-detail-hot-more">
	<%-- <jsp:include page="productList.jsp"></jsp:include> --%>
	</section>


	<jsp:include page="../common/footer.jsp"></jsp:include>

	<!-- Swiper JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

	<!-- Initialize Swiper -->
	<!-- Initialize Swiper -->
	<script>
		var swiper = new Swiper(".mySwiper", {
			effect : "cards",
			grabCursor : true,
		});
	</script>
</body>

</html>