<%@page import="com.market.carrot.dto.ProductDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<title>당근마켓 중고거래 | 당신 근처의 당근마켓</title>
<meta name="description"
	content="당근마켓에서 거래되는 인기 중고 매물을 소개합니다. 지금 당근마켓에서 거래되고 있는 다양한 매물을 구경해보세요." />
<link rel="author" href="당근마켓" />
<meta property="og:url" content="https://www.daangn.com/hot_articles" />
<meta property="og:title" content="당근마켓 중고거래 | 당신 근처의 당근마켓" />
<meta property="og:description"
	content="당근마켓에서 거래되는 인기 중고 매물을 소개합니다. 지금 당근마켓에서 거래되고 있는 다양한 매물을 구경해보세요." />
<meta property="og:site_name" content="당근마켓" />
<meta property="og:image"
	content="https://www.daangn.com/images/meta/home/flea_market.png" />
<meta property="og:type" content="article" />
<meta property="og:locale" content="ko_KR" />
<meta property="fb:app_id" content="1463621440622064" />
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:site" content="@danggeunmarket" />
<meta name="twitter:title" content="당근마켓 중고거래 | 당신 근처의 당근마켓" />
<meta name="twitter:description"
	content="당근마켓에서 거래되는 인기 중고 매물을 소개합니다. 지금 당근마켓에서 거래되고 있는 다양한 매물을 구경해보세요." />
<meta name="twitter:image"
	content="https://www.daangn.com/images/meta/home/flea_market.png" />
<meta name="naver-site-verification"
	content="d1f8112731c18313535732cf2516d6401bfed40a" />
<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token"
	content="uTzz_STfvogPEND7adBVSX5lQZzGYxpJS6HoNf1BI7mHfxuJq35b5g3UrsPOQXRB81QkfapBGYG7QSpCRPS4lw" />

<link rel="shortcut icon" type="image/x-icon"
	href="https://d1unjqcospf8gs.cloudfront.net/favicon.ico" />
<link rel="apple-touch-icon" sizes="192x192"
	href="/images/icons/daangn_logo_192.png">
<link rel="apple-touch-icon-precomposed"
	href="/images/icons/daangn_logo_192.png">
<link rel="icon" sizes="192x192"
	href="/images/icons/daangn_logo_android_192.png">


<link rel="canonical" href="https://www.daangn.com/hot_articles" />



<link rel="stylesheet" media="all"
	href="https://d1unjqcospf8gs.cloudfront.net/assets/home/articles/hot-05663f2aed8868551a676d610d7322afa2255ed6964e18672346c35fe876bcc4.css" />
<script
	src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base-4b55f04bb2798d1f6aa4e078c0ad3504ef4993ad4123005ec35dde545e5788bd.js"></script>
<link href="/carrotMarket/common/css/style_product.css" rel="stylesheet" type="text/css">
<jsp:include page="../common/header.jsp"></jsp:include>
</head>
<body class="hoian-kr">
	<%
	List<ProductDTO> interestlist = (List<ProductDTO>) request.getAttribute("interestlist");
	%>
	<section id="content">
		<h1 class="head-title" id="hot-articles-head-title">중고거래 인기매물</h1>

		<nav id="hot-articles-navigation">
			<select name="region1" id="region1"
				onchange="changeRegion(&#39;r1&#39;, this.value)"
				class="hot-articles-nav-select"><option value="">지역을
					선택하세요</option>
				<option value="서울특별시">서울특별시</option>
				<option value="부산광역시">부산광역시</option>
				<option value="대구광역시">대구광역시</option>
				<option value="인천광역시">인천광역시</option>
				<option value="광주광역시">광주광역시</option>
				<option value="대전광역시">대전광역시</option>
				<option value="울산광역시">울산광역시</option>
				<option value="세종특별자치시">세종특별자치시</option>
				<option value="경기도">경기도</option>
				<option value="강원도">강원도</option>
				<option value="충청북도">충청북도</option>
				<option value="충청남도">충청남도</option>
				<option value="전라북도">전라북도</option>
				<option value="전라남도">전라남도</option>
				<option value="경상북도">경상북도</option>
				<option value="경상남도">경상남도</option>
				<option value="제주특별자치도">제주특별자치도</option></select> 
				<select name="region2"
				id="region2" disabled="disabled"
				onchange="changeRegion(&#39;r2&#39;, this.value)"
				class="hot-articles-nav-select"><option value="">동네를
					선택하세요</option>
				<option value="서울특별시">서울특별시</option>
				<option value="부산광역시">부산광역시</option>
				<option value="대구광역시">대구광역시</option>
				<option value="인천광역시">인천광역시</option>
				<option value="광주광역시">광주광역시</option>
				<option value="대전광역시">대전광역시</option>
				<option value="울산광역시">울산광역시</option>
				<option value="세종특별자치시">세종특별자치시</option>
				<option value="경기도">경기도</option>
				<option value="강원도">강원도</option>
				<option value="충청북도">충청북도</option>
				<option value="충청남도">충청남도</option>
				<option value="전라북도">전라북도</option>
				<option value="전라남도">전라남도</option>
				<option value="경상북도">경상북도</option>
				<option value="경상남도">경상남도</option>
				<option value="제주특별자치도">제주특별자치도</option></select>
				<div class="search">
					<input type="text" placeholder="Searah.." class="ser-txt">
					<input type="submit" value="검색" class="btn-ser">
				</div>
		</nav>
		<section class="cards-wrap">
			<% 
							int size = interestlist.size();
							for(int i = 0; i < size; i++){
								ProductDTO interest = interestlist.get(i);%>
			<article class="card-top ">
				<a class="card-link " data-event-label="572387191"
					href="/articles/572387191">
					<div class="card-photo ">
						<img alt="삼성티비팝니다 거치대포함"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/d44191172ec7c42f12678b69f1946d16ae448bf6de75b037221326a735c74e60.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title"><%=interest.getTitle() %></h2>
						<div class="card-price "><%=interest.getPrice() %>원</div>
						<div class="card-region-name"><%=interest.getSigun() %></div>
						<div class="card-counts">
							<span>관심 : <%= interest.getLikeCount() %> </span> ∙ <span>채팅 : <%= interest.getChatCount() %></span>
						</div>
					</div>
				</a>
			</article>
			<% }%>
		</section>

	</section>
</body>
<jsp:include page="../common/footer.jsp"></jsp:include>
</html>
