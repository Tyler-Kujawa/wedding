$(document).ready(function() {
	$("#guestSectionHeader").hide();
	$("#guestNameLabel").hide();
	$("#guestName").hide();

	$("#mealLabel").hide();
	$("#mealSelection").hide();
	$("#guestAttendingLabel").hide();
	$("#guestSelection").hide();
	$("#guestMealLabel").hide();
	$("#guestMealSelection").hide();

	if($("#attendingSelection").val() == "true"){
		$("#mealLabel").show();
		$("#mealSelection").show();
		$("#guestAttendingLabel").show();
		$("#guestSelection").show();
	}else if($("#attendingSelection").val() == "false"){
		$("#mealLabel").hide();
		$("#mealSelection").hide();
		$("#guestAttendingLabel").hide();
		$("#guestSelection").hide();
	}


	$("#attendingSelection").change(function(){
		if($("#attendingSelection").val() == "true"){
			$("#mealLabel").show();
			$("#mealSelection").show();
			$("#guestAttendingLabel").show();
			$("#guestSelection").show();
			$("#guestSelection").val("false");
		}else if($("#attendingSelection").val() == "false"){
			$("#mealLabel").hide();
			$("#mealSelection").hide();
			$("#guestAttendingLabel").hide();
			$("#guestSelection").hide();
			$("#guestSectionHeader").hide();
			$("#guestNameLabel").hide();
			$("#guestName").hide();
			$("#guestMealLabel").hide();
			$("#guestMealSelection").hide();
		}
	});

	$("#guestSelection").change(function(){
		// alert($("#guestSelection").val() == true);
		if($("#guestSelection").val() == "true"){
			$("#guestSectionHeader").show();
			$("#guestNameLabel").show();
			$("#guestName").show();
			$("#guestMealLabel").show();
			$("#guestMealSelection").show();
		}else{
			$("#guestSectionHeader").hide();
			$("#guestNameLabel").hide();
			$("#guestName").hide();
			$("#guestMealLabel").hide();
			$("#guestMealSelection").hide();
		}
	});
})