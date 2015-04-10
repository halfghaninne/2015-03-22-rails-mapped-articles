window.onload = function() {
	var add_location_link = document.getElementsByClassName("add_location_link");
	
	function showData() {
		var field_data = this.dataset.fields;
		var time = new Date().getTime();
		var ruby_object_id = this.dataset.rubyid;
		var reg_ex = new RegExp(ruby_object_id, "g"); //basically accomplishes string interpolation for javascript 
		var new_field_data = field_data.replace(reg_ex, time); 
		document.getElementById("add_location_fields").innerHTML += 
				new_field_data;
	};
	
	add_location_link[0].addEventListener("click", showData)
	
};