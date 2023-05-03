window.addEventListener('load', () => {

	var idcheckBtn = document.querySelector("#idcheck");

	
    var Id = document.getElementById("id"); //아이디
    var pass = document.getElementById("pass"); //비밀번호
    var passcheck = document.getElementById("passcheck"); //비밀번호확인
    var email = document.getElementById("email");//메일
        

    //유효성검사 코드(비밀번호, 이메일)
    var RegExp = /^[a-zA-Z0-9]{8,12}$/; 
    var e_RegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

    //유효성검사 코드
    var e_RegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    var RegExp = /^[a-zA-Z0-9]{8,12}$/; 
    
	
    // ================ ID 유효성검사 ================ //
	idcheckBtn.addEventListener('onclick',()=>{
        if(Id.value==''){
           document.querySelector(".idck").innerHTML = '<div>ID를 입력해주세요.</div>';
            return false;
        }else if(!RegExp.test(Id.value)){ //아이디 유효성검사
           alert("ID는 4~12자의 영문 대소문자와 숫자로만 입력하여 주세요.");        
           return false;
        }

	})

    // ================ PASSWORD 유효성검사 ===============//
	pass.addEventListener('blur', ()=>{
        if(pass.value==''){ // 비밀번호 입력여부 검사
        	document.querySelector(".caution").innerHTML = '<div style="color: red;">비밀번호를 입력해주세요.</div>';
            return false;
        }else if(!RegExp.test(pass.value)){ //패스워드 유효성검사
        	document.querySelector(".caution").innerHTML = '<div style="color: red;">8~12자의 영문 대소문자와 숫자로 입력해주세요.</div>';
            return false;
        }else if(pass.value==Id.value){ //패스워드와 ID가 동일한지 검사
        	document.querySelector(".caution").innerHTML = '<div style="color: red;">아이디와 동일한 비밀번호는 사용할 수 없습니다.</div>';
            return false;
        }else{
        	document.querySelector(".caution").innerHTML = '<div style="color: green;">사용 가능한 비밀번호입니다.</div>';
        }
	})
       

   // =============== pwassword 확인 유효성 검사 ================ //
	 passcheck.addEventListener('blur', ()=>{
	 	if(passcheck.value==''){
        	document.querySelector(".feedback").innerHTML = '<div style="color: red;">비밀번호를 다시 입력해주세요.</div>';
	 	}else if(passcheck.value!=pass.value){ //비밀번호와 비밀번호확인이 동일한지 검사

   //pwassword 확인 유효성 검사
	 passcheck.addEventListener('blur', ()=>{
	 	if(passcheck.value!=pass.value){ //비밀번호와 비밀번호확인이 동일한지 검사

        	document.querySelector(".feedback").innerHTML = '<div style="color: red;">비밀번호가 일치하지 않습니다.</div>';
            return false;
        }else{
        	document.querySelector(".feedback").innerHTML = '<div style="color: green;">비밀번호 확인</div>';
        }
	 })
	 
	 // ================ email 유효성검사 ================ //
	 email.addEventListener('blur', ()=>{

     	if(email.value==''){
        	document.querySelector(".warning ").innerHTML = '<div></div>';
     	}else if(!e_RegExp.test(email.value)){ //이메일 유효성 검사
        	document.querySelector(".warning ").innerHTML = '<div style="color: red;">올바른 이메일 형식이 아닙니다.</div>';
            return false; 

     	if(!e_RegExp.test(email.value)){ //이메일 유효성 검사
        	document.querySelector(".warning ").innerHTML = '<div>올바른 이메일 형식이 아닙니다.</div>';
            return false;
>>>>>>> main
        }else{
        	document.querySelector(".warning ").innerHTML = '<div></div>';
        }
	 })
})