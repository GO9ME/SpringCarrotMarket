window.addEventListener('load', () => {
	var cancelBtn = document.querySelector("#cancel");
	
	cancelBtn.onclick= function(){
	var question = "취소시 입력정보를 잃고 메인 화면으로 돌아갑니다.";
	var TF = confirm(question);
	if(TF == true){
    	location.href='/carrot/main';
    	}
	}       
})
      