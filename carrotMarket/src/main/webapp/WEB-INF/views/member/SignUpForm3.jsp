<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="../common/header.jsp"></jsp:include>
<title>회원가입 화면:정보기입</title>


<link rel="stylesheet" href="/carrot/common/css/style_signUpForm.css">
</head>

<body>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">회원가입</h4>
				<form class="validation-form" novalidate>

					<!-- 아이디 -->
					<label for="id">아이디</label>
					<div class="row">
						<div class="col-md-8 mb-3">
							<input type="text" class="form-control" id="id" placeholder="">
						</div>
						<div class="col-md-4 mb-3">
							<button class="btn btn-warning btn-md btn-block" type="submit"
								id="idcheck">아이디 중복확인</button>
						</div>
					</div>

					<!-- 비밀번호 -->
					<div class="mb-3">
						<label for="pass">비밀번호<span class="text-muted">&nbsp;(문자,기호
								8자리 이상)</span></label> <input type="text" class="form-control" id="pass"
							placeholder="" required>
						<div class="invalid-feedback">8자이상 사용해주세요</div>
					</div>
					<!-- 비밀번호 확인 -->
					<div class="mb-3">
						<label for="passcheck">비밀번호 확인</label> <input type="text"
							class="form-control" id="passcheck" placeholder="" required>
						<div class="invalid-feedback">비밀번호가 일치하지 않습니다.</div>
					</div>

					<!-- 이름 -->
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="name">이름</label> <input type="text"
								class="form-control" id="name" placeholder="" value="" required>
							<div class="invalid-feedback">이름을 입력해주세요.</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="nickname">별명</label> <input type="text"
								class="form-control" id="nickname" placeholder="" value=""
								required>
							<div class="invalid-feedback">별명을 입력해주세요.</div>
						</div>
					</div>

					<!-- 주소입력 -->
					<label for="address">주소</label>
					<div class="row">
						<div class="col-md-4 mb-3">
							<select class="custom-select d-block w-100" id="root">
								<option value="시/도">시/도</option>
								<option>검색</option>
								<option>카페</option>
							</select>
							<div class="invalid-feedback"></div>
						</div>
						<div class="col-md-3 mb-3">
							<select class="custom-select d-block w-100" id="root">
								<option value="">시/군/구</option>
								<option>검색</option>
								<option>카페</option>
							</select>
							<div class="invalid-feedback"></div>
						</div>
						<div class="col-md-3 mb-3">
							<select class="custom-select d-block w-100" id="root">
								<option value="">읍/면/동</option>
								<option>검색</option>
								<option>카페</option>
							</select>
							<div class="invalid-feedback"></div>
						</div>
						<div class="col-md-2 mb-3">
							<input type="submit" class="form-control btn-warning" id="code"
								value="인증">
							<div class="invalid-feedback"></div>
						</div>
					</div>

					<!-- 전화번호:인증받은 번호 넘겨주기(사용자 입력X) -->
					<div class="mb-3">
						<label for="phone">전화번호</label> <input type="text"
							class="form-control" id="phone" placeholder="" required>
					</div>
					<!-- 이메일 -->
					<div class="mb-3">
						<label for="email">이메일</label> <input type="email"
							class="form-control" id="email" placeholder="you@example.com"
							required>
						<div class="invalid-feedback"></div>
					</div>



					<hr class="mb-4">

					<!-- 가입버튼 -->
					<div class="row">
						<div class="col-md-6 mb-3">
							<button id="cancel" class="btn btn-warning btn-lg btn-block" type="button">
								취소</button>
						</div>
						<div class="col-md-6 mb-3">
							<button id="fin" class="btn btn-warning btn-lg btn-block" type="submit">가입
								완료</button>
						</div>
					</div>

				</form>
			</div>
		</div>

	</div>
	<script src="/carrot/common/js/cancel.js"></script>
	<script src="/carrot/common/js/next3.js"></script>
	<script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  </script>
</body>

</html>