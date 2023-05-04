<%@page import="com.market.carrot.dto.ProductDTO"%>
<%@page import="com.market.carrot.dto.FileDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.market.carrot.dto.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../common/header.jsp"></jsp:include>

<link rel="stylesheet" href="/carrot/common/css/style_product.css" />

</head>

<body>
	<%
	UserDTO user = (UserDTO) session.getAttribute("userdata");
	ProductDTO dto = (ProductDTO) request.getAttribute("dto");
	List<FileDTO> imglist = (List<FileDTO>) request.getAttribute("imglist");
	%>
	<section class="product-register">
		<form method="post" action="/carrot/product/modifyConfirm"
			enctype="multipart/form-data">
			<div class="container mt-3">
				<div class="row">
					<div class="col-lg-10 col-md-12 col-sm-12 mx-auto">
						<h2>상품 수정</h2>
						<hr />
						<input type="hidden" name="user_id"
							value="<%=user.getUser_id()%>">

						<div class="mt-3">
							<input type="file" class="input-lg" name="files" id="files"
								placeholder="" multiple="multiple">
						</div>
						<%
						for (int i = 0; i < imglist.size(); i++) {
							FileDTO fdto = imglist.get(i);
						%>
						<img class="slide_img_size"
							src="/carrot/upload/<%=fdto.getStoreFilename()%>" alt="" />
						<%
						}
						%>
						<div id="thumbnails" class="thumbnail-container mt-2"></div>



						<input type="text" class="form-control mt-3" id="title"
							name="title" value="<%=dto.getTitle()%>">
						<button type="button"
							class="btn btn-sm btn-block text-left mt-3 category-btn"
							data-toggle="modal" data-target="#categoryModal">
							<span id="selectedCategory"><%=dto.getCategory()%></span><i
								class="fa-solid fa-chevron-right right-arrow-icon"></i>
						</button>
						<!-- 모달창 -->
						<div class="modal fade" id="categoryModal" tabindex="-1"
							role="dialog" aria-labelledby="categoryModalLabel"
							aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<ul class="list-group">
										<li class="list-group-item list-group-item-action"
											onclick="document.querySelector('#categoryInput').value = '디지털/가전';">디지털/가전</li>
										<li class="list-group-item list-group-item-action"
											onclick="document.querySelector('#categoryInput').value = '가구/인테리어';">가구/인테리어</li>
										<li class="list-group-item list-group-item-action"
											onclick="document.querySelector('#categoryInput').value = '유아동/유아도서';">유아동/유아도서</li>
										<li class="list-group-item list-group-item-action"
											onclick="document.querySelector('#categoryInput').value = '생활/가공식품';">생활/가공식품</li>
										<li class="list-group-item list-group-item-action"
											onclick="document.querySelector('#categoryInput').value = '스포츠/레저';">스포츠/레저</li>
										<li class="list-group-item list-group-item-action"
											onclick="document.querySelector('#categoryInput').value = '여성패션/잡화';">여성패션/잡화</li>
										<li class="list-group-item list-group-item-action"
											onclick="document.querySelector('#categoryInput').value = '남성패션/잡화';">남성패션/잡화</li>
										<li class="list-group-item list-group-item-action"
											onclick="document.querySelector('#categoryInput').value = '뷰티/미용';">뷰티/미용</li>
										<li class="list-group-item list-group-item-action"
											onclick="document.querySelector('#categoryInput').value = '반려동물용품';">반려동물용품</li>
										<li class="list-group-item list-group-item-action"
											onclick="document.querySelector('#categoryInput').value = '서비스/상품권/아이템';">서비스/상품권/아이템</li>
										<li class="list-group-item list-group-item-action"
											onclick="document.querySelector('#categoryInput').value = '기타 중고물품';">기타
											중고물품</li>
									</ul>
								</div>
							</div>
						</div>

						<input type="hidden" id="categoryInput" name="category"
							value="<%=dto.getCategory()%>"> <input type="hidden"
							name="items_id" value="<%=request.getParameter("items_id")%>">
						<input type="text" class="form-control mt-3" id="price"
							name="price" value="<%=dto.getPrice()%>">
						<textarea class="form-control mt-3" id="content" name="contents"
							placeholder="" rows="8"><%=dto.getContents()%></textarea>
						<input type="hidden" name="status_cd" value="1"> <input
							type="hidden" name="use_at" value="1">


						<div class="text-center">
							<button class="btn btn-light mt-3" id="send" onclick="return validateForm();">완료</button>
						</div>
					</div>
				</div>
			</div>
		</form>
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

		<script type="text/javascript" src="/carrot/common/js/product.js"></script>
	</section>

	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>

</html>