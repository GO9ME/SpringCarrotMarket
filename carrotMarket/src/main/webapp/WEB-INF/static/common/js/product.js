/**
 * 
 register.jsp 
 */



$(document)
	.ready(
		function() {
			// 가격값 숫자만 입력가능
			$("#price").on(
				"input",
				function() {
					var value = $(this).val().replace(
						/[^0-9\s]/g, '');
					value = new Intl.NumberFormat('ko-KR')
						.format(value);

					if (value === '0') {
						$(this).val('');
						$(this).attr('placeholder',
							'￦ 가격(선택사항)');
					} else {
						$(this).val('￦ ' + value);
					}
				});

			// 파일 선택 버튼에서 파일을 선택할 때 preview() 함수 호출
			$("#file").on("change", function() {
				var files = $(this).prop("files");
				for (var i = 0; i < files.length; i++) {
					var file = files[i];
					var size = uploadFiles.push(file);
					preview(file, size - 1, $thumbnails);
				}
			});

			// 사진업로드 드래그앤드롭
			var uploadFiles = [];
			var $drop = $(".dropzone");
			var $thumbnails = $(".thumbnail");

			$drop.on("dragenter", function(e) {
				e.preventDefault();
				$(this).addClass("drag-over");
			}).on("dragleave", function(e) {
				e.preventDefault();
				$(this).removeClass("drag-over");
			}).on("dragover", function(e) {
				e.preventDefault();
				e.stopPropagation();
			}).on("drop", function(e) {
				e.preventDefault();
				$(this).removeClass("drag-over");

				var files = e.originalEvent.dataTransfer.files;
				for (var i = 0; i < files.length; i++) {
					var file = files[i];
					var size = uploadFiles.push(file);
					preview(file, size - 1, $thumbnails);
				}
			});

			function preview(file, idx, $thumbnails) {
				var reader = new FileReader();
				reader.onload = (function(f, idx) {
					return function(e) {
						var div = '<div class="thumb"> \
            		     		          <div class="close" data-idx="' + idx + '">X</div> \
            		     		          <img src="'
							+ e.target.result
							+ '" title="'
							+ escape(f.name)
							+ '"/> \
            		     		        </div>';
						$thumbnails.append(div);
					};
				})(file, idx);
				reader.readAsDataURL(file);
			}

			$("#send")
				.on(
					"click",
					function() {
						// 입력된 제목 가져오기
						var title = $("#title").val()
							.trim();
						var content = $("#content")
							.val().trim();
						var category = $(
							"#selectedCategory")
							.text().trim();
						console.log(category);

						// 제목이 64자를 초과한 경우 모달창 띄우기
						if (title.length > 64) {
							// 모달창에 보여줄 문구 설정
							var message = "제목이 64자를 초과했습니다.";
							// 모달창 띄우기
							$("#myModal .modal-body")
								.text(message);
							$("#myModal").modal("show");
							return;
						}

						// 제목과 내용, 카테고리 모두 선택되지 않은 경우 모달창 띄우기
						if (!title
							&& !content
							&& category === "카테고리 선택") {
							// 모달창에 보여줄 문구 설정
							var message = "제목, 내용, 카테고리를 선택해주세요.";
							// 모달창 띄우기
							$("#myModal .modal-body")
								.text(message);
							$("#myModal").modal("show");
							return;
						}

						// 제목과 내용이 없는 경우 모달창 띄우기
						if (!title && !content) {
							// 모달창에 보여줄 문구 설정
							var message = "제목, 내용을 입력해주세요.";
							// 모달창 띄우기
							$("#myModal .modal-body")
								.text(message);
							$("#myModal").modal("show");
							return;
						}

						// 제목과 카테고리가 없는 경우 모달창 띄우기
						if (!title
							&& category === "카테고리 선택") {
							// 모달창에 보여줄 문구 설정
							var message = "제목, 카테고리를 입력해주세요.";
							// 모달창 띄우기
							$("#myModal .modal-body")
								.text(message);
							$("#myModal").modal("show");
							return;
						}

						// 내용과 카테고리가 없는 경우 모달창 띄우기
						if (!content
							&& category === "카테고리 선택") {
							// 모달창에 보여줄 문구 설정
							var message = "내용, 카테고리를 입력해주세요.";
							// 모달창 띄우기
							$("#myModal .modal-body")
								.text(message);
							$("#myModal").modal("show");
							return;
						}

						// 제목이 없는 경우 모달창 띄우기
						if (!title) {
							// 모달창에 보여줄 문구 설정
							var message = "제목을 입력해주세요.";
							// 모달창 띄우기
							$("#myModal .modal-body")
								.text(message);
							$("#myModal").modal("show");
							return;
						}

						// 내용이 없는 경우 모달창 띄우기
						if (!content) {
							// 모달창에 보여줄 문구 설정
							var message = "내용을 입력해주세요.";
							// 모달창 띄우기
							$("#myModal .modal-body")
								.text(message);
							$("#myModal").modal("show");
							return;
						}
						// 카테고리가 없는 경우 모달창 띄우기
						if (category === "카테고리 선택") {
							// 모달창에 보여줄 문구 설정
							var message = "카테고리를 입력해주세요.";
							// 모달창 띄우기
							$("#myModal .modal-body")
								.text(message);
							$("#myModal").modal("show");
							return;
						}

						// 파일 업로들르 위한 요청코드
						var formData = new FormData();
						$
							.each(
								uploadFiles,
								function(i,
									file) {
									if (file.upload !== "disable") {
										formData
											.append(
												"upload-file",
												file,
												file.name);
									}
								});

						$
							.ajax({
								url: "/api/etc/file/upload",
								data: formData,
								type: "post",
								contentType: false,
								processData: false,
								success: function(
									ret) {
									alert("업로드 완료됨");
								}
							});
					});

			$thumbnails.on("click", ".close", function(e) {
				var $target = $(e.target);
				var idx = $target.attr("data-idx");
				uploadFiles[idx].upload = "disable";
				$target.parent().remove();
			});
		});

// 카테고리 선택 버튼
const categoryBtn = document.querySelector('.category-btn');
// 모달창에서 카테고리 선택 시
const categoryItems = document.querySelectorAll('.list-group-item');
for (let i = 0; i < categoryItems.length; i++) {
	categoryItems[i].addEventListener('click', function() {
		categoryBtn.innerHTML = this.innerHTML;
		$('#categoryModal').modal('hide');
	});
}
