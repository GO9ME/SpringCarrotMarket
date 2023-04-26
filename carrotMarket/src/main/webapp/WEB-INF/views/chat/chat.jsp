<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/8055a0c4b7.js"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.js"></script>

<jsp:include page="../common/header.jsp"></jsp:include>

<link rel="stylesheet" href="/carrotMarket/common/css/style_chat.css">
<script type="text/javascript" src="/carrotMarket/common/js/chat.js"></script>

</head>
<body>


	<section class="chat-section">
		<div class="container-fluid h-100">
			<div class="row justify-content-center h-100">

				<!-- 채팅 구역 지워야 함 나중에 채팅창 데이터 뿌릴 곳 -->
				<!-- <div class="col-md-4 col-xl-3 chat"> -->
				<div class="col-md-3 chat">
					<div class="card mb-sm-3 mb-md-0 contacts_card">
						<div class="card-header">
							<div class="input-group">
								<input type="text" placeholder="Search..." name=""
									class="form-control chat search">
								<div class="input-group-prepend">
									<span class="input-group-text search_btn"><i
										class="fas fa-search"></i></span>
								</div>
							</div>
						</div>
						<div class="card-body contacts_body scrollbar">
							<ul class="contacts">
								<li class="active">
									<div class="d-flex bd-highlight">
										<div class="img_cont">
											<img
												src="https://dnvefa72aowie.cloudfront.net/origin/profile/202204/0cf95da7f59bc718dc321dc0d7ebb0b964820a4377059737c2e5df7f707140f0.jpg?q=82&s=80x80&t=crop"
												class="rounded-circle user_img"> <span
												class="online_icon"></span>
										</div>
										<div class="user_info">
											<span>Khalid</span>
											<p>Kalid is online</p>

										</div>
									</div>
								</li>
								<li>
									<div class="d-flex bd-highlight">
										<div class="img_cont">
											<img
												src="https://dnvefa72aowie.cloudfront.net/origin/profile/202204/0cf95da7f59bc718dc321dc0d7ebb0b964820a4377059737c2e5df7f707140f0.jpg?q=82&s=80x80&t=crop"
												class="rounded-circle user_img"> <span
												class="online_icon offline"></span>
										</div>
										<div class="user_info">
											<span>Taherah Big</span>
											<p>Taherah left 7 mins ago</p>
										</div>
									</div>
								</li>
								<li>
									<div class="d-flex bd-highlight">
										<div class="img_cont">
											<img
												src="https://dnvefa72aowie.cloudfront.net/origin/profile/202204/0cf95da7f59bc718dc321dc0d7ebb0b964820a4377059737c2e5df7f707140f0.jpg?q=82&s=80x80&t=crop"
												class="rounded-circle user_img"> <span
												class="online_icon"></span>
										</div>
										<div class="user_info">
											<span>Sami Rafi</span>
											<p>Sami is online</p>
										</div>
									</div>
								</li>
								<li>
									<div class="d-flex bd-highlight">
										<div class="img_cont">
											<img
												src="https://dnvefa72aowie.cloudfront.net/origin/profile/202204/0cf95da7f59bc718dc321dc0d7ebb0b964820a4377059737c2e5df7f707140f0.jpg?q=82&s=80x80&t=crop"
												class="rounded-circle user_img"> <span
												class="online_icon offline"></span>
										</div>
										<div class="user_info">
											<span>Nargis Hawa</span>
											<p>Nargis left 30 mins ago</p>
										</div>
									</div>
								</li>
								<li>
									<div class="d-flex bd-highlight">
										<div class="img_cont">
											<img
												src="https://dnvefa72aowie.cloudfront.net/origin/profile/202204/0cf95da7f59bc718dc321dc0d7ebb0b964820a4377059737c2e5df7f707140f0.jpg?q=82&s=80x80&t=crop"
												class="rounded-circle user_img"> <span
												class="online_icon offline"></span>
										</div>
										<div class="user_info">
											<span>Rashid Samim</span>
											<p>Rashid left 50 mins ago</p>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<div class="card-footer"></div>
					</div>
				</div>
				<!-- 여기까지 채팅창 양식 -->

				<!-- 채팅 상세 내용 -->
				<!-- <div class="col-md-8 col-xl-6 chat"> -->
				<div class="col-md-8 chat">
					<div class="card">
						<div class="card-header msg_head">
							<div class="d-flex bd-highlight">
								<div class="img_cont">
									<img
										src="https://dnvefa72aowie.cloudfront.net/origin/profile/profile_default.png"
										class="rounded-circle user_img"> <span
										class="online_icon"></span>
								</div>
								<div class="user_info">
									<span>회원 닉네임 표시</span>
									<p>누적 Messages</p>
								</div>
							</div>
							<span id="action_menu_btn"><i class="fas fa-ellipsis-v"></i></span>
							<div class="action_menu">
								<ul>
									<li><a href=""><i class="fas fa-user-circle"></i>회원정보보기</a></li>
									<li><a href=""><i class="fas fa-ban"></i>신고하기</a></li>
									<li><a href=""><i class="fa-solid fa-x"></i>채팅방없애기</a></li>

								</ul>
							</div>
						</div>
						<div class="card-body msg_card_body scrollbar">
							<!-- 상대방이 채팅 보낼 떄  -->
							<div class="d-flex justify-content-start mb-4">
								<div class="img_cont_msg">
									<img
										src="https://dnvefa72aowie.cloudfront.net/origin/profile/profile_default.png"
										class="rounded-circle user_img_msg">
								</div>
								<div class="msg_cotainer">
									Hi, how are you samim? <span class="msg_time">8:40 AM,
										Today</span>
								</div>
							</div>

							<!-- 내가 채팅 보낼 떄  -->
							<div class="d-flex justify-content-end mb-4">
								<div class="msg_cotainer_send">
									Hi Khalid i am good tnx how about you? <span
										class="msg_time_send">8:55 AM, Today</span>
								</div>
								<div class="img_cont_msg">
									<img
										src="https://dnvefa72aowie.cloudfront.net/origin/profile/202204/0cf95da7f59bc718dc321dc0d7ebb0b964820a4377059737c2e5df7f707140f0.jpg?q=82&s=80x80&t=crop"
										class="rounded-circle user_img_msg">
								</div>
							</div>



							<div class="d-flex justify-content-start mb-4">
								<div class="img_cont_msg">
									<img
										src="https://dnvefa72aowie.cloudfront.net/origin/profile/profile_default.png"
										class="rounded-circle user_img_msg">
								</div>
								<div class="msg_cotainer">
									I am good too, thank you for your chat template <span
										class="msg_time">9:00 AM, Today</span>
								</div>
							</div>
							<div class="d-flex justify-content-end mb-4">
								<div class="msg_cotainer_send">
									You are welcome <span class="msg_time_send">9:05 AM,
										Today</span>
								</div>
								<div class="img_cont_msg">
									<img
										src="https://dnvefa72aowie.cloudfront.net/origin/profile/202204/0cf95da7f59bc718dc321dc0d7ebb0b964820a4377059737c2e5df7f707140f0.jpg?q=82&s=80x80&t=crop"
										class="rounded-circle user_img_msg">
								</div>
							</div>
							<div class="d-flex justify-content-start mb-4">
								<div class="img_cont_msg">
									<img
										src="https://dnvefa72aowie.cloudfront.net/origin/profile/profile_default.png"
										class="rounded-circle user_img_msg">
								</div>
								<div class="msg_cotainer">
									I am looking for your next templates <span class="msg_time">9:07
										AM, Today</span>
								</div>
							</div>
							<div class="d-flex justify-content-end mb-4">
								<div class="msg_cotainer_send">
									Ok, thank you have a good day <span class="msg_time_send">9:10
										AM, Today</span>
								</div>
								<div class="img_cont_msg">
									<img
										src="https://dnvefa72aowie.cloudfront.net/origin/profile/202204/0cf95da7f59bc718dc321dc0d7ebb0b964820a4377059737c2e5df7f707140f0.jpg?q=82&s=80x80&t=crop"
										class="rounded-circle user_img_msg">
								</div>
							</div>
							<div class="d-flex justify-content-start mb-4">
								<div class="img_cont_msg">
									<img
										src="https://dnvefa72aowie.cloudfront.net/origin/profile/profile_default.png"
										class="rounded-circle user_img_msg">
								</div>
								<div class="msg_cotainer">
									Bye, see you <span class="msg_time">9:12 AM, Today</span>
								</div>
							</div>
						</div>
						<div class="card-footer">
							<div class="input-group">
								<div class="input-group-append">
									<span class="input-group-text attach_btn"><i
										class="fas fa-paperclip"></i></span>
								</div>
								<textarea name="" class="form-control type_msg"
									placeholder="Type your message..."></textarea>
								<div class="input-group-append">
									<span class="input-group-text send_btn"><i
										class="fas fa-location-arrow"></i></span>
								</div>
							</div>
						</div>

					</div>
				</div>
				<!-- <div class="col-md-8 col-xl-6 chat"> -->
		

			</div>
		</div>
	</section>


</body>
</html>