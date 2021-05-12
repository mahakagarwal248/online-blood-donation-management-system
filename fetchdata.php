

<!DOCTYPE html>
<html>
    <meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="fetchdata.css">
    <body>
        <table>
            <thead>
                <tr>
                    <th>S.No. </th>
                    <th>Name </th>
                    <th>Mobile Number </th>
                    <th>City</th>
                </tr>
            </thead>
            <tbody>

            <?php
                $dbhost = 'localhost';
                $dbuser = 'root';
                $dbpass = '';
                $dbname = 'ddl';
   
                $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
   
                if(! $conn ) {
                   die('Could not connect: ' . mysql_error());
                }

                $bldgrp= $_GET['bloodgroup'];

                $query = "SELECT * FROM `donor_info` WHERE `bloodgroup`='$bldgrp'";
                $result = mysqli_query($conn,$query);
   
                $num = mysqli_num_rows($result);
                $no=1;
                while($row = mysqli_fetch_assoc($result)){
                    ?>    
                        <tr>
                            <td><?php echo $no."."; ?></td>
                            <td><?php echo $row['fullname'];  ?></td>
                            <td><?php echo $row['mno'];  ?></td>
                            <td><?php echo $row['city'];  ?></td>
                        </tr>
                <?php
                $no=$no +1;
                }
                ?>    
            </tbody>    
        </table>
    </body>
</html>