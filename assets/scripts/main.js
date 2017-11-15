particlesJS.load('banner', 'assets/particles.json');

//
// ENTER PAGE
//

// hideAndShow - class for elements that use this
// hideDown - when element is below viewport
// hideUp - when element is over viewport

window.addEventListener('load', function() {
	showElement();
	projects();
	highlights();
}, false);
window.addEventListener('scroll', showElement);
window.addEventListener('resize', showElement);

function showElement() {

	var viewportHeight = window.innerHeight;
	var hideAndShow = document.getElementsByClassName('hideAndShow');
	for (var i = 0; i < hideAndShow.length; i++) {
		// distance between this and viewport top
		var elementOffsetTop = hideAndShow[i].getBoundingClientRect().top;
		var elementHeight = hideAndShow[i].offsetHeight;
		// hide up
		if (elementOffsetTop + elementHeight < 100) {
			hideAndShow[i].classList.add('hideUp');
		} else {
			hideAndShow[i].classList.remove('hideUp');
		}
		// hide down
		if (elementOffsetTop - viewportHeight > -100) {
			hideAndShow[i].classList.add('hideDown');
		} else {
			hideAndShow[i].classList.remove('hideDown');
		}
	}
}






// build headers for requests
function buildHeader() {
	var init = {
		method: 'GET'
	};
	return init;
}

// pull highlights
function pullHighlights() {
	return fetch('https://api.joaobelo.pt/highlights', buildHeader()).then(function(response) {
		return response.json();
	});
}

// pull projects
function pullProjects() {
	return fetch('https://api.joaobelo.pt/projects', buildHeader()).then(function(response) {
		return response.json();
	});
}



function highlights() {
	var h = document.getElementById('highlights_list');
	pullHighlights().then(function(r) {
		r.forEach(function(x) {
			h.innerHTML += '<li class="' + x.type + '">' +
								'<div class="title"><h3>' + x.title + '</h3></div>' +
								'<div class="description"><p>' + x.info + '</p></div>' +
								'<div class="date"><p>' + x.date + '</p></div>' +
							'</li>';
		});
	});
}

function projects() {
	var p = document.getElementById('projects_list');
	pullProjects().then(function(r) {
		r.forEach(function(y) {
			let external_url;
			if(y.external_url){
				external_url = '<a href="' + y.external_url + '" target="_blank">website</a>';
			}
			p.innerHTML += '<li class="' + y.type + '">' +
								'<div class="title"><h3>' + y.name + external_url + '</h3></div>' +
								'<div class="description"><p>' + y.description + '</p></div>' +
								'<div class="tools"><p>' + y.tools + '</p></div>' +
								'<div class="date"><p>' + y.date + '</p></div>' +
							'</li>';
		});
	});
}
