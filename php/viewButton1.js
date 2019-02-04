	var table = document.getElementById("table");

	function getPatientId(a){
		table.rows[a].cells[5].children[0].onclick= function(){			
			var id = table.rows[a].cells[0].innerHTML;
			var nid = Number(id);
			var sid = String(id);
			window.location.href = "htmlForPatientTable(2).php"+"#"+sid;
		};
	};

	for (var i = 1 ; i < table.rows.length; i++){
			getPatientId(i);
	};



