<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../common/header.jsp"></jsp:include>

<!-- CSS FILE -->

<!--  -->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>

	<div class="msg-container">
		<div class="messaging">
			<div class="inbox_msg">
				<!-- 메시지 목록 영역 -->
				<div class="headind_srch">

					<div class="recent_heading">
						<h4>Recent</h4>
					</div>
					<!-- 메시지 검색 -->
					<div class="srch_bar">
						<div class="stylish-input-group">
							<input type="text" class="search-bar" placeHolder="Search" /> <span
								class="input-group-addon">
								<button type="button">
									<i class="fa fa-search" aria-hdden="true"></i>
								</button>
							</span>
						</div>
					</div>
				</div>

				<!-- 메시지 리스트 -->
				<div class="inbox_chat"></div>

			</div>
		</div>

		<!-- 메시지 내용 영역 -->
		<div class="mesgs">
			<div class="msg_history" name="contentList">
				<!-- 메시지 내용이 올 자리 -->
			</div>
			<div class="send_message">
				<!-- 메시지 입력란이 올자리 -->
			</div>
		</div>


	</div>

	<script>
	const FirstMessageList = function(){
		$.ajax({
			url : "message_ajax_list.do",
			method : "get",
			data : {
				
			},
			success:function(data){
				console.log("메세지 리스트 리로드 성공");
				
				$('.inbox_chat'.)html(data);
				
				// 메시지 리스트 중 하나를 클릭했을 때
				$('.chat_list').on('click',function(){
					let room = $(this).attr('room');
					let other_nick = $(this).atrr('other-nick');
					
					//선택한 메시지 빼고 나머지는 active효과 제거
					$('.chat_list_box').not('.chat_list_box_chat_list_box'+room).removeClass('active_chat');
					$('.caht_list_box' + room).addClass('active_chat');
					
					
					let send_msg = "";
					send_msg += '<div class="type_msg">';
					send_msg += 	'<div class="input_msg_write row">';
					send_msg += '		<div class="col-11">';
					send_msg += '			<input type="text" class="write_msg form-control" placeholder="메세지를 입력..." />'
					send_msg += 		'</div>';
					send_msg += '		<div class="col-1">';
					send_msg += '			<button type="button" class="msg_send_btn"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>';
					send_msg += 		'</div>';
					send_msg += 	'</div>';
					send_msg += '</div>';
					
					// 메시지 입력, 전송 칸을 보인다
					$('.send_message').html(send_msg);
					
					// 메시지 전송 버튼을 눌렀을 때 
					$('.msg_send_btn').on('click',function(){
						//메시지 전송 함수 호출
						SendMessage(room, other_nick);
					});
					
					MessageContentList(room);
				})
			}
		})
	};
	
	//메세지 리스트를 다시 가져옴
	const MessageList = function(){
		$.ajax({
			url : "message_ajax_list.do",
			method : "get",
			data : {
				
			},
			success:function(data){
				console.log("메세지 리스트 리로드 성공");
				
				$('.inbox_chat'.)html(data);
				
				// 메시지 리스트 중 하나를 클릭했을 때
				$('.chat_list').on('click',function(){
					let room = $(this).attr('room');
					let other_nick = $(this).atrr('other-nick');
					
					//선택한 메시지 빼고 나머지는 active효과 제거
					$('.chat_list_box').not('.chat_list_box_chat_list_box'+room).removeClass('active_chat');
					$('.caht_list_box' + room).addClass('active_chat');
					
					
					let send_msg = "";
					send_msg += '<div class="type_msg">';
					send_msg += 	'<div class="input_msg_write row">';
					send_msg += '		<div class="col-11">';
					send_msg += '			<input type="text" class="write_msg form-control" placeholder="메세지를 입력..." />'
					send_msg += 		'</div>';
					send_msg += '		<div class="col-1">';
					send_msg += '			<button type="button" class="msg_send_btn"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>';
					send_msg += 		'</div>';
					send_msg += 	'</div>';
					send_msg += '</div>';
					
					// 메시지 입력, 전송 칸을 보인다
					$('.send_message').html(send_msg);
					
					// 메시지 전송 버튼을 눌렀을 때 
					$('.msg_send_btn').on('click',function(){
						//메시지 전송 함수 호출
						SendMessage(room, other_nick);
					});
					
					MessageContentList(room);
				})
			}
		})
	};

	
	//메세지 내용을 가져옴
	// 읽지 않은 메세지들을 읽음으로 바꿈
	const MessageContentList = function(room){
		$.ajax({
			url: "message_content_list.do",
			method : "GET",
			data:{
				room : room,
			},
			success : function(data){
				console.log("메시지 내용 가져오기 성공");
				//메시지 내용을 html에 넣는다
				$('.msg_history').html(data);
				//이 함수로 메시지 내용을 가져올때마다 스크롤을 맨아래로 가게함
				$(".msg_history").scrollTop($(".msg_history")[0].scrollHeight);
			},
			error : function(){
				alert("서버 에러");
			}
		})
		$('.unread'+room).empty();
	}
	
	// 메시지를 전송하는 함수
	const SendMessage = function(room , other_nick){
		let content = $('.write_msg').val();
		content = content.trim();
		
		if ( content==""){
			alert("메시지를 입력하세요");
		} else {
			$.ajax({
				url : "message_send_list.do",
				method:"GET",
				data:{
					room : room,
					other_nick : other_nick,
					content : content
				},
				success : function(data){
					console.log("메세지 전송 성공");
					//메시지 입력칸 비우기
					$('.write_msg').val("");
					
					//메시지 내용 리로드
					MessageContentList(room);
					
					//메세지 리스트 리로드
					MessageList();
					
				},
				error : function(){
					alert("서버 에러");
				}
			});
		}
	};
	
	$(document).ready(function(){
		// 메시지 리스트 리로드
		FirstMessageList();
	})
	
</script>
</body>
</html>