<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String phone = request.getParameter("phone1");
%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="../common/header.jsp"></jsp:include>
<title>회원가입 화면:정보기입</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<link rel="stylesheet" href="/carrot/common/css/style_signUpForm.css">
</head>

<body>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">회원가입</h4>

				<form class="validation-form" novalidate
					action="/carrot/member/signup4" method="post">


					<!-- 아이디 -->
					<label for="id">아이디</label>
					<div class="row">
						<div class="col-md-8 mb-3">

							<input type="text" class="form-control" id="id" name="user_id"
								required>
							<div id="result">${msg}</div>
						</div>
						<div class="col-md-4 mb-3">
							<button class="btn btn-warning btn-md btn-block" type="button"
								id="idcheck" onclick="">아이디 중복확인</button>

						</div>
					</div>

					<!-- 비밀번호 -->
					<div class="mb-3">
						<label for="pass">비밀번호<span class="text-muted">&nbsp;(영문,숫자,기호를
								모두 포함하여 8자리 이상)</span></label> <input type="password" class="form-control"
							id="pass" name="password" placeholder="" required
							pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$$">
						<div class="caution"></div>
					</div>
					<!-- 비밀번호 확인 -->
					<div class="mb-3">
						<label for="passcheck">비밀번호 확인</label> <input type="password"
							class="form-control" id="passcheck" placeholder="" required>
						<div class="feedback"></div>
					</div>

					<!-- 이름 -->
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="name">이름</label> <input type="text"
								class="form-control" id="name" name="name" placeholder=""
								required>

							<div class="invalid-feedback">이름을 입력해주세요.</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="nickname">별명</label> <input type="text"
								class="form-control" id="nickname" name="nickname"
								placeholder="" required>

							<div class="invalid-feedback">별명을 입력해주세요.</div>
						</div>
					</div>

					<!-- 주소입력 -->
					<label for="address">주소</label>
					<div class="row">
						<div class="col-md-4 mb-3">
							<select class="custom-select d-block w-100" id='sido' name="sido"
								required onchange="updateSecondCombo()">
								<option value="">시/도</option>

							</select>
							<div class="invalid-feedback"></div>
						</div>
						<div class="col-md-3 mb-3">
							<select class="custom-select d-block w-100" id="sigun"
								name="sigun" required>
								<option value="">시/군/구</option>

							</select>
							<div class="invalid-feedback"></div>
						</div>
						<div class="col-md-3 mb-3">
							<select class="custom-select d-block w-100" id="dong" name="dong"
								required>
								<option value="읍/면/동">읍/면/동</option>

							</select>
							<div class="invalid-feedback"></div>
						</div>
						<div class="col-md-2 mb-3">
							<input type="button" class="form-control btn-warning" id="code"
								value="인증">
							<div class="invalid-feedback"></div>
						</div>
					</div>

					<!-- 전화번호:인증받은 번호 넘겨주기(사용자 입력X) -->
					<div class="mb-3">

						<label for="phone">전화번호</label> <input type="hidden"
							class="form-control" id="phone" name="cellphone"
							value="<%=phone%>" />
						<div class="form-control"><%=phone%></div>

					</div>
					<!-- 이메일 -->
					<div class="mb-3">
						<label for="email">이메일(*선택)</label> <input type="email"
							class="form-control" id="email" name="email"
							placeholder="you@example.com">

						<div class="warning"></div>
					</div>



					<hr class="mb-4">

					<!-- 가입버튼 -->
					<div class="row">
						<div class="col-md-6 mb-3">
							<button id="cancel" class="btn btn-warning btn-lg btn-block"
								type="button">취소</button>
						</div>
						<div class="col-md-6 mb-3">
							<button id="fin" class="btn btn-warning btn-lg btn-block"
								type="submit">가입 완료</button>
						</div>
					</div>
				</form>
			</div>
		</div>

	</div>
	<script src="/carrot/common/js/cancel.js"></script>

	<script src="/carrot/common/js/next3.js"></script>

	<script src="https://code.jquery.com/jquery-latest.min.js"
		type="application/javascript"></script>
	<script type="application/javascript"
		src="https://zelkun.tistory.com/attachment/cfile8.uf@99BB7A3D5D45C065343307.js"></script>
	<script type="application/javascript">
		
		jQuery(document).ready(function () {
			//sido option 추가
			jQuery.each(hangjungdong.sido, function (idx, code) {
				//append를 이용하여 option 하위에 붙여넣음
				jQuery('#sido').append(fn_option(code.sido, code.codeNm));
			});

			//sido 변경시 시군구 option 추가
			jQuery('#sido').change(function () {
				jQuery('#sigun').show();
				jQuery('#sigun').empty();
				jQuery('#sigun').append(fn_option('', '시/군/구')); //
				jQuery.each(hangjungdong.sigugun, function (idx, code) {
					if (jQuery('#sido > option:selected').val() == code.sido)
						jQuery('#sigun').append(fn_option(code.sigugun, code.codeNm));
				});

				//세종특별자치시 예외처리
				//옵션값을 읽어 비교
				if (jQuery('#sido option:selected').val() == '36') {
					jQuery('#sigun').hide();
					//index를 이용해서 selected 속성(attr)추가
					//기본 선택 옵션이 최상위로 index 0을 가짐
					jQuery('#sigugun option:eq(1)').attr('selected', 'selected');
					//trigger를 이용해 change 실행
					jQuery('#sigun').trigger('change');
				}
			});

			//시군구 변경시 행정동 옵션추가
			jQuery('#sigun').change(function () {
				//option 제거
				jQuery('#dong').empty();
				jQuery.each(hangjungdong.dong, function (idx, code) {
					if (jQuery('#sido > option:selected').val() == code.sido && jQuery('#sigun > option:selected').val() == code.sigugun)
						jQuery('#dong').append(fn_option(code.dong, code.codeNm));
				});
				//option의 맨앞에 추가
				jQuery('#dong').prepend(fn_option('', '읍/면/동'));
				//option중 선택을 기본으로 선택
				jQuery('#dong option:eq("")').attr('selected', 'selected');
			});

			jQuery('#dong').change(function () {
				var sido = jQuery('#sido option:selected');
				var sigugun = jQuery('#sigun option:selected');
				var dong = jQuery('#dong option:selected');
				
			});
		});

		function fn_option(code, name) {
			return '<option value="' + code + '">' + name + '</option>';
		}
	
	</script>
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