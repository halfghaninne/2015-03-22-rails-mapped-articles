// document.addEventListener("DOMContentLoaded", function() {
//
// 	var get_locations = new XMLHttpRequest();
// 	get_locations.open("get", "locations", true);
// 	get_locations.send();
// 	get_locations.addEventListener("load", function() {
// 		var geojson = JSON.parse(this.response);
//
// 		L.mapbox.featureLayer.setGeoJSON(geojson)
//
// 	});
//
// });