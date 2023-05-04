/**
 * 
 register.jsp 
 */

$(document).ready(function () {
  // 가격값 숫자만 입력가능
  $("#price").on("input", function () {
    var value = $(this)
      .val()
      .replace(/[^0-9\s]/g, "");
    value = new Intl.NumberFormat("ko-KR").format(value);

    if (value === "0") {
      $(this).val("");
      $(this).attr("placeholder", "￦ 가격(선택사항)");
    } else {
      $(this).val("￦ " + value);
    }
  });

// 파일 첨부 썸네일과 최대갯수제한
var $fileInput = $("#files");
var $thumbnails = $("#thumbnails");
var maxFileCount = 6; // 파일 첨부 최대 개수

$fileInput.on("change", function () {
	var files = $fileInput.get(0).files;
	var fileCount = $thumbnails.children().length; // 현재 선택한 파일 개수

	// 파일 첨부 개수 체크
	if (fileCount + files.length > maxFileCount) {
		alert("최대 " + maxFileCount + "개의 파일을 선택할 수 있습니다.");
		$fileInput.val(""); // 파일 선택 창 초기화
		$thumbnails.children().remove();
		return;
	}

	for (let i = 0; i < files.length; i++) {
	  if (fileCount + i >= maxFileCount) {
	  	break; // 최대 개수를 넘어가면 추가 썸네일 생성하지 않음
	  }

	  var file = files[i];
	  var reader = new FileReader();

	  reader.onload = function (e) {
		var $thumbnail = $('<div class="thumbnail"><img src="' + e.target.result + '"><button class="delete-btn">X</button></div>');
		$thumbnails.append($thumbnail);
	  };

	  reader.readAsDataURL(file);
	}
});
  $thumbnails.on("click", ".delete-btn", function () {
	  $(this).parent().remove();
  });



  

  $thumbnails.on("click", ".close", function (e) {
    var $target = $(e.target);
    var idx = $target.attr("data-idx");
    uploadFiles[idx].upload = "disable";
    $target.parent().remove();
  });
});

// 카테고리 선택 버튼
const categoryBtn = document.querySelector(".category-btn");
// 모달창에서 카테고리 선택 시
const categoryItems = document.querySelectorAll(".list-group-item");
for (let i = 0; i < categoryItems.length; i++) {
  categoryItems[i].addEventListener("click", function () {
    categoryBtn.innerHTML = this.innerHTML;
    $("#categoryModal").modal("hide");
  });
}

	 function validateForm() {
		var title = $("#title").val();
		var content = $("#content").val();
		var category = $("#selectedCategory").text().trim();
		// 제목이 64자를 초과한 경우 모달창 띄우기
		
    // 제목이 64자를 초과한 경우 모달창 띄우기
    if (title.length > 64) {
		// 모달창에 보여줄 문구 설정
		var message = "제목이 64자를 초과했습니다.";
		// 모달창 띄우기
		$("#myModal .modal-body").text(message);
		$("#myModal").modal("show");
		return false;
	  }
  
	  // 제목과 내용, 카테고리 모두 선택되지 않은 경우 모달창 띄우기
	  if (!title && !content && category === "카테고리 선택") {
		// 모달창에 보여줄 문구 설정
		var message = "제목, 내용, 카테고리를 선택해주세요.";
		// 모달창 띄우기
		$("#myModal .modal-body").text(message);
		$("#myModal").modal("show");
		return false;
	  }
  
	  // 제목과 내용이 없는 경우 모달창 띄우기
	  if (!title && !content) {
		// 모달창에 보여줄 문구 설정
		var message = "제목, 내용을 입력해주세요.";
		// 모달창 띄우기
		$("#myModal .modal-body").text(message);
		$("#myModal").modal("show");
		returnfalse;
	  }
  
	  // 제목과 카테고리가 없는 경우 모달창 띄우기
	  if (!title && category === "카테고리 선택") {
		// 모달창에 보여줄 문구 설정
		var message = "제목, 카테고리를 입력해주세요.";
		// 모달창 띄우기
		$("#myModal .modal-body").text(message);
		$("#myModal").modal("show");
		return false;
	  }
  
	  // 내용과 카테고리가 없는 경우 모달창 띄우기
	  if (!content && category === "카테고리 선택") {
		// 모달창에 보여줄 문구 설정
		var message = "내용, 카테고리를 입력해주세요.";
		// 모달창 띄우기
		$("#myModal .modal-body").text(message);
		$("#myModal").modal("show");
		return false;
	  }
  
	  // 제목이 없는 경우 모달창 띄우기
	  if (!title) {
		// 모달창에 보여줄 문구 설정
		var message = "제목을 입력해주세요.";
		// 모달창 띄우기
		$("#myModal .modal-body").text(message);
		$("#myModal").modal("show");
		return false;
	  }
  
	  // 내용이 없는 경우 모달창 띄우기
	  if (!content) {
		// 모달창에 보여줄 문구 설정
		var message = "내용을 입력해주세요.";
		// 모달창 띄우기
		$("#myModal .modal-body").text(message);
		$("#myModal").modal("show");
		returnfalse ;
	  }
	  // 카테고리가 없는 경우 모달창 띄우기
	  if (category === "카테고리 선택") {
		// 모달창에 보여줄 문구 설정
		var message = "카테고리를 입력해주세요.";
		// 모달창 띄우기
		$("#myModal .modal-body").text(message);
		$("#myModal").modal("show");
		return false;
	  }
		  
		// 입력된 값이 모두 유효한 경우 post 요청
		return true;
	  }
	
