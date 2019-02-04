	var table = document.getElementById("table");
	function getPatientId(a){
		table.rows[a].cells[5].children[0].onclick= function(){			
			var id = table.rows[a].cells[0].innerHTML;
			var nid = Number(id);
			if(id.length != 0){
				var request = new XMLHttpRequest();
				request.onreadystatechange = function() {
					if(request.readyState == 4 && request.status == 200){
						var result = JSON.parse(request.responseText);
						console.log(result);
						document.getElementById("report").hidden = false;
						document.getElementById("patientTable").hidden = true;
						var cd = new Date();
						var cy = cd.getFullYear();
						var dob = result[0].dob;
						var doby =Number(dob.slice(0,4));
						var a = cy - doby;
						document.getElementById("ptId").value = result[0].pt_id;
						document.getElementById("patientName").value = result[0].fname+" " + result[0].mname+" " + result[0].lname;
						document.getElementById("age").value = a;
						document.getElementById("address").value = result[1].district +","+result[1].city+","+result[1].ward;
						document.getElementById("phone").value = result[1].phone;
						document.getElementById("bloodGrp").value = result[0].blood_grp;
						document.getElementById("gender").value = result[0].sex;
						document.getElementById("problem").value = result[0].problem;
						document.getElementById("status").value = result[0].status;
						document.getElementById("hospitalWard").value = result[0].ward_no +"/"+result[0].room_no+"/"+result[0].bed_no;
					};
				};
			};
			request.open("GET", "patientDetailsForAdmin.php?PID="+nid, true);
			request.send();
		};
	};
	for (var i = 1 ; i < table.rows.length; i++){
			getPatientId(i);
	};