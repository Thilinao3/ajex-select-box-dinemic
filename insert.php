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