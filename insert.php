<?php
//insert.php

if(isset($_POST['country']))
{
	include('database_connection.php');
	$query = "
	INSERT INTO country_state_city_form_data (country, state, city) 
	VALUES(:country, :state, :city)
	";
	$statement = $connect->prepare($query);
	$statement->execute(
		array(
			':country'		=>	$_POST['country'],
			':state'		=>	$_POST['state'],
			':city'			=>	$_POST['hidden_city']
		)
	);
	$result = $statement->fetchAll();

	if(isset($result))
	{
		echo 'done';
	}

}



?>

<?php
	include('config.php');
	include('session.php');
    $uid01 = $_SESSION['login_user'];
	

// Insert user input data to user table.

	$name=$_POST['name'];
	$uid=$_POST['userid'];
	$uname=$_POST['uname'];
	$email=$_POST['email'];
	$password1=$_POST['password1'];
	$nic=$_POST['nic'];
	$mobile=$_POST['mobile'];
	$perm=$_POST['perm'];

    
	mysqli_query($db,"insert into `user` (fullName,username,email,password,nic,tel,userID,permission ) values ('$name','$uname','$email','$password1','$nic','$mobile','$uid','$perm')");
	
	
  
if(isset($_POST['adduser']))
{
    $unitlist = $_POST['UnitIDlist'];

    


    foreach($unitlist  as $unit)
    {

		$pieces = explode("|", $unit);
          $Country= $pieces[0]; 
          $Region=$pieces[1];
		  $Farm= $pieces[2];
		  $Unit= $pieces[3];

		$sql = "SELECT * FROM `farm_location` WHERE userID = '{$uid01}' AND Unit='$Unit' AND Country='$Country' AND farm_name='$Farm' AND farm_address='$Region' ";

        $retval = mysqli_query( $db, $sql );
        // fetch data from user table accourding to user checked data from farm location table.

		while($row = mysqli_fetch_array($retval, MYSQLI_ASSOC)) {
			$country=$row['country'];
			$farm_latitude=$row['farm_latitude'];
			$lc_id=$row['lc_id'];
			$farm_address=$row['farm_address'];
			$farm_longitude=$row['farm_longitude'];
			$farm_name=$row['farm_name'];
		 }

        // Isert data into farm location table."<br>";
        $query = "INSERT INTO farm_location (Unit, UserID, country,farm_latitude,lc_id,farm_address,farm_longitude,farm_name) 
		                              VALUES ('$Unit','$uid','$country','$farm_latitude','$lc_id','$farm_address','$farm_longitude','$farm_name')";
        $query_run = mysqli_query($db, $query);
    }

  header('location:dashboard.php#management');	
}
?>