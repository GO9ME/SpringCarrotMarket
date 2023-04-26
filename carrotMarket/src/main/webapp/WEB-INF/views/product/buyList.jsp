<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../common/header.jsp"></jsp:include>
<style type="text/css">
.content {
	margin: 50px;
	padding: 50px;
}

.media {
	border-radius: 12px;
	display: flex;
}

.media img {
	border-radius: 12px;
	width: 100%;
	height: 100%;
	object-fit: fill;
}

.media-head {
	width: 150px;
	height: 150px;
	border-radius: 60%;
	overflow: hidden;
}

.media-body {
	margin-top: 40px;
	margin-left: 50px;
}

.container {
	margin-top: 30px;
}

.bbs-top-search {
	display: flex;
	align-items: center;
	justify-content: flex-end;
	margin-bottom: 40px;
	padding: 0 20px;
}

.list-typeA {
	width: 100%;
}

.search {
	display: inline-flex;
	flex-direction: row-reverse;
	height: 33px;
	background: #fff;
	border: 1px solid #cfd3f6;
	border-radius: 17px;
	overflow: hidden;
}

.search input {
	border: 0;
}

.search .ser-txt {
	height: 100%;
}

.col_blue {
	color: #5e72e4 !important;
}

.subject {
	text-align: left;
	text-overflow: ellipsis !important;
}

.txt_left {
	text-align: left !important;
}

.green {
	background-color: #9fcc2e;
}

.gray {
	background-color: #9fcc2e;
}

.more-btn-b {
	position: relative;
	display: inline-block;
	z-index: 30;
}

.more-btn-b .view {
	display: none;
	position: absolute;
	bottom: 5px;
	right: 0;
	padding: 8px 0;
	min-width: 80px;
	text-align: left;
	background-color: #fff;
	border: 1px solid #b7b6b6;
	border-radius: 5px;
	box-shadow: 0px 2px 1.4px 0.6px rgba(6, 0, 1, 0.1);
	z-index: 10;
}

a {
	text-decoration: none;
	color: #000;
	color: inherit;
}

tr {
	display: table-row;
	vertical-align: inherit;
	border-color: inherit;
}

.list-typeA tr {
	text-align: center;
}

.list-typeA thead tr th {
	padding: 10px;
	font-size: 13px;
	color: #718398;
	font-weight: 400;
	background: #f7fafc;
	border-bottom: 1px solid #e6ebf2;
}

.product-img img {
	width: 100px;
	height: 100px;
	border-radius: 10%;
	overflow: hidden;
}


.body {
	text-align: left;
	font-size: 1.4rem;
	color: #000;
	line-height: 1.4;
	font-family: 'Roboto', 'Noto Sans KR', sans-serif;
	font-weight: 300;
	letter-spacing: -0.5px;
	background-color: #fff;
}

.list-typeA thead tr th {
	padding: 10px;
	font-size: 13px;
	color: #718398;
	font-weight: 400;
	background: #f7fafc;
	border-bottom: 1px solid #e6ebf2;
}

.search .btn-ser {
	flex-shrink: 0;
	width: 40px;
	height: 100%;
	text-indent: -999px;
	overflow: hidden;
	background: #fff
		url(http://yellowpang.review/IWP/ITSM/user/images/itsm_icon/ic_search.png)
		no-repeat center center;
}


.pl{
    width: 200px;
    border: 1px solid #C4C4C4;
    box-sizing: border-box;
    border-radius: 10px;
    padding: 12px 13px;
    font-family: 'Roboto';
    font-style: normal;
    font-weight: 400;
    font-size: 14px;
    line-height: 16px;
    margin-right: 30px;
}

.pl:focus{
    border: 1px solid #9B51E0;
    box-sizing: border-box;
    border-radius: 10px;
    outline: 3px solid #F8E4FF;
    border-radius: 10px;
}

</style>
</head>
<body>
	<div class="content">
		<div class="media">
			<div class="media-head">
				<img src="/serverweb/images/jang1.jpg">
			</div>
			<div class="media-body">
				<h2>장동건님 구매내역</h2>

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
						<th>구매일시</th>
						<th>이미지</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="col_blue">IWP-SR00001</td>
						<td class="subject"><a href="#">전자레인지 미개봉 판매</a></td>
						<td>가전제품</td>
						<td>01/18/2022 PM 1:15:17</td>
						<td>
							<div class="product-img">
								<img alt="" src="http://localhost:8088/carrotMarket/assets/images/popular-sale-8.jpeg">
							</div>
						</td>
					</tr>
					<tr>
						<td class="col_blue">INF-P00001</td>
						<td class="subject"><a href="#">효자손 팝니다!!</a></td>
						<td>생활용품</td>
						<td>01/18/2022 PM 1:15:17</td>
						<td>
							<div class="product-img">
								<img alt="" src="http://localhost:8088/carrotMarket/assets/images/popular-sale-8.jpeg">
							</div>
						</td>
					</tr>
					<tr>
						<td class="col_blue">INF-P00001</td>
						<td class="subject"><a href="#">스톤아일랜드 패딩 판매</a></td>
						<td>의류</td>
						<td>01/18/2022 PM 1:15:17</td>
						<td>
							<div class="product-img">
								<img alt="" src="http://localhost:8088/carrotMarket/assets/images/popular-sale-8.jpeg">
							</div>
						</td>
					</tr>
					<tr>
						<td class="col_blue">DP-C00001</td>
						<td class="subject"><a href="#">모니터 판매합니다.</a></td>
						<td>디지털용품</td>
						<td>01/18/2022 PM 1:15:17</td>
						<td>
							<div class="product-img">
								<img alt="" src="http://localhost:8088/carrotMarket/assets/images/popular-sale-8.jpeg">
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
<jsp:include page="../common/footer.jsp"></jsp:include>
</html>