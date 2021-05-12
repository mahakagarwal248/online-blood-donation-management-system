
	<?php

  		$conn = mysqli_connect("Localhost","root","","ddl") or die("connection failed");

		if($_POST['type']==""){
			$sql = "SELECT * FROM country_tb";

  			$query = mysqli_query($conn,$sql) or die("Query unsuccessful");

 			$str = "";

  			while ($row = mysqli_fetch_assoc($query)) {
    			$str .= "<option value='{$row['cid']}'>{$row['cname']}</option>";
  			}
		}else if ($_POST['type']=="stateData"){
			$sql = "SELECT * FROM state_tb WHERE country ={$_POST['id']}";

  			$query = mysqli_query($conn,$sql) or die("Query unsuccessful");

 			$str = "";

  			while ($row = mysqli_fetch_assoc($query)) {
    			$str .= "<option value='{$row['sid']}'>{$row['sname']}</option>";
  			}
		}else if ($_POST['type']=="cityData"){
			$sql = "SELECT * FROM city_tb WHERE state ={$_POST['id']}";

  			$query = mysqli_query($conn,$sql) or die("Query unsuccessful");

 			$str = "";

  			while ($row = mysqli_fetch_assoc($query)) {
    			$str .= "<option value='{$row['cyid']}'>{$row['cyname']}</option>";
  			}
		}

  		echo $str;

	?>



