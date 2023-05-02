<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입 화면:본인인증</title>
<jsp:include page="../common/header.jsp"></jsp:include>

<link rel="stylesheet" href="/carrot/common/css/style_signUpForm.css">
<style>
.card {
	margin: 30px;
}
</style>
</head>

<body>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">회원가입</h4>
				<form class="validation-form" action="/carrot/member/signup3" method="post">
					<div class="card">
						<div class="card-body">
							<h6 class="card-title">휴대폰 본인확인</h6>
							<br />

							<!-- 번호 입력/인증번호 발송버튼 -->
							<div class="phone row">

								<div class="form-group col-sm-9">
									<input id="phone1" name="phone1" class="form-control" type="text"
										oninput="autoHyphen2(this)" maxlength="13"
										placeholder="휴대폰번호를 입력하세요">
								</div>
								<div class="form-group">
									<button id="sendMessage" class="btn btn-warning btn-md"
										type="button">인증번호 전송</button>
								</div>
							</div>
							<!-- 인증번호 입력&확인 버튼 -->
							<div class="auth row">
								<div class="form-group col-sm-9">
									<input type="text" class="form-control"
										id="certificationNumber" placeholder="전송받은 인증번호를 입력하세요">
								</div>
								<div class="form-group" >
									<button id="completion" class="btn btn-warning btn-md btn-block"
										type="button">인증번호 확인</button>
								</div>
							</div>
							<!-- 인증유효시간 -->
							<div class="timer">
								<span>인증번호 유효시간:</span>
								<span id="timeLimit">03:00</span>
							</div>

						</div>
					</div>


					<hr class="mb-4">

					<!-- 제출버튼 -->
					<div class="row">
						<div class="col-md-6 mb-3">
							<button id="cancel" class="btn btn-warning btn-lg btn-block"
								type="button">취소</button>
						</div>
						<div class="col-md-6 mb-3">
							<button id="next" class="btn btn-warning btn-lg btn-block"
								type="submit">다음</button>
						</div>
					</div>

				</form>
			</div>
		</div>

	</div>
	<script src="/carrot/common/js/cancel.js"></script>
	<script src="/carrot/common/js/next2.js"></script>
</body>

</html>