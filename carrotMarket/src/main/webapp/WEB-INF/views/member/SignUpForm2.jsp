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
				<form class="validation-form" action="/carrot/member/signup3"
					method="post">
					<div class="card">
						<div class="card-body">
							<h6 class="card-title">휴대폰 본인확인</h6>
							<br />

							<!-- 번호 입력/인증번호 발송버튼 -->
							<div class="phone row">

								<div class="form-group col-sm-9">
									<input id="phone1" name="phone1" class="form-control"
										type="text" oninput="autoHyphen2(this)" maxlength="13"
										placeholder="휴대폰번호를 입력하세요" required>
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
										id="certificationNumber" placeholder="전송받은 인증번호를 입력하세요"
										required>
								</div>
								<div class="form-group">
									<button id="completion"
										class="btn btn-warning btn-md btn-block" type="button">인증번호
										확인</button>
								</div>
							</div>
							<!-- 인증유효시간 -->
							<div class="timer">
								<span>인증번호 유효시간:</span> <span id="timeLimit">03:00</span>
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
	<script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }else{
        	  location.href='/carrot/member/signup3';
          }
          form.classList.add('was-validated');
        }, false);
      });
    }, false);

  </script>
	<script type="module">
	  // Import the functions you need from the SDKs you need
	  import { initializeApp } from "https://www.gstatic.com/firebasejs/9.21.0/firebase-app.js";
	  import { getAnalytics } from "https://www.gstatic.com/firebasejs/9.21.0/firebase-analytics.js";
	  // TODO: Add SDKs for Firebase products that you want to use
	  // https://firebase.google.com/docs/web/setup#available-libraries

	  // Your web app's Firebase configuration
	  // For Firebase JS SDK v7.20.0 and later, measurementId is optional
	  const firebaseConfig = {
	    apiKey: "AIzaSyBITdYovYnC__3ybPuOH0GcWrk35TK2KfM",
	    authDomain: "minipjt-70ef7.firebaseapp.com",
	    projectId: "minipjt-70ef7",
	    storageBucket: "minipjt-70ef7.appspot.com",
	    messagingSenderId: "347846585263",
	    appId: "1:347846585263:web:4d44e8770d37fe14df9d5a",
	    measurementId: "G-KTP9QBC631"
	  };

	  // Initialize Firebase
	  const app = initializeApp(firebaseConfig);
	  const analytics = getAnalytics(app);
	
	//코드 시작
	import { getAuth, RecaptchaVerifier, signInWithPhoneNumber } from "https://www.gstatic.com/firebasejs/9.21.0/firebase-auth.js";

	const auth = getAuth();
	auth.languageCode = 'ko';
	
	window.recaptchaVerifier = new RecaptchaVerifier('sendMessage', {
	  'size': 'invisible',
	  'callback': (response) => {
	    // reCAPTCHA solved, allow signInWithPhoneNumber.
	    onSignInSubmit();
		  }
	}, auth);

	document.getElementById('sendMessage').addEventListener('click',(event)=>{
		event.preventDefault()

	const phoneNumber = document.getElementById('phone1').value;
	const appVerifier = window.recaptchaVerifier;


signInWithPhoneNumber(auth, '+82'+phoneNumber, appVerifier)
    .then((confirmationResult) => {
      // SMS sent. Prompt user to type the code from the message, then sign the
      // user in with confirmationResult.confirm(code).
      window.confirmationResult = confirmationResult;
      console.log(confirmationResult)
	  alert("메세지가 전송되었습니다. 메세지를 확인해주세요")
	// ...
    }).catch((error) => {
      // Error; SMS not sent
      // ...
	  alert("메세지 전송에 실패했습니다. 번호를 확인해주세요")
    });	
})

document.getElementById('completion').addEventListener('click',(event)=>{
event.preventDefault()

	const code = document.getElementById('certificationNumber').value;
	confirmationResult.confirm(code).then((result) => {
  	// User signed in successfully.
  	const user = result.user;
	console.log(result)
	  alert("인증에 성공하였습니다.")
  	// ...
	}).catch((error) => {
	console.log(error)
	  alert("인증에 실패하였습니다.")
  		// User couldn't sign in (bad verification code?)
  		// ...
	});
})
	</script>

</body>

</html>