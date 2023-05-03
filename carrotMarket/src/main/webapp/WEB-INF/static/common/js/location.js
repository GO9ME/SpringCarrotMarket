function updateSecondCombo(){
	 var firstCombo = document.getElementById("sido");
  var secondCombo = document.getElementById("sigun");

	if (firstCombo.value === "서울") {
    secondCombo.innerHTML = `
      <option value="">시/군/구</option>
      <option value="강남구">강남구</option>
      <option value="강동구">강동구</option>
      <option value="강북구">강북구</option>
      <option value="강서구">강서구</option>
      <option value="구로구">구로구</option>
      <option value="금천구">금천구</option>
      <option value="관악구">관악구</option>
      <option value="광진구">광진구</option>
      <option value="노원구">노원구</option>
      <option value="도봉구">도봉구</option>
      <option value="동대문구">동대문구</option>
      <option value="동작구">동작구</option>
      <option value="마포구">마포구</option>
      <option value="서대문구">서대문구</option>
      <option value="서초구">서초구</option>
      <option value="성동구">성동구</option>
      <option value="성북구">성북구</option>
      <option value="송파구">송파구</option>
      <option value="양천구">양천구</option>
      <option value="영등포구">영등포구</option>
      <option value="용산구">용산구</option>
      <option value="은평구">은평구</option>
      <option value="종로구">종로구</option>
      <option value="중구">중구</option>
      <option value="중랑구">중랑구</option>
    `;
  } else if (firstCombo.value === "부산") {
    secondCombo.innerHTML = `
      <option value=""> </option>
      <option value="carrot">당근</option>
      <option value="cucumber">오이</option>
      <option value="tomato">토마토</option>
    `;
  } else if (firstCombo.value === "대구") {
    secondCombo.innerHTML = `
      <option value="">시/군/구</option>
      <option value="중구">중구 </option>
      <option value="동구">동구 </option>
      <option value="서구">서구 </option>
      <option value="남구">남구 </option>
      <option value="북구">북구 </option>
      <option value="수성구">수성구 </option>
      <option value="달서구">달서구 </option>
      <option value="달성군">달성군 </option>
    `;
  } else if (firstCombo.value === "인천") {
    secondCombo.innerHTML = `
      <option value="">시/군/구</option>
      <option value="중구">중구</option>
      <option value="동구">동구 </option>
      <option value="미추홀구">미추홀구 </option>
      <option value="연수구">연수구 </option>
      <option value="남동구">남동구 </option>
      <option value="부평구">부평구 </option>
      <option value="계양구">계양구 </option>
      <option value="서구">서구 </option>
      <option value="강화군">강화군 </option>
      <option value="옹진군">옹진군 </option>
    `;
  } else if (firstCombo.value === "광주") {
    secondCombo.innerHTML = `
      <option value="">시/군/구</option>
      <option value="동구">동구 </option>
      <option value="서구">서구 </option>
      <option value="남구">남구 </option>
      <option value="북구">북구 </option>
      <option value="광산구">광산구 </option>
    `;
  } else if (firstCombo.value === "대전") {
    secondCombo.innerHTML = `
      <option value="">시/군/구</option>
      <option value="동구">동구 </option>
      <option value="중구">중구 </option>
      <option value="서구">서구 </option>
      <option value="유성구">유성구 </option>
      <option value="대덕구">대덕구 </option>
    `;
  } else if (firstCombo.value === "울산") {
    secondCombo.innerHTML = `
      <option value=""> </option>
      <option value="carrot">당근</option>
      <option value="cucumber">오이</option>
      <option value="tomato">토마토</option>
    `;
  } else if (firstCombo.value === "세종") {
    secondCombo.innerHTML = `
      <option value="">시/군/구</option>
      <option value="세종특별자치시">세종특별자치시 </option>
    `;
  } else if (firstCombo.value === "경기") {
    secondCombo.innerHTML = `
      <option value=""> </option>
      <option value="carrot">당근</option>
      <option value="cucumber">오이</option>
      <option value="tomato">토마토</option>
    `;
  } else if (firstCombo.value === "강원") {
    secondCombo.innerHTML = `
      <option value=""> </option>
      <option value="carrot">당근</option>
      <option value="cucumber">오이</option>
      <option value="tomato">토마토</option>
    `;
  } else if (firstCombo.value === "충북") {
    secondCombo.innerHTML = `
      <option value="">시/군/구</option>
      <option value="청주시">청주시 </option>
      <option value="충주시">충주시 </option>
      <option value="제천시">제천시 </option>
      <option value="보은군">보은군 </option>
      <option value="옥천군">옥천군 </option>
      <option value="영동군">영동군 </option>
      <option value="증평군">증평군 </option>
      <option value="진천군">진천군 </option>
      <option value="괴산군">괴산군 </option>
      <option value="음성군">음성군 </option>
      <option value="단양군">단양군 </option>
      
    `;
  } else if (firstCombo.value === "충남") {
    secondCombo.innerHTML = `
      <option value=""> </option>
      <option value="carrot">당근</option>
      <option value="cucumber">오이</option>
      <option value="tomato">토마토</option>
    `;
  } else if (firstCombo.value === "전북") {
    secondCombo.innerHTML = `
      <option value=""> </option>
      <option value="carrot">당근</option>
      <option value="cucumber">오이</option>
      <option value="tomato">토마토</option>
    `;
  } else if (firstCombo.value === "전남") {
    secondCombo.innerHTML = `
      <option value=""> </option>
      <option value="carrot">당근</option>
      <option value="cucumber">오이</option>
      <option value="tomato">토마토</option>
    `;
  } else if (firstCombo.value === "경북") {
    secondCombo.innerHTML = `
      <option value="">시/군/구</option>
      <option value=""></option>
    `;
  } else if (firstCombo.value === "경남") {
    secondCombo.innerHTML = `
      <option value="">시/군/구</option>
      <option value="창원시">창원시</option>
      <option value="진주시">진주시</option>
      <option value="통영시">통영시</option>
      <option value="사천시">사천시</option>
      <option value="김해시">김해시</option>
      <option value="밀양시">밀양시</option>
      <option value="거제시">거제시</option>
      <option value="양산시">양산시</option>
      <option value="의령군">의령군</option>
      <option value="함안군">함안군</option>
      <option value="창녕군">창녕군</option>
      <option value="고성군">고성군</option>
      <option value="남해군">남해군</option>
      <option value="하동군">하동군</option>
      <option value="산청군">산청군</option>
      <option value="함양군">함양군</option>
      <option value="거창군">거창군</option>
      <option value="합천군">합천군</option>
     
    `;
  } else if (firstCombo.value === "제주") {
    secondCombo.innerHTML = `
      <option value="">시/군/구</option>
      <option value="제주시">제주시</option>
      <option value="서귀포시">서귀포시</option>
    `;
  } else {
    secondCombo.innerHTML = `<option value=""> </option>`;
  }
}