<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content card-body p-5">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Login</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body form-outline mb-4">
					<form>
						<div class="form-group">
							<label class="form-label" for="typeEmailX-2">아이디</label> <input
								type="email" id="typeEmailX-2"
								class="form-control form-control-lg" />
						</div>
						<div class="form-group">
							<label class="form-label" for="typePasswordX-2">비밀번호</label> <input
								type="password" id="typePasswordX-2"
								class="form-control form-control-lg" />
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button class="btn btn-lg btn-block"
						style="background-color: #00b493; color: #fff;" type="submit">로그인</button>
					<hr class="my-4">
					<button class="btn btn-lg btn-block btn-primary"
						style="background-color: #ffaf82; border: #ffaf82; color: black;"
						type="submit" onclick="location.href='/carrot/member/signup1'">회원가입</button>
					<button class="btn btn-lg btn-block btn-primary mb-2"
						style="background-color: #ffaf82; border: #ffaf82; color: black;"
						type="submit">아이디 / 비밀번호 찾기</button>

					<!-- <button type="button" class="btn btn-primary">Send message</button> -->
				</div>
			</div>
		</div>
	</div>
	<script>
		$('#exampleModal').on('show.bs.modal', function(event) {
			alert('작동');
			var button = $(event.relatedTarget) // Button that triggered the modal
			var recipient = button.data('whatever') // Extract info from data-* attributes
			// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
			// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
			var modal = $(this)
			modal.find('.modal-title').text('New message to ' + recipient)
			modal.find('.modal-body input').val(recipient)
		})
	</script>

</body>
</html>