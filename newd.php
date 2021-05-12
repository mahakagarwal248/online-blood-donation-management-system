<html>
    <style type="text/css">
        body{
            background-color: aliceblue;
            font-size: 20px;
            font-weight: bold;
            }
    </style>
</html>

<?php

    $fn=$_POST['fullname'];
    $gen=$_POST['gender'];
    $db=$_POST['dob'];
    $an=$_POST['ano'];
    $mn=$_POST['mno'];
    $ei=$_POST['eid'];
    $con=$_POST['country'];
    $stt=$_POST['state'];
    $ct=$_POST['city'];
    $bg=$_POST['bloodgroup'];
    $ldod=$_POST['ldd'];
    $afod=$_POST['afd'];
    $dt=$_POST['diabetes'];
    $prgnt=$_POST['pregnant'];
    $abrtn=$_POST['abortion'];
    $chld=$_POST['child'];


    $conn= mysqli_connect('localhost','root','','ddl');

    $date = date("d/m/y");
    $date1 = new DateTime($date);
    $date2 = new DateTime($db);
    $interval = $date1->diff($date2);
    $age= $interval->format('%y');

    $ctt="SELECT cyname from city_tb WHERE `cyid`= $ct";
    $ccc=mysqli_query($conn,$ctt);
    while($row= mysqli_fetch_assoc($ccc)){
        $c = $row['cyname'];
    }
    if( $age<18 || $dt == "yes" || $prgnt == "yes" || $abrtn == "yes" || $chld == "yes"){
        echo "Sorry! You are not eligible for donation.";
    }else{

        $query="INSERT INTO donor_info values('$fn','$gen','$db','$an','$mn','$ei','$con','$stt','$c','$bg','$ldod','$afod','$dt','$prgnt','$abrtn','$chld') ";
        $data=mysqli_query($conn,$query);
        if($data){
            echo "Registered Successfully.";
        }else{
            echo "Failed";
        }


    }

    
    
?>    