<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="../common/header.jsp"></jsp:include>
<title>회원가입 화면:가입완료</title>


<link rel="stylesheet" href="/carrot/common/css/style_signUpForm.css">
<style>
.card {
	margin: 30px;
}

.profile-user {
	width: 200px;
	height: 200px;
	border-radius: 70%;
	overflow: hidden;
	margin-left: auto;
	margin-right: auto;
}

.profile-user-img {
	width: 100%;
	height: 100%;
	object-fit: cover;
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">회원가입 완료</h4>
				<div class="text-center welcome">
					<div class="card profile-user">
						<img alt="profile_img" src="../images/myprofile.jpg"
							class="profile-user-img">
					</div>
					<h5>가입완료! 가입을 환영합니다.</h5>
				</div>


				<hr class="mb-4">

				<!-- 제출버튼 -->
				<div class="row">
					<div class="col-md-6 mb-3">
						<button class="btn btn-warning btn-lg btn-block" type="button"
							onclick="location.href='/carrot/main'">홈페이지 바로가기</button>
					</div>
					<div class="col-md-6 mb-3">
						<button class="btn btn-warning btn-lg btn-block" type="button"
							data-toggle="modal" data-target="#exampleModal"
							data-whatever="@mdo">로그인 하러가기</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../common/login.jsp"></jsp:include>

</body>

</html>