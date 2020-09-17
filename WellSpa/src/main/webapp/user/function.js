const firstName = document.getElementById('firstName');
const lastName = document.getElementById('lastName');
const emailAddress = document.getElementById('emailAddress');
const custMessage = document.getElementById('custMessage');
const btnSubmit = document.getElementById('btnSubmit');

const database = firebase.database();
const db = firebase.firestore();
const usersRef = database.ref('service');
const usersRef2 = database.ref('customerMsg');

var tblSrvice = document.getElementById('dataTable');
var rowdashboard = 1;
var dollarsign = document.createTextNode("$");

/*btnSubmit.addEventListener('click', e => {
	e.preventDefault () ;
	usersRef2.child (firstName.value).set ({
	first_name: firstName.value,
	last_name: lastName.value,
	email: emailAddress.value,
	messages: custMessage.value
	});
	reloadpage();
});*/

btnSubmit.addEventListener('click', e => {
	e.preventDefault () ;
	var data = {
			first_name: firstName.value,
			last_name: lastName.value,
			email: emailAddress.value,
			messages: custMessage.value	
	}
	usersRef2.push(data);
	reloadpage();
});

usersRef.once('value', function(snapshot) {
 	snapshot.forEach(function(childSnapshot) {
 	var childKey = childSnapshot.key;
 	var childData = childSnapshot.val();
 
 	var row = tblSrvice.insertRow(rowdashboard);

 	var nama = row.insertCell(0);
 	var price = row.insertCell(1);


 	nama.appendChild(document.createTextNode(childData.nama));
 	price.appendChild(document.createTextNode(childData.price+"$"));


 	rowdashboard = rowdashboard + 1;
  });
});

function reloadpage() {
	window.location.reload();
}

usersRef2.once('value', function(snapshot) {
	snapshot.forEach(function(childSnapshot) {
		var childkey = childSnapshot.key;
		var childData = childSnapshot.val();
		
		console.log(childkey);
		
	});
	
});