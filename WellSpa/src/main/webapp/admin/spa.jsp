<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Admin</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

		<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-database.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-firestore.js"></script>
<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-analytics.js"></script>

<script>
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyDMY-75epQwXGF5ISe4ZcDeSG77Mf9VoIo",
    authDomain: "wellspa-b3fb7.firebaseapp.com",
    databaseURL: "https://wellspa-b3fb7.firebaseio.com",
    projectId: "wellspa-b3fb7",
    storageBucket: "wellspa-b3fb7.appspot.com",
    messagingSenderId: "1064895841665",
    appId: "1:1064895841665:web:5731fbfb9d816451061480",
    measurementId: "G-Z4MEJ2CL3Q"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();
</script>

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="contact.jsp">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Admin <sup></sup></div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
     

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      

      <!-- Nav Item - Pages Collapse Menu -->
   

      <!-- Nav Item - Utilities Collapse Menu -->
     

      <!-- Divider -->
    

      <!-- Heading -->
      

      <!-- Nav Item - Pages Collapse Menu -->
      

      <!-- Nav Item - Charts -->
      <li class="nav-item">
        <a class="nav-link" href="add_spa.jsp">
          <i class=""></i>
          <span>Service</span></a>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="spa.jsp">
          <i class="fas fa-fw fa-table"></i>
          <span>Tables Service</span></a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="contact.jsp">
          <i class="fas fa-fw fa-table"></i>
          <span>Tables Messages</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Search -->
          
          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            

            <!-- Nav Item - Alerts -->
            

            <!-- Nav Item - Messages -->
            

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Admin</span>
                <img class="img-profile rounded-circle" src="https://img.icons8.com/cotton/64/000000/user-male-circle.png">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

       <!-- Begin Page Content -->
 <div class="container-fluid">
 <!-- Page Heading -->
 <h1 class="h3 mb-4 text-gray-800">Service</h1>
 <form class="user">
 <div class="form-group">
 <input type="text" class="form-control form-control-user" id="uid"
placeholder="ID" readonly>
 </div>
 <div class="form-group row">
 <div class="col-sm-6 mb-3 mb-sm-0">
 <input type="text" class="form-control form-control-user"
id="kode" placeholder="Kode Service">
 </div>
 <div class="col-sm-6">
 <input type="number" class="form-control form-control-user"
id="price" placeholder="Price">
 </div>
 </div>
 <div class="form-group">
 <input type="text" class="form-control form-control-user" id="nama"
placeholder="Nama Service">
 </div>
 <input type="button" value="Update" onclick="update_user();"
class="btn btn-warning btn-user" />
 <input type="button" value="Delete" onclick="delete_user();"
class="btn btn-danger btn-user" />
 <hr>
 </form>
<div class="card shadow mb-4">
 <div class="card-header py-3">
 <h6 class="m-0 font-weight-bold text-primary">Information</h6>
 </div>
      <div class="card-body">
 <div class="table-responsive">
 <table id="dataTable" class="table table-bordered" width="100%" cellspacing="0">
 <tr>
 <td>#ID</td>
 <td>Kode</td>
 <td>Price</td>
 <td>Nama</td>
 </tr>
</table>
 </div>
 </div>
 </div>
 </div>
 <!-- /.container-fluid -->
 </div>
 <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2019</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" onclick="logout()"  href="../login/login.jsp">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-auth.js"></script>
	<script>
	const database = firebase.database();
	const db = firebase.firestore();
	var tblSrvice = document.getElementById('dataTable');
	const usersRef = database.ref('service');
	var rowdashboard = 1;
	usersRef.once('value', function(snapshot) {
	snapshot.forEach(function(childSnapshot) {
		var childKey = childSnapshot.key;
	 	var childData = childSnapshot.val();

 var row = tblSrvice.insertRow(rowdashboard);
 var cellId = row.insertCell(0);
 var cellKode = row.insertCell(1);
 var cellPrice = row.insertCell(2);
 var cellNama = row.insertCell(3);
 cellId.appendChild(document.createTextNode(childKey));
 cellKode.appendChild(document.createTextNode(childData.kode));
 cellPrice.appendChild(document.createTextNode(childData.price));
 cellNama.appendChild(document.createTextNode(childData.nama));
 rowdashboard = rowdashboard + 1;
 });
 var table = document.getElementById("dataTable");
 var rows = table.getElementsByTagName("tr");
 for (i = 0; i < rows.length; i++) {
	 var currentRow = table.rows[i];
	 var createClickHandler = function(row) {
	 return function() {
	 var cell1 = row.getElementsByTagName("td")[0];
	 var cell2 = row.getElementsByTagName("td")[1];
	 var cell3 = row.getElementsByTagName("td")[2];
	 var cell4 = row.getElementsByTagName("td")[3];
	 var id = cell1.innerHTML;
	 var kode = cell2.innerHTML;
	 var price = cell3.innerHTML;
	 var nama = cell4.innerHTML;
	 document.getElementById('uid').value = id;
	 document.getElementById('kode').value = kode;
	 document.getElementById('price').value = price;
	 document.getElementById('nama').value = nama;

	 };
	 };
	 currentRow.onclick = createClickHandler(currentRow);
	 }
	});


	 function update_user(){
	 var kode = document.getElementById('kode').value;
	 var price = document.getElementById('price').value;
	 var nama = document.getElementById('nama').value;
	 var uid = document.getElementById('uid').value;

	 var data = {
	 kode: kode,
	 price: price,
	 nama: nama
	 }

	 var updates = {};
	 updates['/service/' + uid] = data;
	 firebase.database().ref().update(updates);

	 alert('Service updated successfully!');

	 reload_page();
	 }

	 function delete_user(){
	 var uid = document.getElementById('uid').value;

	 firebase.database().ref().child('/service/' + uid).remove();
	 alert('Service deleted successfully!');
	 reload_page();
	 }

	 function reload_page(){
	 window.location.reload();
	 }
	
	 function logout(){
		  firebase.auth().signOut();
		}

	 </script>
</body>

</html>
