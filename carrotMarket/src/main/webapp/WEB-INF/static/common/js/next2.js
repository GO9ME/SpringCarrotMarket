window.addEventListener('load', () => {
	var nextBtn = document.querySelector("#next");
	var sendBtn = document.querySelector("#sendMessage");
	
	
	sendBtn.addEventListener('click',()=>{
		/* 기본시간 설정 부분 3(분)입니다. */
	  	var minutes = 3;

		var fiveMinutes = (60 * minutes) - 1,
		display = document.querySelector('#timeLimit');
		startTimer(fiveMinutes, display);
	})
})
// 휴대폰 번호 자동 하이픈
const autoHyphen2 = (target) => {
 target.value = target.value
   .replace(/[^0-9]/g, '')
  .replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
}


//타이머 부분(인증번호 전송후 작동 시작하게 변경 해야됨)
function startTimer(duration, display) {
  var timer = duration, minutes, seconds;
  var interval = setInterval(function () {
    minutes = parseInt(timer / 60, 10)
    seconds = parseInt(timer % 60, 10);

    minutes = minutes < 10 ? "0" + minutes : minutes;
    seconds = seconds < 10 ? "0" + seconds : seconds;

    display.textContent = minutes + ":" + seconds;

    if (--timer < 0) {
      timer = duration;
    }
    if(timer === 0) {
      clearInterval(interval);
      display.textContent = "인증 시간 만료";
    }
  }, 1000);
}
