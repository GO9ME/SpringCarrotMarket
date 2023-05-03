window.addEventListener('load', () => {
	var nextBtn = document.querySelector("#next");
	
	nextBtn.onclick= function(){
		// 체크박스 체크여부 확인(true : 체크되어 있음, false : 체크되어 있지 않음)
		var agree = $('#agree').is(':checked');
		if(agree == true){
		//회원가입 약관동의 했을경우 다음페이지로 이동
		console.log(agree);
		location.href='/carrot/member/signup2';
		return false;
		}else{
			event.preventDefault();
          	event.stopPropagation();
          	document.querySelector(".caution").innerHTML = '<div>약관 동의가 필요합니다.</div>';
		}
	}
})
