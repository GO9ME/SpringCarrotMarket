/**
 * 
 
 main js
 
 
 */


const gnbBtn = document.querySelector('.buttons-menu__list');
let gnbBtnToggle = false;
gnbBtn.addEventListener('click', () => {

	if (!gnbBtnToggle) {
		document.querySelector('.gnb-wrap').classList.add('active');
	} else {
		document.querySelector('.gnb-wrap').classList.remove('active');
	}

	gnbBtnToggle = !gnbBtnToggle;
})