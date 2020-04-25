/**
 * 
 */

function addTo(id) {
	var data = id;
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4) {
			if ((xhr.status >= 200 && xhr.status < 300) || xhr.status == 304) {
				document.getElementById(sid).innerHTML = xhr.responseText;
			}
		}
	}
	xhr.open("get", "/account/addcart/" + data, true);
	xhr.send(null);
}