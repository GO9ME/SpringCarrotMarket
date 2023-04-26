<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../common/header.jsp"></jsp:include>
<!-- Bootstrap cdn 설정 -->
<!-- <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->

<style type="text/css">
.cards-wrap {
	display: flex;
	flex-wrap: wrap;
	flex-direction: column;
	height: 1000px;
}

.card {
	width: 30%;
	margin: 1%;
	height: 400px;
	margin-top: 1%;
}

.card-photo {
	height: 65%;
}

.card-desc {
	height: 35%;
}

.card-photo-size {
	width: 100%;
	height: 100%;
}

.card-desc-size {
	width: 100%;
}

.card-title {
	width: 100%;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}
</style>
</head>
<body>
	<!-- carousel를 구성할 영역 설정 -->
	<div
		style="width: 700px; height: 800px; margin-top: 200px; margin: 0 auto;">
		<!-- carousel를 사용하기 위해서는 class에 carousel와 slide 설정한다. -->
		<!-- carousel는 특이하게 id를 설정해야 한다.-->
		<div id="carousel-example-generic" class="carousel slide">
			<!-- carousel의 지시자 -->
			<!-- 지시자라고는 하는데 ol태그의 class에 carousel-indicators를 넣는다. -->
			<ol class="carousel-indicators">
				<!-- li는 이미지 개수만큼 추가하고 data-target은 carousel id를 가르킨다. -->
				<!-- data-slide-to는 순서대로 0부터 올라가고 0은 active를 설정한다. -->
				<!-- 딱히 이 부분은 옵션별로 설정하게 없다. -->
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"
					class="active"></li>
			</ol>
			<!-- 실제 이미지 아이템 -->
			<!-- class는 carousel-inner로 설정하고 role은 listbox에서 설정한다. -->
			<div class="carousel-inner" role="listbox"
				style="width: 700px; height: 500px">
				<!-- 이미지의 개수만큼 item을 만든다. 중요한 포인트는 carousel-indicators의 li 태그 개수와 item의 개수는 일치해야 한다. -->
				<div class="item active">
					<!-- 아미지 설정- -->
					<img
						src="http://localhost:8088/carrotMarket/assets/images/popular-sale-8.jpeg"
						style="width: 100%; height: 100%; object-fit: cover;">
					<!-- 캡션 설정 (생략 가능) -->
					<!-- 글자 색은 검은색 -->
					<div class="carousel-caption" style="color: black;"></div>
				</div>
				<div class="item">
					<img
						src="http://localhost:8088/carrotMarket/assets/images/popular-sale-8.jpeg"
						style="width: 100%; height: 100%; object-fit: cover;">
					<div class="carousel-caption" style="color: black;"></div>
				</div>
				<div class="item">
					<img
						src="http://localhost:8088/carrotMarket/assets/images/popular-sale-8.jpeg"
						style="width: 100%; height: 100%; object-fit: cover;">
					<div class="carousel-caption" style="color: black;"></div>
				</div>
				<!-- 왼쪽 화살표 버튼 -->
				<!-- href는 carousel의 id를 가르킨다. -->
				<a class="left carousel-control" href="#carousel-example-generic"
					role="button" data-slide="prev"> <!-- 왼쪽 화살표 --> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				</a>
				<!-- 오른쪽 화살표 버튼 -->
				<!-- href는 carousel의 id를 가르킨다. -->
				<a class="right carousel-control" href="#carousel-example-generic"
					role="button" data-slide="next"> <!-- 오른쪽 화살표 --> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				</a>
			</div>
			<div class="space-between" style="margin-top: 50px; display: flex;">
				<div
					style="width: 150px; height: 150px; border-radius: 70%; overflow: hidden">
					<div id="article-profile-image">
						<img alt="마스크" src="/serverweb/images/bts2.jpg"
							style="width: 100%; height: 100%; object-fit: cover;">
					</div>
				</div>
				<div id="article-profile-left">
					<div id="nickname">
						<h1>판매@@@</h1>
					</div>
				</div>
			</div>
			<div>
				<hr />
			</div>
			<section id="article-description">
				<h1 property="schema:name" id="article-title"
					style="margin-top: 0px;">갤럭시 S22 울트라</h1>
				<p id="article-category">
					디지털기기 ∙
					<time> 4일 전 </time>
				</p>
				<p property="schema:priceValidUntil" datatype="xsd:date"
					content="2025-04-18"></p>
				<p rel="schema:url" resource="https://www.daangn.com/569226822"></p>
				<p property="schema:priceCurrency" content="KRW"></p>
				<p id="article-price" property="schema:price" content="120000.0"
					style="font-size: 18px; font-weight: bold;">120,000원</p>
				<div property="schema:description" id="article-detail">
					<p>갤럭시 S22 울트라 판매합니다. 생활기스만 있고</p>
				</div>
				<p id="article-counts">관심 52 ∙ 채팅 133 ∙ 조회 1773</p>
			</section>
		</div>
		<div>
			<hr />
		</div>
		<div id="article-detail-hot-more">
			<div style="display: flex;">
				<div style="margin-right: auto;">
					<div>
						<h4>판매자의 다른상품</h4>
					</div>
				</div>
				<div id="hot-more-link" style="margin-left: auto;">
					<div>
						<a href="/hot_articles">더 구경하기</a>
					</div>
				</div>
			</div>
			<div class="cards-wrap">
				<div class="card ">
					<a class="card-link ga-click" data-event-label="570681215"
						data-event-category="show_article_from"
						data-event-action="hot_region" href="/articles/570681215">
						<div class="card-photo">
							<img alt="집 이사가서 정리합니다~(냉장고, 밥솥, 세탁기, 공기청정기, 선반, 전자레인지)"
								class="card-photo-size"
								src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/56e64a81067e7b11d5c3cad098810624cb8a0a2e8c84b46ce11e86306b99be91.jpg?q=82&amp;s=300x300&amp;t=crop">
						</div>
						<div class="card-desc">
							<div class="card-desc-size">
								<h2 class="card-title">집 이사가서 정리합니다~(냉장고, 밥솥, 세탁기, 공기청정기,
									선반, 전자레인지)</h2>
								<div class="card-price ">10,000원</div>
								<div class="card-region-name">경기도 성남시 수정구 수진1동</div>
								<div class="card-counts">
									<span> 관심 18 </span> ∙ <span> 채팅 25 </span>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="card ">
					<a class="card-link ga-click" data-event-label="568786850"
						data-event-category="show_article_from"
						data-event-action="hot_region" href="/articles/568786850">
						<div class="card-photo">
							<img class="card-photo-size" alt="아이폰14싸게 팝니다"
								src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/44fa2098128a54b4d0544b292516002e86fd6dc75b07ea3c67e79d38bc3ec659.webp?q=82&amp;s=300x300&amp;t=crop">
						</div>
						<div class="card-desc">
							<div class="card-desc-size">
								<h2 class="card-title">아이폰14싸게 팝니다</h2>
								<div class="card-price ">600,000원</div>
								<div class="card-region-name">서울 동작구 사당동</div>
								<div class="card-counts">
									<span> 관심 14 </span> ∙ <span> 채팅 35 </span>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="card ">
					<a class="card-link ga-click" data-event-label="568758378"
						data-event-category="show_article_from"
						data-event-action="hot_region" href="/articles/568758378">
						<div class="card-photo">
							<img alt="목공기계팔아요" class="card-photo-size"
								src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/f0d283ee2bf6dbb6270604b366cdfa2ff1fcfd9ad670b6465dd0eec41673f69b.webp?q=82&amp;s=300x300&amp;t=crop">
						</div>
						<div class="card-desc">
							<div class="card-desc-size">
								<h2 class="card-title">목공기계팔아요</h2>
								<div class="card-price ">100,000원</div>
								<div class="card-region-name">경기도 양평군 서종면</div>
								<div class="card-counts">
									<span> 관심 48 </span> ∙ <span> 채팅 42 </span>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="card ">
					<a class="card-link ga-click" data-event-label="567692631"
						data-event-category="show_article_from"
						data-event-action="hot_region" href="/articles/567692631">
						<div class="card-photo">
							<img alt="대전 ICC 호텔 숙박권 팝니다." class="card-photo-size"
								src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/1380a4439adc37e9f59d2ac0c7635e538bfbcfc660d4a7248a14474c1d18e1d9.webp?q=82&amp;s=300x300&amp;t=crop">
						</div>
						<div class="card-desc">
							<div class="card-desc-size">
								<h2 class="card-title">대전 ICC 호텔 숙박권 팝니다.</h2>
								<div class="card-price ">50,000원</div>
								<div class="card-region-name">세종시 새롬동</div>
								<div class="card-counts">
									<span> 관심 17 </span> ∙ <span> 채팅 6 </span>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="card ">
					<a class="card-link ga-click" data-event-label="570995388"
						data-event-category="show_article_from"
						data-event-action="hot_region" href="/articles/570995388">
						<div class="card-photo">
							<img alt="스피드랙" class="card-photo-size"
								src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/9d0020dfcfb3b69cd9635f7461535c7eee8cc2d89da5e23a3230bd70552885c7.webp?q=82&amp;s=300x300&amp;t=crop">
						</div>
						<div class="card-desc">
							<div class="card-desc-size">
								<h2 class="card-title">스피드랙</h2>
								<div class="card-price ">10,000원</div>
								<div class="card-region-name">경북 경주시 동천동</div>
								<div class="card-counts">
									<span> 관심 20 </span> ∙ <span> 채팅 20 </span>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="card ">
					<a class="card-link ga-click" data-event-label="570665676"
						data-event-category="show_article_from"
						data-event-action="hot_region" href="/articles/570665676">
						<div class="card-photo">
							<img alt="타사키 진주 비즈 목걸이 귀걸이 세트 (6.5mm)" class="card-photo-size"
								src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/82aad93a9f684d318302f6ee2c0c8c2dee9a92f7608bccd96557861ccca20136.jpg?q=82&amp;s=300x300&amp;t=crop">
						</div>
						<div class="card-desc">
							<div class="card-desc-size">
								<h2 class="card-title">타사키 진주 비즈 목걸이 귀걸이 세트 (6.5mm)</h2>
								<div class="card-price ">500,000원</div>
								<div class="card-region-name">서울 강남구 압구정동</div>
								<div class="card-counts">
									<span> 관심 34 </span> ∙ <span> 채팅 6 </span>
								</div>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(function() {
			// 이미지 슬라이드 컨트롤를 사용하기 위해서는 carousel를 실행해야한다.
			$('#carousel-example-generic').carousel({
				// 슬리아딩 자동 순환 지연 시간
				// false면 자동 순환하지 않는다.
				interval : 1000,
				// hover를 설정하면 마우스를 가져대면 자동 순환이 멈춘다.
				pause : "hover",
				// 순환 설정, true면 1 -> 2가면 다시 1로 돌아가서 반복
				wrap : true,
				// 키보드 이벤트 설정 여부(?)
				keyboard : true
			});
		});
	</script>
</body>
<jsp:include page="../common/footer.jsp"></jsp:include>
</html>