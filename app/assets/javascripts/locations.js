document.addEventListener("DOMContentLoaded", function() {
	
	var map;
	
	map = L.mapbox.map('map', 'halfghaninne.liga61p0').setView([41.229, -96.032], 12)
	 
	 
	var get_locations = newXMLHttpRequest();
	get_locations.open("get", "locations", true);
	get_locations.send();
	get_locations.addEventListener("load", function() {
		var geojson = JSON.parse(this.response);
		
		map.featureLayer.setGeoJSON(geojson)

	});

});