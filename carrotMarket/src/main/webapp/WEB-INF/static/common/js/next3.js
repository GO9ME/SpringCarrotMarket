window.addEventListener('load', () => {
	
    var Id = document.getElementById("id"); //아이디
    var pass = document.getElementById("pass"); //비밀번호
    var passcheck = document.getElementById("passcheck"); //비밀번호확인
    var email = document.getElementById("email");//메일
        
    //유효성검사 코드(비밀번호, 이메일)
    var RegExp = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/; 
    var e_RegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	
    // ================ PASSWORD 유효성검사 ===============//
	pass.addEventListener('blur', ()=>{
        if(pass.value==''){ // 비밀번호 입력여부 검사
        	document.querySelector(".caution").innerHTML = '<div style="color: red;">비밀번호를 입력해주세요.</div>';
            return false;
        }else if(!RegExp.test(pass.value)){ //패스워드 유효성검사
        	document.querySelector(".caution").innerHTML = '<div style="color: red;">영문 대소문자와 숫자, 특수문자 모두 포함자여 8자이상 입력해주세요.</div>';
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
        }else{
        	document.querySelector(".warning ").innerHTML = '<div></div>';
        }
	 })
	 // ==================id 중복체크=====================//
	 $(document).ready(function(){
		$("#idcheck").on("click",function(){
			var querydata = {"id":$("#id").val()}
		
			$.ajax({
				url:"/carrot/member/singup3_idcheck",
				type:"get",
				data:querydata,
				success:success_run,
				error:error_run
			});//end ajx
		
		})//end click

	// id중복체크확인버튼 이벤트
    	//Id값 바뀔 때마다 
    	var id = document.getElementById('id')
		id.addEventListener('change', function(e){
    		$("#result").html("<a style='color: red;'>아이디 중복체크를 해주세요</a>");
 	   		return false;
    	});

    //제출버튼 클릭시 중복체크여부
    	 const forms = document.getElementsByClassName('validation-form');
   	 	var fin = document.getElementById('fin')
    	fin.addEventListener('click',function(e) {
			
      		
   	 	});// 다음버튼
})//end ready
	
//ajax요청을 성공하면 .ajax메소드 내부에서 success속성에 설정한 함수를 호출하면서 ajax처리 결과를 자동으로 함수의 매개변수로 전달
	function success_run(txt){
		if(txt=="사용가능한 아이디입니다."){
			$("#result").html("<a style='color: green;'>"+txt+"</a>");
			return true;			
		}else{
			$("#id").val('');
			$("#result").html("<a style='color: red;'>"+txt+"</a>");
		}
	}
	//obj - ajax통신을 하는 객체, msg -응답메시지,statusmsg - 에러메시지
	function error_run(obj,msg,statusmsg){
		alert("오류;"+obj+","+msg+","+statusmsg);
	}
	 
})