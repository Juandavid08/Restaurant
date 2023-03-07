<div class="container">
	<div class="row">
		<div class="col-lg-4.3">
		 <br>
		 <div class="mesas">
		  <h3>Seleccionar Una Mesa</h3>
		  <br>
			 <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
			   <!--  <div class="btn-group mr-2" role="group" aria-label="First group"> -->
				<a href="mesa1" class="btn btn-success">Mesa #1</a>
				<a href="mesa2" class="btn btn-danger">Mesa #2</a>
				<a href="mesa3" class="btn btn-primary">Mesa #3</a>
				<br><br>
				<a href="mesa4" class="btn btn-success">Mesa #4</a>
				<a href="mesa5" class="btn btn-danger">Mesa #5</a>
				<a href="mesa6" class="btn btn-primary">Mesa #6</a>
				<br><br>
				<a href="mesa7" class="btn btn-success">Mesa #7</a>
				<a href="mesa8" class="btn btn-danger">Mesa #8</a>
				<a href="mesa9" class="btn btn-primary">Mesa #9</a>
				<br><br>
				<a href="mesa10" class="btn btn-success">Mesa #10</a>
				<a href="principalVentas" class="btn btn-warning">Salir de las Mesas</a>
			<!-- </div> -->
		</div>
	  </div>
	  	<br><br>
	 </div>
		<div class="col-lg-8">
		   <?php 
             if (isset($_GET['action'])) {
             	if ($_GET['action']== 'mesa1') {
             		include 'mesas/mesa1.php';
             	}else if($_GET['action']== 'mesa #2'){
             		include 'mesas/mesa2.php';
             	}else if($_GET['action']== 'mesa3'){
             		include 'mesas/mesa3.php';
             	}else if($_GET['action']== 'mesa4'){
             		include 'mesas/mesa4.php';
             	}else if($_GET['action']== 'mesa5'){
             		include 'mesas/mesa5.php';
             	}else if($_GET['action']== 'mesa6'){
             		include 'mesas/mesa6.php';
             	}else if($_GET['action']== 'mesa7'){
             		include 'mesas/mesa7.php';
             	}else if($_GET['action']== 'mesa8'){
             		include 'mesas/mesa8.php';
             	}else if($_GET['action']== 'mesa9'){
             		include 'mesas/mesa9.php';
             	}else if($_GET['action']== 'mesa10'){
             		include 'mesas/mesa10.php';
             	}else{
	             echo '<br><img src="assets/img/foto1.jpg" width="700" height="348" >';
             	}

             	
             }
		    ?>
	   </div>
	  
</div>
</div>