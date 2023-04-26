<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../common/header.jsp"></jsp:include>
<!--     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    jQuery 추가
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    부트스트랩 JS 추가
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/700619e3a2.js" crossorigin="anonymous"></script>
 -->
<link rel="stylesheet" href="/carrotMarket/assets/css/style_product.css" />

</head>

<body>
	<section class="product-register">
		
		<div class="container mt-3">
			<h2>내 물건 팔기</h2>
			<div class="row">
				<div class="col-2">
					<div class="dropzone">
						<input type="file" name="file" id="file" class="inputfile">
						<label for="file"><i class="fa-solid fa-file-image"></i>파일
							선택</label>
					</div>
				</div>
				<div class="col-10">
					<div class="row">
						<div class="thumbnail"></div>
					</div>
				</div>
			</div>
		
		
			<input type="text" class="form-control mt-2" id="title"
				placeholder="제목">
			<button type="button"
				class="btn btn-sm btn-block text-left mt-2 category-btn"
				data-toggle="modal" data-target="#categoryModal">
				<span id="selectedCategory">카테고리 선택</span><i
					class="fa-solid fa-chevron-right right-arrow-icon"></i>
			</button>
			<!-- 모달창 -->
			<div class="modal fade" id="categoryModal" tabindex="-1" role="dialog"
				aria-labelledby="categoryModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<ul class="list-group">
							<li class="list-group-item list-group-item-action">카테고리 1</li>
							<li class="list-group-item list-group-item-action">카테고리 2</li>
							<li class="list-group-item list-group-item-action">카테고리 3</li>
							<li class="list-group-item list-group-item-action">카테고리 4</li>
							<li class="list-group-item list-group-item-action">카테고리 5</li>
							<li class="list-group-item list-group-item-action">카테고리 6</li>
							<li class="list-group-item list-group-item-action">카테고리 7</li>
							<li class="list-group-item list-group-item-action">카테고리 8</li>
							<li class="list-group-item list-group-item-action">카테고리 9</li>
						</ul>
					</div>
				</div>
			</div>
		
			<input type="text" class="form-control mt-2" id="price"
				placeholder="￦ 가격(선택사항)">
			<textarea class="form-control mt-2" id="content"
				placeholder="xx동에 올릴 게시글 내용을 작성해주세요(가품 및 판매금지 물품은 게시가 제한될 수 있어요.)"
				rows="8"></textarea>
			<div class="text-center">
				<button class="btn btn-light mt-3" id="send">완료</button>
			</div>
		</div>
		
		<!-- 모달창 -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="myModalLabel">알림</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body"></div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">닫기</button>
					</div>
				</div>
			</div>
		</div>
		
		<script type="text/javascript" src="/carrotMarket/assets/js/product.js"></script>
	</section>

	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>

</html>