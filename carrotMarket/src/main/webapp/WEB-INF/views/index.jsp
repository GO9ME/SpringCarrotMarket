<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="./common/header.jsp"></jsp:include>
</head>
<body>

	<section class="home-main">

		<!-- main page 1 당근 마켓 소개 section -->
		<div class="home-main__item background-beige">
			<div class="item-box top--box">
				<article class="item-box__text">
					<h1>
						당신 근처의 <br />당근마켓
					</h1>
					<p>중고 거래부터 동네 정보까지, 이웃과 함께해요.</p>
					<p>가깝고 따뜻한 당신의 근처를 만들어요.</p>
				</article>
				<div class="item-box__img top--img">
					<img src="/carrot/images/phono-image-1.png"
						alt="phone-image-1" class="desktop" /> <img
						src="/carrot/images/phono-image-1.png"
						alt="phone-image-1" class="mobile" />
				</div>
			</div>	
		</div>

		<!-- main page 2 우리동네 중고 직거래 마켓-->
		<div class="home-main__item">
			<div class="item-box">
				<div class="item-box__img">
					<img src="/carrot/images/phono-image-2.png"
						alt="phono-image-2" />
				</div>
				<div class="item-box__container">
					<article class="item-box__text">
						<h2>
							우리 동네<br />중고 직거래 마켓
						</h2>
						<p>동네 주민들과 가깝고 따뜻한 거래를 지금 경험해보세요.</p>
					</article>
					<div class="item-box__button">
						<button>인기매물 보기</button>
						<button>믿을 수 있는 중고거래</button>
					</div>
				</div>
			</div>
		</div>

		<!-- main page 3 동네 생활 페이지 -->
		<div class="home-main__item background-green">
			<div class="item-box">
				<div>
					<article class="item-box__text">
						<h2>
							이웃과 함께 하는<br />동네 생활
						</h2>
						<p>우리 동네의 다양한 이야기를 이웃과 함께 나누어요.</p>
					</article>
					<div class="item-box__list">
						<div class="item-box__item">
							<img src="/carrot/images/icon-story-1.svg"
								alt="icon-story-1" />
							<h3>우리동네질문</h3>
							<p>
								궁금한 게 있을 땐 이웃<br />에게 물어보세요.
							</p>
						</div>
						<div class="item-box__item">
							<img src="/carrot/images/icon-story-2.svg"
								alt="icon-story-2" />
							<h3>동네분실센터</h3>
							<p>
								무언가를 잃어버렸을 때,<br />함께 찾을 수 있어요.
							</p>
						</div>
						<div class="item-box__item">
							<img src="/carrot/images/icon-story-3.svg"
								alt="icon-story-3" />
							<h3>우리동네질문</h3>
							<p>
								관심사가 비슷한 이웃과<br />온오프라인으로 만나요.
							</p>
						</div>
					</div>
				</div>
				<div class="item-box__img">
					<img src="/carrot/images/phono-image-3.png"
						alt="phono-image-3" />
				</div>
			</div>
		</div>

		<!-- main page 4 동네 가게 페이지-->
		<div class="home-main__item">
			<div class="item-box">
				<div class="item-box__img">
					<img src="/carrot/images/phono-image-4.png"
						alt="phono-image-4" />
				</div>
				<div class="item-box__container">
					<article class="item-box__text">
						<h2>
							내 근처에서 찾는<br />동네가게
						</h2>
						<p>우리 동네 가게를 찾고있나요?</p>
						<p>동네 주민이 남긴 진짜 후기를 확인해보세요!</p>
					</article>
					<div class="item-box__button">
						<button>당근마켓 동네가게 찾기</button>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- main page 5 중고거리 인기매물 리스트-->
	<section class="home-popular background-gray">
		<div class="home-popular__title">
			<h2>중고거래 인기매물</h2>
		</div>
		<div class="home-popular__list">
			<div class="popular-list">
				<div class="popular-list__item">
					<img src="/carrot/images/popular-sale-1.jpeg"
						alt="popular-sale-1" class="popular-list__img" />
					<p class="popular-list__title">티티카카 자전거</p>
					<p class="bold-text">20,000원</p>
					<div class="popular-list__description">
						<p class="popular-list__description--address">서울 노원구 하계동</p>
						<p class="popular-list__description--count">관심 10ㆍ채팅 35</p>
					</div>
				</div>
				<div class="popular-list__item">
					<img src="/carrot/images/popular-sale-2.jpeg"
						alt="popular-sale-2" class="popular-list__img" />
					<p class="popular-list__title">포켓몬빵 팔아요</p>
					<p class="bold-text">2,000원</p>
					<div class="popular-list__description">
						<p class="popular-list__description--address">광주 광산동 신가동</p>
						<p class="popular-list__description--count">관심 1ㆍ채팅 28</p>
					</div>
				</div>
				<div class="popular-list__item">
					<img src="/carrot/images/popular-sale-3.jpeg"
						alt="popular-sale-3" class="popular-list__img" />
					<p class="popular-list__title">필요하신분 가져가세요~</p>
					<p class="bold-text">-</p>
					<div class="popular-list__description">
						<p class="popular-list__description--address">전북 군산시 흥남동</p>
						<p class="popular-list__description--count">관심 4ㆍ채팅 27</p>
					</div>
				</div>
				<div class="popular-list__item">
					<img src="/carrot/images/popular-sale-4.jpeg"
						alt="popular-sale-4" class="popular-list__img" />
					<p class="popular-list__title">자전거</p>
					<p class="bold-text">30,000원</p>
					<div class="popular-list__description">
						<p class="popular-list__description--address">경기도 오산시 부산동</p>
						<p class="popular-list__description--count">관심 9ㆍ채팅 26</p>
					</div>
				</div>
				<div class="popular-list__item">
					<img src="/carrot/images/popular-sale-5.jpeg"
						alt="popular-sale-5" class="popular-list__img" />
					<p class="popular-list__title">냉장고 올립니다.</p>
					<p class="bold-text">100,000원</p>
					<div class="popular-list__description">
						<p class="popular-list__description--address">부산 금정구 서동</p>
						<p class="popular-list__description--count">관심 6ㆍ채팅 27</p>
					</div>
				</div>
				<div class="popular-list__item">
					<img src="/carrot/images/popular-sale-6.jpeg"
						alt="popular-sale-6" class="popular-list__img" />
					<p class="popular-list__title">컴팩트한 전자렌지에욤</p>
					<p class="bold-text">15,000원</p>
					<div class="popular-list__description">
						<p class="popular-list__description--address">부산 연제구 연산제1동</p>
						<p class="popular-list__description--count">관심 4ㆍ채팅 22</p>
					</div>
				</div>
				<div class="popular-list__item">
					<img src="/carrot/images/popular-sale-7.jpeg"
						alt="popular-sale-7" class="popular-list__img" />
					<p class="popular-list__title">제습기</p>
					<p class="bold-text">40,000원</p>
					<div class="popular-list__description">
						<p class="popular-list__description--address">인천 미추홀구 주안2동</p>
						<p class="popular-list__description--count">관심 8ㆍ채팅 24</p>
					</div>
				</div>
				<div class="popular-list__item">
					<img src="/carrot/images/popular-sale-8.jpeg"
						alt="popular-sale-8" class="popular-list__img" />
					<p class="popular-list__title">아시아 관리기 880 S</p>
					<p class="bold-text">1,000,000원</p>
					<div class="popular-list__description">
						<p class="popular-list__description--address">충남 보령시 동대동</p>
						<p class="popular-list__description--count">관심 11ㆍ채팅 22</p>
					</div>
				</div>
			</div>
		</div>
		<div class="home-popular__more bold-text">인기매물 더 보기</div>
	</section>
	<section class="home-search">
		<div class="home-search__title bold-text">중고거래 인기검색어</div>
		<ul class="home-search__list">
			<li class="home-search__item">포켓몬빵</li>
			<li class="home-search__item">자전거</li>
			<li class="home-search__item">의자</li>
			<li class="home-search__item">냉장고</li>
			<li class="home-search__item">캠핑</li>
			<li class="home-search__item">아이패드</li>
			<li class="home-search__item">아이폰</li>
			<li class="home-search__item">노트북</li>
			<li class="home-search__item">알바</li>
			<li class="home-search__item">오토바이</li>
		</ul>
	</section>


	<jsp:include page="./common/footer.jsp"></jsp:include>
</body>
</html>