<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../common/header.jsp"></jsp:include>
<link href="style_mypage_product.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="content">
		<div class="media">
			<div class="media-head">
				<!-- <img src="/serverweb/images/jang1.jpg"> -->
			</div>
			<div class="media-body">
				<h2>장동건님 ♥관심품목♥</h2>

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
					<tr>
						<td class="col_blue">IWP-SR00001</td>
						<td class="subject"><a href="#">전자레인지 미개봉 판매</a></td>
						<td>가전제품</td>
						<td>01/18/2022 PM 1:15:17</td>
						<td class="txt_left"><span class="state1 green"><span
								class="green"></span>예약중</span></td>
						<td>
							<div class="product-img">
								<img alt="" src="/serverweb/images/bts.jpg">
							</div>
						</td>
					</tr>
					<tr>
						<td class="col_blue">INF-P00001</td>
						<td class="subject"><a href="#">효자손 팝니다!!</a></td>
						<td>생활용품</td>
						<td>01/18/2022 PM 1:15:17</td>
						<td class="txt_left"><span class="state1 orange">판매중</span></td>
						<td>
							<div class="product-img">
								<img alt="" src="/serverweb/images/bts1.jpg">
							</div>
						</td>
					</tr>
					<tr>
						<td class="col_blue">INF-P00001</td>
						<td class="subject"><a href="#">스톤아일랜드 패딩 판매</a></td>
						<td>의류</td>
						<td>01/18/2022 PM 1:15:17</td>
						<td class="txt_left"><span class="state1 gray"><span
								class="gray"></span>판매완료</span></td>
						<td>
							<div class="product-img">
								<img alt="" src="/serverweb/images/bts2.jpg">
							</div>
						</td>
					</tr>
					<tr>
						<td class="col_blue">DP-C00001</td>
						<td class="subject"><a href="#">모니터 판매합니다.</a></td>
						<td>디지털용품</td>
						<td>01/18/2022 PM 1:15:17</td>
						<td class="txt_left"><span class="state1 gray"><span
								class="gray"></span>판매완료</span></td>
						<td>
							<div class="product-img">
								<img alt="" src="/serverweb/images/bts.jpg">
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