<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<jsp:include page="../common/header.jsp"></jsp:include>
<title>프로필 수정</title>

<style type="text/css">
.profile-user {
	width: 150px;
	height: 150px;
	border-radius: 70%;
	overflow: hidden;
	margin-left: 15%;
	margin-bottom: 10%;
}

.profile-user-img {
	width: 100%;
	height: 100%;
	object-fit: cover;
}
#profile_side{
	margin: 50px;
}
</style>
</head>
<body>
	<div class="card border-dark mb-3" id="profile_side"
		style="max-width: 18rem; height: 100%;">
		<div class="card-header">
			<h5 class="card-title">프로필</h5>
		</div>
		<div class="card-body text-dark">

			<div class="profile-user">
				<img alt="profile_img" src="../images/myprofile.jpg"
					class="profile-user-img">
			</div>
			<!-- 아이디 -->
			<div id="id">아이디 호출</div>
			<hr />
			<!-- 닉네임 -->
			<div class="input-group  input-group-sm mb-3">
				<input type="text" readonly class="form-control-plaintext"
					id="staticEmail" value="닉네임#">
				<div class="input-group-append">
					<button type="button" class="btn btn-warning btn-sm"
						data-toggle="modal" data-target="#nicknameModal">수정</button>
				</div>
			</div>
			<!-- 비밀번호 -->
			<div class="input-group  input-group-sm mb-3">
				<input type="text" readonly class="form-control-plaintext"
					id="staticEmail" value="비밀번호">
				<div class="input-group-append">
					<button type="button" class="btn btn-warning btn-sm"
						data-toggle="modal" data-target="#passModal">수정</button>
				</div>
			</div>
			<!-- 전화번호 -->
			<div class="input-group  input-group-sm mb-3">
				<input type="text" readonly class="form-control-plaintext"
					id="staticEmail" value="전화번호">
				<div class="input-group-append">
					<button type="button" class="btn btn-warning btn-sm"
						data-toggle="modal" data-target="#phoneModal">수정</button>
				</div>
			</div>
			<!-- 이메일 -->
			<div class="input-group  input-group-sm mb-3">
				<input type="text" readonly class="form-control-plaintext"
					id="staticEmail" value="이메일">
				<div class="input-group-append">
					<button type="button" class="btn btn-warning btn-sm"
						data-toggle="modal" data-target="#emailModal">수정</button>
				</div>
			</div>

			<!-- 주소 -->
			<div class="input-group  input-group-sm mb-3">
				<input type="text" readonly class="form-control-plaintext"
					id="staticEmail" value="주소">
				<div class="input-group-append">
					<button type="button" class="btn btn-warning btn-sm"
						data-toggle="modal" data-target="#addrModal">수정</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 모달창: 닉네임 -->
	<div class="modal fade" id="nicknameModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">닉네임 변경</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="old" class="col-form-label">기존 닉네임</label> <input
								type="text" class="form-control" id="recipient-name">
						</div>
						<div class="form-group">
							<label for="new-name" class="col-form-label">새로운 닉네임</label> <input
								type="text" class="form-control" id="recipient-name">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-warning">변경하기</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 모달창: 비밀번호 -->
	<div class="modal fade" id="passModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">비밀번호 변경</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="old" class="col-form-label"> 기존 비밀번호</label> <input
								type="text" class="form-control" id="recipient-name">
						</div>
						<div class="form-group">
							<label for="new-name" class="col-form-label">새로운 비밀번호</label> <input
								type="text" class="form-control" id="recipient-name"> <label
								for="new-name" class="col-form-label">새로운 비밀번호 확인</label> <input
								type="text" class="form-control" id="recipient-name">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-warning">변경하기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 모달창: 전화번호>전화번호인증 -->
	<div class="modal fade" id="phoneModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">전화번호 변경</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="old" class="col-form-label">번호입력</label> <input
								type="text" class="form-control" id="recipient-name">
						</div>
						<div class="form-group">
							<label for="new-name" class="col-form-label">인증번호</label> <input
								type="text" class="form-control" id="recipient-name">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-warning">변경하기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 모달창: 이메일 -->
	<div class="modal fade" id="emailModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="emailModalLabel">이메일 변경</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="old" class="col-form-label">기존 이메일</label> <input
								type="text" class="form-control" id="recipient-name">
						</div>
						<div class="form-group">
							<label for="new-name" class="col-form-label">새로운 이메일</label> <input
								type="text" class="form-control" id="recipient-name">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-warning">변경하기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 모달창: 주소 -->
	<div class="modal fade" id="addrModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">주소 변경</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<div class=" mb-3">
							<select class="custom-select d-block w-100" id="root">
								<option value="시/도">시/도</option>
								<option>검색</option>
								<option>카페</option>
							</select>
						</div>
						<div class=" mb-3">
							<select class="custom-select d-block w-100" id="root">
								<option value="">시/군/구</option>
								<option>검색</option>
								<option>카페</option>
							</select>
						</div>
						<div class=" mb-3">
							<select class="custom-select d-block w-100" id="root">
								<option value="">읍/면/동</option>
								<option>검색</option>
								<option>카페</option>
							</select>
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-warning">변경하기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
		crossorigin="anonymous"></script>

	<script type="text/javascript">
		/* 닉네임 */
		$('#nicknameModal').on('show.bs.modal', function(event) {
			var button = $(event.relatedTarget) // Button that triggered the modal
			var recipient = button.data('whatever') // Extract info from data-* attributes
			// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
			// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
			var modal = $(this)
			//modal.find('.modal-title').text('New message to ' + recipient)
			modal.find('.modal-body input').val(recipient)
		})
		/* 비밀번호 */
		$('#passModal').on('show.bs.modal', function(event) {
			var button = $(event.relatedTarget)
			var recipient = button.data('whatever')
			var modal = $(this)
			
			modal.find('.modal-body input').val(recipient)
		})
		/* 전화번호 */
		$('#nicknameModal').on('show.bs.modal', function(event) {
			var button = $(event.relatedTarget)
			var recipient = button.data('whatever')
			var modal = $(this)
			modal.find('.modal-body input').val(recipient)
		})
		/* 이메일 */
		$('#emailModal').on('show.bs.modal', function(event) {
			var button = $(event.relatedTarget)
			var recipient = button.data('whatever')
			var modal = $(this)
			modal.find('.modal-body input').val(recipient)
		})
		/* 주소 */
		$('#addrModal').on('show.bs.modal', function(event) {
			var button = $(event.relatedTarget)
			var recipient = button.data('whatever')
			var modal = $(this)
			modal.find('.modal-body input').val(recipient)
		})
	</script>
</body>
</html>