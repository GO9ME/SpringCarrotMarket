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
<link href="style_product.css" rel="stylesheet" type="text/css">

</head>
<body class="hoian-kr">
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
			<article class="card-top ">
				<a class="card-link " data-event-label="572387191"
					href="/articles/572387191">
					<div class="card-photo ">
						<img alt="삼성티비팝니다 거치대포함"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/d44191172ec7c42f12678b69f1946d16ae448bf6de75b037221326a735c74e60.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">삼성티비팝니다 거치대포함</h2>
						<div class="card-price ">50,000원</div>
						<div class="card-region-name">부산 연제구 연산제2동</div>
						<div class="card-counts">
							<span> 관심 11 </span> ∙ <span> 채팅 55 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572098719"
					href="/articles/572098719">
					<div class="card-photo ">
						<img alt="르쿠르제"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/aaf00f558f567a5d6a63dd655c62b74fdee30a405d707ff60ae81ef0b5b635e1.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">르쿠르제</h2>
						<div class="card-price ">50,000원</div>
						<div class="card-region-name">경기도 고양시 일산서구 주엽동</div>
						<div class="card-counts">
							<span> 관심 37 </span> ∙ <span> 채팅 36 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572330029"
					href="/articles/572330029">
					<div class="card-photo ">
						<img alt="커피숍 테이블 의자 판매합니다"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/19cb62f7a62db94ba18f44c0c2ea1b094efbfd3b2724d5cc3fda141eb3ff2a17.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">커피숍 테이블 의자 판매합니다</h2>
						<div class="card-price ">5,000원</div>
						<div class="card-region-name">경남 김해시 장유3동</div>
						<div class="card-counts">
							<span> 관심 16 </span> ∙ <span> 채팅 36 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572200318"
					href="/articles/572200318">
					<div class="card-photo ">
						<img alt="마이크로킥보드 맥시 블랙"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/09c4b003f51ffa2f5adef190e3280110678d2c79cd00e5853c25062c00172ae8.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">마이크로킥보드 맥시 블랙</h2>
						<div class="card-price ">50,000원</div>
						<div class="card-region-name">서울 양천구 목동</div>
						<div class="card-counts">
							<span> 관심 13 </span> ∙ <span> 채팅 28 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572356162"
					href="/articles/572356162">
					<div class="card-photo ">
						<img alt="제습기"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/0c30ba6f483b5e69c0cb62f59e85e60a513e568c9588250469ab991ac013d8e8.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">제습기</h2>
						<div class="card-price ">20,000원</div>
						<div class="card-region-name">경남 김해시 장유3동</div>
						<div class="card-counts">
							<span> 관심 7 </span> ∙ <span> 채팅 22 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="569226822"
					href="/articles/569226822">
					<div class="card-photo ">
						<img alt="갤럭시 S22 울트라"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/68a0439053675a435c140057d640c9f4c122a4a1188c6e9531fb73a05c7cf2f7.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">갤럭시 S22 울트라</h2>
						<div class="card-price ">120,000원</div>
						<div class="card-region-name">부산 해운대구 우제1동</div>
						<div class="card-counts">
							<span> 관심 60 </span> ∙ <span> 채팅 148 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572395719"
					href="/articles/572395719">
					<div class="card-photo ">
						<img alt="갤럭시 워치 5 44mm"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/1012ab66433be58e58d78442a7feb945f7dea53f80814f5733b6417e6ae58af5.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">갤럭시 워치 5 44mm</h2>
						<div class="card-price ">80,000원</div>
						<div class="card-region-name">경기도 김포시 고촌읍</div>
						<div class="card-counts">
							<span> 관심 10 </span> ∙ <span> 채팅 34 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572051030"
					href="/articles/572051030">
					<div class="card-photo ">
						<img alt="냉장고 급처합니다."
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/2fc28506a424dcd57eb1a74448b75aac49f01cd2a0f22ade70f01fb5906ad296.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">냉장고 급처합니다.</h2>
						<div class="card-price ">30,000원</div>
						<div class="card-region-name">인천 남동구 간석동</div>
						<div class="card-counts">
							<span> 관심 8 </span> ∙ <span> 채팅 3 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="571857148"
					href="/articles/571857148">
					<div class="card-photo ">
						<img alt="마늘쫑  뽑아가세요"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/17cff2ff6d1a76033afe5aba6abefd416cb52ac56d69d22511ca5c66fa1cd538.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">마늘쫑 뽑아가세요</h2>
						<div class="card-price ">123원</div>
						<div class="card-region-name">경남 창원시 의창구 용동</div>
						<div class="card-counts">
							<span> 관심 31 </span> ∙ <span> 채팅 5 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="568799857"
					href="/articles/568799857">
					<div class="card-photo ">
						<img alt="수납장"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/7f352efb3f67a8d06de79092ce23280eb79859b945f384cd9b7317a7b8261692.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">수납장</h2>
						<div class="card-price ">20,000원</div>
						<div class="card-region-name">경북 포항시 남구 상도동</div>
						<div class="card-counts">
							<span> 관심 78 </span> ∙ <span> 채팅 79 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572337729"
					href="/articles/572337729">
					<div class="card-photo ">
						<img alt="LG 냉장고 252L (R-B261GBW)"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/3256f95765843f2ab14a9e138eb5db1fd334c567e0acb4a0f6241e8bb57d9ba7.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">LG 냉장고 252L (R-B261GBW)</h2>
						<div class="card-price ">50,000원</div>
						<div class="card-region-name">광주 광산구 우산동</div>
						<div class="card-counts">
							<span> 관심 3 </span> ∙ <span> 채팅 24 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572237964"
					href="/articles/572237964">
					<div class="card-photo ">
						<img alt="낚시용품 일괄 판매합니다"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/b180d278bd6c550b591e5be9ddb197bed3bb8d8096fe6fe7a49120d2910860e2.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">낚시용품 일괄 판매합니다</h2>
						<div class="card-price ">100,000원</div>
						<div class="card-region-name">경남 창원시 의창구 봉곡동</div>
						<div class="card-counts">
							<span> 관심 4 </span> ∙ <span> 채팅 15 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="571933287"
					href="/articles/571933287">
					<div class="card-photo ">
						<img alt="티티카카 미니벨로 접이식 자전거(플라이트D7)"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/116907f99c90311f781333524125aa14e2ac69df71140673ed6609c781ca2567.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">티티카카 미니벨로 접이식 자전거(플라이트D7)</h2>
						<div class="card-price ">120,000원</div>
						<div class="card-region-name">경기도 용인시 수지구 죽전2동</div>
						<div class="card-counts">
							<span> 관심 12 </span> ∙ <span> 채팅 17 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572331559"
					href="/articles/572331559">
					<div class="card-photo ">
						<img alt="갤럭시 워치4 (44mm)"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/e7d93efcb29dc255ce111d4b47ab80ee2e95a8e2126261da8058766d94e6d825.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">갤럭시 워치4 (44mm)</h2>
						<div class="card-price ">50,000원</div>
						<div class="card-region-name">경기도 안양시 동안구 비산1동</div>
						<div class="card-counts">
							<span> 관심 11 </span> ∙ <span> 채팅 13 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572279270"
					href="/articles/572279270">
					<div class="card-photo ">
						<img alt="삼성제습기 15리터 보류중"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/a92233c0706ad5e104d3e8e9236f4f7de0f484fc74fe91e076d194c7562323bf.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">삼성제습기 15리터 보류중</h2>
						<div class="card-price ">110,000원</div>
						<div class="card-region-name">부산 연제구 연산동</div>
						<div class="card-counts">
							<span> 관심 15 </span> ∙ <span> 채팅 25 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572080618"
					href="/articles/572080618">
					<div class="card-photo ">
						<img alt="여행용 캐리어"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/17512229d4d09251735e7af5695de8a0f82f94d6788d83c350f575a9b5f9acbd.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">여행용 캐리어</h2>
						<div class="card-price ">35,000원</div>
						<div class="card-region-name">광주 서구 화정동</div>
						<div class="card-counts">
							<span> 관심 18 </span> ∙ <span> 채팅 24 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="568758378"
					href="/articles/568758378">
					<div class="card-photo ">
						<img alt="목공기계팔아요"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/f0d283ee2bf6dbb6270604b366cdfa2ff1fcfd9ad670b6465dd0eec41673f69b.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">목공기계팔아요</h2>
						<div class="card-price ">100,000원</div>
						<div class="card-region-name">경기도 양평군 서종면</div>
						<div class="card-counts">
							<span> 관심 46 </span> ∙ <span> 채팅 42 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572067611"
					href="/articles/572067611">
					<div class="card-photo ">
						<img alt="테이블세트"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/fd93f52b59b27c964211d447de3d9ce207a560729aa595953a676107cd6a498c.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">테이블세트</h2>
						<div class="card-price ">10,000원</div>
						<div class="card-region-name">전남 순천시 해룡면</div>
						<div class="card-counts">
							<span> 관심 11 </span> ∙ <span> 채팅 9 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572173171"
					href="/articles/572173171">
					<div class="card-photo ">
						<img alt="원목 선반"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/14df00a31c936482d12482c0402dc935f2fa4291ac638a7799a3fac5f51c3248.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">원목 선반</h2>
						<div class="card-price ">5,000원</div>
						<div class="card-region-name">충북 충주시 목행.용탄동</div>
						<div class="card-counts">
							<span> 관심 8 </span> ∙ <span> 채팅 19 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572290579"
					href="/articles/572290579">
					<div class="card-photo ">
						<img alt="프롬유샤워핸들"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/85e67e9c28eb42df984ceb3e35053ecbeb24b855730d294245960ebc94ba704c.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">프롬유샤워핸들</h2>
						<div class="card-price ">40,000원</div>
						<div class="card-region-name">광주 광산구 첨단2동</div>
						<div class="card-counts">
							<span> 관심 6 </span> ∙ <span> 채팅 23 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="571493905"
					href="/articles/571493905">
					<div class="card-photo ">
						<img alt="자전거 팝니다"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/4c433e00f7ed2b870711f77c39f27ca3f8cf6819b99240decc19fb82f7d0f406.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">자전거 팝니다</h2>
						<div class="card-price ">18,000원</div>
						<div class="card-region-name">경기도 수원시 영통구 광교1동</div>
						<div class="card-counts">
							<span> 관심 18 </span> ∙ <span> 채팅 31 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572053214"
					href="/articles/572053214">
					<div class="card-photo ">
						<img alt="까페필요한물건 팔아요~~♡♡"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/6be732e8d8152f2f775ab898d15d076d9122ea3c67671e3e311b3990c2eadf6a.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">까페필요한물건 팔아요~~♡♡</h2>
						<div class="card-price ">4,000원</div>
						<div class="card-region-name">대전 서구 도안동</div>
						<div class="card-counts">
							<span> 관심 30 </span> ∙ <span> 채팅 27 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572167218"
					href="/articles/572167218">
					<div class="card-photo ">
						<img alt="루이비통 가방"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/b471e09e0fea98c6cdb27021061cc165d1633f539518f8b9915f94560bd19e2f.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">루이비통 가방</h2>
						<div class="card-price ">20,000원</div>
						<div class="card-region-name">서울 성북구 석관동</div>
						<div class="card-counts">
							<span> 관심 15 </span> ∙ <span> 채팅 14 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572289420"
					href="/articles/572289420">
					<div class="card-photo ">
						<img alt="고춧가루"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/f237f4cb4167acda91f22aa5b5bf225104fbf39e21fda2fde0ed2cfbc943e7b3.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">고춧가루</h2>
						<div class="card-price ">40,000원</div>
						<div class="card-region-name">경기도 안양시 동안구 호계동</div>
						<div class="card-counts">
							<span> 관심 8 </span> ∙ <span> 채팅 21 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572339080"
					href="/articles/572339080">
					<div class="card-photo ">
						<img alt="위닉스 제습기팔아요 10L"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/b798f9a0aa5a6f39c6e87f865888b3b3c59e211b1ea335e59dba9a361f921754.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">위닉스 제습기팔아요 10L</h2>
						<div class="card-price ">70,000원</div>
						<div class="card-region-name">울산 남구 신정2동</div>
						<div class="card-counts">
							<span> 관심 2 </span> ∙ <span> 채팅 21 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="571673363"
					href="/articles/571673363">
					<div class="card-photo ">
						<img alt="접이식자전거"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/905165a89890d1cc387d158a701cf1361e8272eb00f16c17a21a0390a2684beb.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">접이식자전거</h2>
						<div class="card-price ">25,000원</div>
						<div class="card-region-name">인천 서구 석남3동</div>
						<div class="card-counts">
							<span> 관심 20 </span> ∙ <span> 채팅 35 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572147728"
					href="/articles/572147728">
					<div class="card-photo ">
						<img alt="버팔로텐트(7인용)"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/6606b1258c86985c8ee5c35c675864c422f02fffb837d2a2e3f97d929274dd78.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">버팔로텐트(7인용)</h2>
						<div class="card-price ">나눔🧡</div>
						<div class="card-region-name">경기도 안산시 상록구 해양동</div>
						<div class="card-counts">
							<span> 관심 5 </span> ∙ <span> 채팅 7 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="568786850"
					href="/articles/568786850">
					<div class="card-photo ">
						<img alt="아이폰14싸게 팝니다"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/44fa2098128a54b4d0544b292516002e86fd6dc75b07ea3c67e79d38bc3ec659.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">아이폰14싸게 팝니다</h2>
						<div class="card-price ">600,000원</div>
						<div class="card-region-name">서울 동작구 사당동</div>
						<div class="card-counts">
							<span> 관심 13 </span> ∙ <span> 채팅 36 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="571621275"
					href="/articles/571621275">
					<div class="card-photo ">
						<img alt="원형절단각도톱"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/eef22a26ec62279e6b8e393bcb794ab4266fd7505f104f7e066810bc4ff659e9.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">원형절단각도톱</h2>
						<div class="card-price ">30,000원</div>
						<div class="card-region-name">경남 양산시 동면</div>
						<div class="card-counts">
							<span> 관심 8 </span> ∙ <span> 채팅 6 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="568541450"
					href="/articles/568541450">
					<div class="card-photo ">
						<img alt="휀스 철망 기둥"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/b19d991bedc18fb9f17ce5685ed8bf8ca4a3aa805f6cfd2d612c9a87a6b91868.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">휀스 철망 기둥</h2>
						<div class="card-price ">5,000원</div>
						<div class="card-region-name">전남 목포시 원산동</div>
						<div class="card-counts">
							<span> 관심 14 </span> ∙ <span> 채팅 6 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572175731"
					href="/articles/572175731">
					<div class="card-photo ">
						<img alt="스노우피크 igt 일괄"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/edf5531d3d51e75459082f868179c1a90806afd0812b5a620524ec3251accc6e.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">스노우피크 igt 일괄</h2>
						<div class="card-price ">700,000원</div>
						<div class="card-region-name">대구 중구 대신동</div>
						<div class="card-counts">
							<span> 관심 16 </span> ∙ <span> 채팅 8 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="571915652"
					href="/articles/571915652">
					<div class="card-photo ">
						<img alt="코드제로 p9 청소기"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/b77ded007fe4d70f31565f646b9cd334274daf842c1196e67fa4d3753525d77d.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">코드제로 p9 청소기</h2>
						<div class="card-price ">10,000원</div>
						<div class="card-region-name">경기도 성남시 분당구 정자동</div>
						<div class="card-counts">
							<span> 관심 10 </span> ∙ <span> 채팅 12 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="568818460"
					href="/articles/568818460">
					<div class="card-photo ">
						<img alt="공구팝니다"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/b7c86ce586c856e06ffbd6d91cdf39dd5fe805aa354450a7574fc3d786738ff5.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">공구팝니다</h2>
						<div class="card-price ">100원</div>
						<div class="card-region-name">경기도 시흥시 군자동</div>
						<div class="card-counts">
							<span> 관심 20 </span> ∙ <span> 채팅 48 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572312034"
					href="/articles/572312034">
					<div class="card-photo ">
						<img alt="Ps5 플스5 팝니다 디스크버전입니다"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/6cc575f1eab73f88bb7597639678b4415ca406f194102d6e3ffa3456dfb6c62e.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">Ps5 플스5 팝니다 디스크버전입니다</h2>
						<div class="card-price ">450,000원</div>
						<div class="card-region-name">경기도 시흥시 배곧동</div>
						<div class="card-counts">
							<span> 관심 14 </span> ∙ <span> 채팅 4 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="570219400"
					href="/articles/570219400">
					<div class="card-photo ">
						<img alt="루이비통 다미에 백"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/8bcc17f377d595b6f4e600a5f4b71feb26e62f24acbec00ddd8af8f6430d9dae.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">루이비통 다미에 백</h2>
						<div class="card-price ">700,000원</div>
						<div class="card-region-name">서울 강남구 개포동</div>
						<div class="card-counts">
							<span> 관심 23 </span> ∙ <span> 채팅 51 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572198166"
					href="/articles/572198166">
					<div class="card-photo ">
						<img alt="성인 자전거"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/7e9858a64f0d96a8c78f797c15627d6f668d25e1ffc49fc28ef1ca03b22ad29d.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">성인 자전거</h2>
						<div class="card-price ">35,000원</div>
						<div class="card-region-name">경기도 의정부시 용현동</div>
						<div class="card-counts">
							<span> 관심 9 </span> ∙ <span> 채팅 11 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572295099"
					href="/articles/572295099">
					<div class="card-photo ">
						<img alt="점퍼"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/4fa32419eb5a2b65651d65a495451c21841a8b989696119ec468d9a6271c8d89.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">점퍼</h2>
						<div class="card-price ">35,000원</div>
						<div class="card-region-name">대구 달서구 죽전동</div>
						<div class="card-counts">
							<span> 관심 11 </span> ∙ <span> 채팅 31 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572053522"
					href="/articles/572053522">
					<div class="card-photo ">
						<img alt="애플워치 se"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/ee866fc760c97e70b6f9651974d3849826e8f1730dd519618b0b91e9f46e5905.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">애플워치 se</h2>
						<div class="card-price ">90,000원</div>
						<div class="card-region-name">광주 서구 상무2동</div>
						<div class="card-counts">
							<span> 관심 37 </span> ∙ <span> 채팅 41 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="571579384"
					href="/articles/571579384">
					<div class="card-photo ">
						<img alt="조경잔디"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/b7d4bdd8813425dfccf4314750146469d78c1af257bcfa8d5dc071f51545c7a1.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">조경잔디</h2>
						<div class="card-price ">5,000원</div>
						<div class="card-region-name">강원도 원주시 호저면</div>
						<div class="card-counts">
							<span> 관심 29 </span> ∙ <span> 채팅 25 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572115444"
					href="/articles/572115444">
					<div class="card-photo ">
						<img alt="미니 김치냉장고"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/ede7d016b6aa4ffb62e84bb850a92953d225d49f2adf5d9485598e3e8b2b5cd8.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">미니 김치냉장고</h2>
						<div class="card-price ">50,000원</div>
						<div class="card-region-name">경기도 고양시 일산서구 송산동</div>
						<div class="card-counts">
							<span> 관심 8 </span> ∙ <span> 채팅 8 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572395227"
					href="/articles/572395227">
					<div class="card-photo ">
						<img alt="라이젠 5600x"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/7ddcf0b9ab244d809e41507972f89aa1f6ce69c8bff19b1d1329669fb80f6aaf.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">라이젠 5600x</h2>
						<div class="card-price ">110,000원</div>
						<div class="card-region-name">서울 종로구 창신제3동</div>
						<div class="card-counts">
							<span> 관심 5 </span> ∙ <span> 채팅 15 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572305539"
					href="/articles/572305539">
					<div class="card-photo ">
						<img alt="갤노트20울트라 256GB"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/2a3124a582d297d4f5a802828f4faf674ff7c7905f06ab41ca39dcd6b1764e23.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">갤노트20울트라 256GB</h2>
						<div class="card-price ">250,000원</div>
						<div class="card-region-name">경기도 시흥시 정왕3동</div>
						<div class="card-counts">
							<span> 관심 6 </span> ∙ <span> 채팅 18 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="571845943"
					href="/articles/571845943">
					<div class="card-photo ">
						<img alt="갤럭시 워치5 44mm"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/55c4ea512ce0cd54dc3dcda90ca058fd1f8597c60f393e967e4f3024bc171f01.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">갤럭시 워치5 44mm</h2>
						<div class="card-price ">150,000원</div>
						<div class="card-region-name">부산 해운대구 우동</div>
						<div class="card-counts">
							<span> 관심 12 </span> ∙ <span> 채팅 26 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="571636240"
					href="/articles/571636240">
					<div class="card-photo ">
						<img alt="플스디스크 고장"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/afc1cc068e33b630dbaed2975c5494d38094e51fd220addf4a59accb0abce8c3.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">플스디스크 고장</h2>
						<div class="card-price ">120,000원</div>
						<div class="card-region-name">경남 창원시 성산구 상남동</div>
						<div class="card-counts">
							<span> 관심 10 </span> ∙ <span> 채팅 8 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572374648"
					href="/articles/572374648">
					<div class="card-photo ">
						<img alt="베베드피노 모자"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/4fba8152bfd8d227e847c823d77eeac929c6cc85bd1da0add82aa4d58ba5afe8.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">베베드피노 모자</h2>
						<div class="card-price ">5,000원</div>
						<div class="card-region-name">서울 송파구 잠실7동</div>
						<div class="card-counts">
							<span> 관심 4 </span> ∙ <span> 채팅 18 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572414629"
					href="/articles/572414629">
					<div class="card-photo ">
						<img alt="LG냉장고"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/c4b23b292e64d7781f7fc7a6ddc01f23e4addd0dc5dbc89177bf23b7ff6f7210.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">LG냉장고</h2>
						<div class="card-price ">70,000원</div>
						<div class="card-region-name">서울 성북구 석관동</div>
						<div class="card-counts">
							<span> 관심 8 </span> ∙ <span> 채팅 12 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="571510573"
					href="/articles/571510573">
					<div class="card-photo ">
						<img alt="이케아 수납장 급판매 만원"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/527424d0f51159324218283f6ae3722db6c540bb64533c35ffb7316e3f782bbc.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">이케아 수납장 급판매 만원</h2>
						<div class="card-price ">10,000원</div>
						<div class="card-region-name">경기도 성남시 분당구 구미동</div>
						<div class="card-counts">
							<span> 관심 10 </span> ∙ <span> 채팅 3 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572267988"
					href="/articles/572267988">
					<div class="card-photo ">
						<img alt="이케아 lerberg 레르베리 4단 철제선반"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/e0c688ce5fded9caa32924cfbfb69e4dea0f3cb06f264981a294b17edcc4dd80.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">이케아 lerberg 레르베리 4단 철제선반</h2>
						<div class="card-price ">10,000원</div>
						<div class="card-region-name">충남 천안시 동남구 청당동</div>
						<div class="card-counts">
							<span> 관심 11 </span> ∙ <span> 채팅 19 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572280519"
					href="/articles/572280519">
					<div class="card-photo ">
						<img alt="뽀송뽀송 위닉스 제습기  대용량 40000원"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/3fb034c21a55c0c089f19c43937db50c0003026b0e27a213c86a9e78376764d4.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">뽀송뽀송 위닉스 제습기 대용량 40000원</h2>
						<div class="card-price ">40,000원</div>
						<div class="card-region-name">경기도 오산시 원동</div>
						<div class="card-counts">
							<span> 관심 10 </span> ∙ <span> 채팅 22 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="571253565"
					href="/articles/571253565">
					<div class="card-photo ">
						<img alt="위니아 제습기 14L  판매"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/b4a3e1357c875c7e041b904f5ce1d148bbeb37ca058bcb9031fd63e81cd93a98.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">위니아 제습기 14L 판매</h2>
						<div class="card-price ">30,000원</div>
						<div class="card-region-name">경기도 수원시 영통구 이의동</div>
						<div class="card-counts">
							<span> 관심 7 </span> ∙ <span> 채팅 26 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572292987"
					href="/articles/572292987">
					<div class="card-photo ">
						<img alt="몽클레어 패딩가디건 1사이즈"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/65c7dbd4d7633083ca5d4eecb40a98edb73cfb23273ccdda5c21dd92624452f6.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">몽클레어 패딩가디건 1사이즈</h2>
						<div class="card-price ">280,000원</div>
						<div class="card-region-name">서울 강남구 도곡2동</div>
						<div class="card-counts">
							<span> 관심 16 </span> ∙ <span> 채팅 11 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="568918028"
					href="/articles/568918028">
					<div class="card-photo ">
						<img alt="겨울 캠핑용 팬히터"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/4546037bc934e165c34e3b329083bc9d808b0e307f0e1ab94177c280254bfcae.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">겨울 캠핑용 팬히터</h2>
						<div class="card-price ">50,000원</div>
						<div class="card-region-name">경남 창원시 마산합포구 월영동</div>
						<div class="card-counts">
							<span> 관심 13 </span> ∙ <span> 채팅 12 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="571690945"
					href="/articles/571690945">
					<div class="card-photo ">
						<img alt="자전거"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/11371ca96927626add8b0d6d6923a798d00b4fa5c7eb335ad57f1ae31e836919.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">자전거</h2>
						<div class="card-price ">30,000원</div>
						<div class="card-region-name">대구 서구 비산6동</div>
						<div class="card-counts">
							<span> 관심 19 </span> ∙ <span> 채팅 33 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572129876"
					href="/articles/572129876">
					<div class="card-photo ">
						<img alt="오알티 ORT1~9권 판매!"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/35f0c96e625e56bb3b3acb857348de2003584e3e9a8d790051192ab4673181f4.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">오알티 ORT1~9권 판매!</h2>
						<div class="card-price ">50,000원</div>
						<div class="card-region-name">경기도 수원시 영통구 하동</div>
						<div class="card-counts">
							<span> 관심 6 </span> ∙ <span> 채팅 16 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572127694"
					href="/articles/572127694">
					<div class="card-photo ">
						<img alt="이케아 트롤리 (화이트)"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/135d90e131bf75d48b55494cb45fb81276f49aa69b54a39b2716f6a41ac98d60.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">이케아 트롤리 (화이트)</h2>
						<div class="card-price ">5,000원</div>
						<div class="card-region-name">서울 성북구 장위동</div>
						<div class="card-counts">
							<span> 관심 11 </span> ∙ <span> 채팅 12 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572093655"
					href="/articles/572093655">
					<div class="card-photo ">
						<img alt="핑G425 MAX 우드 판매합니다"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/2fa8fa3b50c1532f1f08ef351ecedbc98466d68a5f8b34b1e611b6c5140c5da8.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">핑G425 MAX 우드 판매합니다</h2>
						<div class="card-price ">160,000원</div>
						<div class="card-region-name">대구 북구 산격2동</div>
						<div class="card-counts">
							<span> 관심 7 </span> ∙ <span> 채팅 5 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572222720"
					href="/articles/572222720">
					<div class="card-photo ">
						<img alt="지포스전기자전거"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/ca7bd89f91c0d5d4b366beaf227f731ccd1c6663f7da51d697b3d213e55fe228.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">지포스전기자전거</h2>
						<div class="card-price ">50,000원</div>
						<div class="card-region-name">인천 계양구 작전동</div>
						<div class="card-counts">
							<span> 관심 11 </span> ∙ <span> 채팅 18 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572212286"
					href="/articles/572212286">
					<div class="card-photo ">
						<img alt="베이비젠 요요 8만원"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/7d14df1316093593c3c0087f21c31f2643dfba2a8e2fc95d58779c20835e7fbe.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">베이비젠 요요 8만원</h2>
						<div class="card-price ">80,000원</div>
						<div class="card-region-name">서울 송파구 위례동</div>
						<div class="card-counts">
							<span> 관심 11 </span> ∙ <span> 채팅 17 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="568579794"
					href="/articles/568579794">
					<div class="card-photo ">
						<img alt="물방아 간 그네"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/66ca0ac80b0c58931a93f9a6bf19f044388bec20a6ee8a0d210987f95c59d932.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">물방아 간 그네</h2>
						<div class="card-price blank-price"></div>
						<div class="card-region-name">충남 홍성군 홍북읍</div>
						<div class="card-counts">
							<span> 관심 12 </span> ∙ <span> 채팅 43 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="571882001"
					href="/articles/571882001">
					<div class="card-photo ">
						<img alt="캐노피천막 캠핑"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/45c34ef41bc75fd724afe1acc7a2f931b69e9d45cfad449fbba6341ca8bfdf46.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">캐노피천막 캠핑</h2>
						<div class="card-price ">120,000원</div>
						<div class="card-region-name">경북 구미시 선주원남동</div>
						<div class="card-counts">
							<span> 관심 14 </span> ∙ <span> 채팅 9 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="568731189"
					href="/articles/568731189">
					<div class="card-photo ">
						<img alt="덤벨 아령 케틀벨 바벨 원판 다 팔아요~"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/30210419e79b3572c0332ef13849b0b9d0753a98b3afdf88d6f482e11fe8b12c.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">덤벨 아령 케틀벨 바벨 원판 다 팔아요~</h2>
						<div class="card-price ">5,000원</div>
						<div class="card-region-name">대구 달서구 월성동</div>
						<div class="card-counts">
							<span> 관심 13 </span> ∙ <span> 채팅 31 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572214239"
					href="/articles/572214239">
					<div class="card-photo ">
						<img alt="AMD5600X 본체 팝니다"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/488d9a88a9796b687a4e5f5dbc2127079e7e0b4f88be4b69324c60bcac7bc0f0.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">AMD5600X 본체 팝니다</h2>
						<div class="card-price ">350,000원</div>
						<div class="card-region-name">부산 동래구 복산동</div>
						<div class="card-counts">
							<span> 관심 8 </span> ∙ <span> 채팅 8 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572069788"
					href="/articles/572069788">
					<div class="card-photo ">
						<img alt="엘지 제습기"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/0555101c526b3d42126496b9bbef90471279fff3753478d8843f305822e0a8b6.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">엘지 제습기</h2>
						<div class="card-price ">30,000원</div>
						<div class="card-region-name">서울 강서구 화곡제6동</div>
						<div class="card-counts">
							<span> 관심 6 </span> ∙ <span> 채팅 14 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="571486075"
					href="/articles/571486075">
					<div class="card-photo ">
						<img alt="몽땅10,000 남자운동화"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/6db6f1ad5507b3ece2c8b83dc30a2f4e3cf9d3f620dcde83a877302dfc8d8f93.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">몽땅10,000 남자운동화</h2>
						<div class="card-price ">10,000원</div>
						<div class="card-region-name">인천 미추홀구 도화동</div>
						<div class="card-counts">
							<span> 관심 15 </span> ∙ <span> 채팅 21 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="571503081"
					href="/articles/571503081">
					<div class="card-photo ">
						<img alt="가정용 제빙기"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/f28316417aa3877f9693ab93cdb8a513283367600199debcc7b7ef87c9ffc1e7.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">가정용 제빙기</h2>
						<div class="card-price ">10,000원</div>
						<div class="card-region-name">서울 강서구 화곡본동</div>
						<div class="card-counts">
							<span> 관심 15 </span> ∙ <span> 채팅 9 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="570985564"
					href="/articles/570985564">
					<div class="card-photo ">
						<img alt="아이폰12미니128"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/0de19f4da893ef7912a0a153fa9337b93c3c34c58dc5704155cdcd63df686d48.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">아이폰12미니128</h2>
						<div class="card-price ">180,000원</div>
						<div class="card-region-name">제주 제주시 이도2동</div>
						<div class="card-counts">
							<span> 관심 26 </span> ∙ <span> 채팅 64 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572152298"
					href="/articles/572152298">
					<div class="card-photo ">
						<img alt="I7 노트북 저렴하게 팝니다."
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/8ce4aba74be04098a2e95fc41574cc3107e988efeaf0acec8e59eb649c07aa9b.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">I7 노트북 저렴하게 팝니다.</h2>
						<div class="card-price ">70,000원</div>
						<div class="card-region-name">경기도 의정부시 의정부동</div>
						<div class="card-counts">
							<span> 관심 14 </span> ∙ <span> 채팅 28 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572112249"
					href="/articles/572112249">
					<div class="card-photo ">
						<img alt="대용량 믹서기 한일전기 1~2회 사용"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/429d1d47732e2e52541729dae72a742f6ea135cfc5e5035811698ec7120d41b0.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">대용량 믹서기 한일전기 1~2회 사용</h2>
						<div class="card-price ">10,000원</div>
						<div class="card-region-name">서울 중랑구 면목제4동</div>
						<div class="card-counts">
							<span> 관심 2 </span> ∙ <span> 채팅 12 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="570491811"
					href="/articles/570491811">
					<div class="card-photo ">
						<img alt="스탠드형에어컨 팝니다"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/28bfdbccfcfe3d8a086e45539e615bbeffab5d82dfd46e065a1a7f2d2802856e.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">스탠드형에어컨 팝니다</h2>
						<div class="card-price ">200,000원</div>
						<div class="card-region-name">서울 강서구 마곡동</div>
						<div class="card-counts">
							<span> 관심 6 </span> ∙ <span> 채팅 22 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="568664814"
					href="/articles/568664814">
					<div class="card-photo ">
						<img alt="농막주택 , 이동식 주택 정리합니다"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/0d12d3a03a6efe3029ce39e0f36194d0061a3dbc954c5a95d7cbbb84c3a73005.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">농막주택 , 이동식 주택 정리합니다</h2>
						<div class="card-price ">1500만원</div>
						<div class="card-region-name">경기도 남양주시 진건읍</div>
						<div class="card-counts">
							<span> 관심 29 </span> ∙ <span> 채팅 15 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572267417"
					href="/articles/572267417">
					<div class="card-photo ">
						<img alt="냉장고.세탁기.에어컨"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/fbe9423b207fd3f9cacbf631a3fa0ccf384bf4afd1d12c6b175d55e52ad81e4a.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">냉장고.세탁기.에어컨</h2>
						<div class="card-price ">650,000원</div>
						<div class="card-region-name">경남 진주시 내동면</div>
						<div class="card-counts">
							<span> 관심 4 </span> ∙ <span> 채팅 15 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="568805948"
					href="/articles/568805948">
					<div class="card-photo ">
						<img alt="선반 수납장(내용 수정)"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/4c334f53aa70169ec5497cfa9b81b4148c522344050b48dd40df39e1b218e79c.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">선반 수납장(내용 수정)</h2>
						<div class="card-price ">10,000원</div>
						<div class="card-region-name">서울 강남구 도곡동</div>
						<div class="card-counts">
							<span> 관심 20 </span> ∙ <span> 채팅 12 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572409095"
					href="/articles/572409095">
					<div class="card-photo ">
						<img alt="갤럭시 노트10+ 급처"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/25cabcd9979f069d8d60ac922c830c3eeb4476b137a5d2e462cf7da4608be432.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">갤럭시 노트10+ 급처</h2>
						<div class="card-price ">100,000원</div>
						<div class="card-region-name">경기도 안산시 상록구 성포동</div>
						<div class="card-counts">
							<span> 관심 12 </span> ∙ <span> 채팅 9 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572336213"
					href="/articles/572336213">
					<div class="card-photo ">
						<img alt="루이비통 숄더백"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/4f56ea5243b6e44cc78bda8206257f03385583377e632b74c55a830996c97564.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">루이비통 숄더백</h2>
						<div class="card-price ">500,000원</div>
						<div class="card-region-name">경남 창원시 의창구 용호동</div>
						<div class="card-counts">
							<span> 관심 20 </span> ∙ <span> 채팅 21 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572420056"
					href="/articles/572420056">
					<div class="card-photo ">
						<img alt="이케아 트롤리"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/DA47E3E497BAA486DB3D5EC15598223AA25ABBB6A56F2E9792E9684FC90980F8.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">이케아 트롤리</h2>
						<div class="card-price ">10,000원</div>
						<div class="card-region-name">서울 강남구 도곡동</div>
						<div class="card-counts">
							<span> 관심 9 </span> ∙ <span> 채팅 14 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="571556010"
					href="/articles/571556010">
					<div class="card-photo ">
						<img alt="캠핑용 릴선"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/ee12e22eea799f7743e8f996421f735efd02d9a125b8b245f67298ccc63b995b.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">캠핑용 릴선</h2>
						<div class="card-price ">10,000원</div>
						<div class="card-region-name">인천 계양구 계양2동</div>
						<div class="card-counts">
							<span> 관심 6 </span> ∙ <span> 채팅 7 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572208692"
					href="/articles/572208692">
					<div class="card-photo ">
						<img alt="삼성폴드4정상해지폰"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/b72513534ad66a82ebb70a7030352e7cbff9d045928895e7d977ed3701e662f5.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">삼성폴드4정상해지폰</h2>
						<div class="card-price ">500,000원</div>
						<div class="card-region-name">충북 청주시 흥덕구 강서동</div>
						<div class="card-counts">
							<span> 관심 7 </span> ∙ <span> 채팅 18 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572373466"
					href="/articles/572373466">
					<div class="card-photo ">
						<img alt="냉난방기에어컨"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/2540b9d4432ae8b99f7278cbea1bbca9d1ce325685c5944ee87728c75cc3860b.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">냉난방기에어컨</h2>
						<div class="card-price ">250,000원</div>
						<div class="card-region-name">강원도 원주시 반곡관설동</div>
						<div class="card-counts">
							<span> 관심 2 </span> ∙ <span> 채팅 17 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="571924517"
					href="/articles/571924517">
					<div class="card-photo ">
						<img alt="컴퓨터 모니터 본체 키보드"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/0e02f48b91dcb164d4906e5bafd5e71f99303a3410de8ccce1ac23902f955d58.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">컴퓨터 모니터 본체 키보드</h2>
						<div class="card-price ">15,000원</div>
						<div class="card-region-name">부산 부산진구 개금제3동</div>
						<div class="card-counts">
							<span> 관심 7 </span> ∙ <span> 채팅 9 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="571989627"
					href="/articles/571989627">
					<div class="card-photo ">
						<img alt="헬렌카민스키비앙카"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/955660ed52c89ebd2161986cd4f68eb89dad3426d63c0409bcc9f1200ba5ffec.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">헬렌카민스키비앙카</h2>
						<div class="card-price ">80,000원</div>
						<div class="card-region-name">서울 강남구 개포2동</div>
						<div class="card-counts">
							<span> 관심 11 </span> ∙ <span> 채팅 12 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="569642368"
					href="/articles/569642368">
					<div class="card-photo ">
						<img alt="루이비통 가방 팝니다 루이비통 니스 미니 백"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/3816e8e4ff81b23c1d500b324e31df8a1ec44f6fd0076dfcd989fc520fe75b21.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">루이비통 가방 팝니다 루이비통 니스 미니 백</h2>
						<div class="card-price ">500,000원</div>
						<div class="card-region-name">부산 해운대구 우제2동</div>
						<div class="card-counts">
							<span> 관심 217 </span> ∙ <span> 채팅 72 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="569312229"
					href="/articles/569312229">
					<div class="card-photo ">
						<img alt="조립식 4단 철제선반"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/01180783bbf4ebbcd28c9293234112bdbc5377337256e4774f17e17ec27d50eb.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">조립식 4단 철제선반</h2>
						<div class="card-price ">20,000원</div>
						<div class="card-region-name">경남 창원시 마산합포구 진북면</div>
						<div class="card-counts">
							<span> 관심 26 </span> ∙ <span> 채팅 39 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="571538049"
					href="/articles/571538049">
					<div class="card-photo ">
						<img alt="65인치 삼성 tv 팝니다"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/976ce5b376e4ca986dd56e9ee8da3f62c525173f60d25fa22cf1843ec5fc6bd3.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">65인치 삼성 tv 팝니다</h2>
						<div class="card-price ">70,000원</div>
						<div class="card-region-name">경남 김해시 무계동</div>
						<div class="card-counts">
							<span> 관심 8 </span> ∙ <span> 채팅 7 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572257603"
					href="/articles/572257603">
					<div class="card-photo ">
						<img alt="스쿳앤라이드 킥보드 팝니다"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/f0063467f1c5d95ec78ea6b0cb6273917ac928fa87cde118841bccdfea15ac95.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">스쿳앤라이드 킥보드 팝니다</h2>
						<div class="card-price ">60,000원</div>
						<div class="card-region-name">서울 송파구 잠실3동</div>
						<div class="card-counts">
							<span> 관심 6 </span> ∙ <span> 채팅 14 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572237317"
					href="/articles/572237317">
					<div class="card-photo ">
						<img alt="암웨이 공기청정기 3년전 구입"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/B027BDAD3C89DF672E2447F36F53DD9BB31D2FC305737BC1B8443805283DF545.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">암웨이 공기청정기 3년전 구입</h2>
						<div class="card-price ">100,000원</div>
						<div class="card-region-name">경기도 김포시 운양동</div>
						<div class="card-counts">
							<span> 관심 11 </span> ∙ <span> 채팅 13 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572159074"
					href="/articles/572159074">
					<div class="card-photo ">
						<img alt="국내산 들기름"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/343909526b2431245b80364ca5ef502da64eb134b719f87e9945d831175909c5.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">국내산 들기름</h2>
						<div class="card-price ">15,000원</div>
						<div class="card-region-name">경기도 파주시 와동동</div>
						<div class="card-counts">
							<span> 관심 5 </span> ∙ <span> 채팅 14 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572337636"
					href="/articles/572337636">
					<div class="card-photo ">
						<img alt="스팸 14통"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/2264c6952f6450938314bb6592091bf77788f63cac61f2ddc1ea8a0228846ec5.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">스팸 14통</h2>
						<div class="card-price ">15,000원</div>
						<div class="card-region-name">서울 동작구 흑석동</div>
						<div class="card-counts">
							<span> 관심 5 </span> ∙ <span> 채팅 16 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572264286"
					href="/articles/572264286">
					<div class="card-photo ">
						<img alt="자전거 팝니다."
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/5d9fa27409f2ce3dabaa8506a2294ed3cb7abbfe04e7081ce177d3314d40c27b.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">자전거 팝니다.</h2>
						<div class="card-price ">30,000원</div>
						<div class="card-region-name">경기도 화성시 동탄1동</div>
						<div class="card-counts">
							<span> 관심 6 </span> ∙ <span> 채팅 14 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="571561120"
					href="/articles/571561120">
					<div class="card-photo ">
						<img alt="의자 판매합니다"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/e7607a5b5dd5e9d2e010bb0df46959d130fe231b93ac73d82d31468256f1775b.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">의자 판매합니다</h2>
						<div class="card-price ">10,000원</div>
						<div class="card-region-name">전북 전주시 완산구 효자3동</div>
						<div class="card-counts">
							<span> 관심 10 </span> ∙ <span> 채팅 20 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="571963320"
					href="/articles/571963320">
					<div class="card-photo ">
						<img alt="식당 까페 의자 테이블"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/f48b1580bcfc30bd16f541af2f0685e43988e3686b3cda8265c57f9fa5a6b9f1.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">식당 까페 의자 테이블</h2>
						<div class="card-price ">8,000원</div>
						<div class="card-region-name">인천 부평구 산곡4동</div>
						<div class="card-counts">
							<span> 관심 7 </span> ∙ <span> 채팅 9 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572315856"
					href="/articles/572315856">
					<div class="card-photo ">
						<img alt="냉장고 급처"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/4421c9bc14df1faa73d138ae3c333c439519aa220dec1ed758317c54c24a790b.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">냉장고 급처</h2>
						<div class="card-price ">80,000원</div>
						<div class="card-region-name">경기도 부천시 상2동</div>
						<div class="card-counts">
							<span> 관심 3 </span> ∙ <span> 채팅 10 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572328454"
					href="/articles/572328454">
					<div class="card-photo ">
						<img alt="자전거 팝니다 삼천리21단"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/1c21b17b494c127fa5b643cd6e95577d4f259a8cf8d079c746f0ee8964d87d28.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">자전거 팝니다 삼천리21단</h2>
						<div class="card-price ">20,000원</div>
						<div class="card-region-name">경기도 고양시 덕양구 도내동</div>
						<div class="card-counts">
							<span> 관심 6 </span> ∙ <span> 채팅 6 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572414221"
					href="/articles/572414221">
					<div class="card-photo ">
						<img alt="몽클레어 패딩 가디건 M"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/4e7cf5c791953492f841af94e14229069926fde7a4f8aea3dd12d3d65b7bafce.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">몽클레어 패딩 가디건 M</h2>
						<div class="card-price ">160,000원</div>
						<div class="card-region-name">서울 서초구 잠원동</div>
						<div class="card-counts">
							<span> 관심 7 </span> ∙ <span> 채팅 13 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="569669506"
					href="/articles/569669506">
					<div class="card-photo ">
						<img alt="아이폰 12미니"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/41e8f7e3be49ce50779296e198cbbca784ec4a510ca4058ce30e72f31eb89b70.jpg?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">아이폰 12미니</h2>
						<div class="card-price ">170,000원</div>
						<div class="card-region-name">경기도 광주시 오포읍</div>
						<div class="card-counts">
							<span> 관심 20 </span> ∙ <span> 채팅 42 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="571566254"
					href="/articles/571566254">
					<div class="card-photo ">
						<img alt="빵   문앞드림"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/cfdab78352885882845de21669735221b21c29012561d81b18e63dcc6000d9be.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">빵 문앞드림</h2>
						<div class="card-price ">10원</div>
						<div class="card-region-name">전북 군산시 나운3동</div>
						<div class="card-counts">
							<span> 관심 0 </span> ∙ <span> 채팅 4 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572076312"
					href="/articles/572076312">
					<div class="card-photo ">
						<img alt="삼천리 자전거"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/db54e207e1fb9a2d04ef1a5e77f5d932d1ea63bddfd756ea7e7955ff40289dab.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">삼천리 자전거</h2>
						<div class="card-price ">100,000원</div>
						<div class="card-region-name">전남 광양시 광양읍</div>
						<div class="card-counts">
							<span> 관심 7 </span> ∙ <span> 채팅 13 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572051320"
					href="/articles/572051320">
					<div class="card-photo ">
						<img alt="돌배묘목5년생 급매"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/0c0097717c431488c12b7809bfbf5a9cce52facbd362ed333c560dcd7b335295.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">돌배묘목5년생 급매</h2>
						<div class="card-price ">3,000원</div>
						<div class="card-region-name">강원도 평창군 봉평면</div>
						<div class="card-counts">
							<span> 관심 10 </span> ∙ <span> 채팅 28 </span>
						</div>
					</div>
				</a>
			</article>
			<article class="card-top ">
				<a class="card-link " data-event-label="572057769"
					href="/articles/572057769">
					<div class="card-photo ">
						<img alt="닥스가방"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/33c6599357625e35ee56acdac62606f67ea235d76f3d4a4b4e5b25e24ee1ea5b.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="card-desc">
						<h2 class="card-title">닥스가방</h2>
						<div class="card-price ">20,000원</div>
						<div class="card-region-name">서울 구로구 고척제1동</div>
						<div class="card-counts">
							<span> 관심 18 </span> ∙ <span> 채팅 14 </span>
						</div>
					</div>
				</a>
			</article>

		</section>

	</section>
</body>
</html>
