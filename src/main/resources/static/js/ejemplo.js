

$(document).ready(function(){
	$("#inputDepa").change(function() {
		var departamento = document.getElementById("inputDepa").value;
		$.ajax({
			type: "POST",
			url: "./allMunicipios",
			data : {
				dep : departamento
			},
			success:function(result){
				$("#inputMuni").empty();
				$.each(result,function(index,value){
					$("#inputMuni").append($("<option/>").val(result[index][0]).text(result[index][1]))
				});
			},
			error:function(error){
				alert("ERROR");
			}
		})
	});
});