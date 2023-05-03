<%@page import="java.io.FileReader"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입 화면:약관동의</title>

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
				<form class="validation-form" novalidate>
					<!-- 약관 -->
					<div class="card">
						<div class="card-body">
							<h6 class="card-title">이용약관</h6>
							<div style="height: 150px; overflow: auto">
								<p class="card-text">
									<%
									BufferedReader reader = null;
									try {
										String filePath = application.getRealPath("/WEB-INF/static/policyTerms.txt");
										reader = new BufferedReader(new FileReader(filePath));
										while (true) {
											String str = reader.readLine();
											if (str == null)
										break;
											out.println(str + "<br/>");
										}
									} catch (FileNotFoundException fnfe) {
										out.println("파일이 존재하지 않습니다.");
									} catch (IOException ioe) {
										out.println("파일을 읽을 수 없습니다");
									} finally {
										try {
											reader.close();
										} catch (Exception e) {
										}
									}
									%>


								</p>
							</div>
						</div>
					</div>
					<div class="card">
						<div class="card-body">
							<h6 class="card-title">개인정보 수집 및 이용 동의</h6>
							<div style="height: 150px; overflow: auto">
								<p class="card-text">
									<%
									try {
										String filePath = application.getRealPath("/WEB-INF/static/policyTerms.txt");
										reader = new BufferedReader(new FileReader(filePath));
										while (true) {
											String str = reader.readLine();
											if (str == null)
										break;
											out.println(str + "<br/>");
										}
									} catch (FileNotFoundException fnfe) {
										out.println("파일이 존재하지 않습니다.");
									} catch (IOException ioe) {
										out.println("파일을 읽을 수 없습니다");
									} finally {
										try {
											reader.close();
										} catch (Exception e) {
										}
									}
									%>
								</p>
							</div>
						</div>
					</div>

					<!-- 전체동의 -->
					<div class="custom-control custom-checkbox">
						<label class="form-check-label" for="agree"> <input
							type="checkbox" id="agree"> 개인정보 수집 및 이용 약관에 동의합니다.
						</label>
						<div class="caution" style="color: red;"></div>
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
	<script src="/carrot/common/js/next1.js"></script>
</body>

</html>