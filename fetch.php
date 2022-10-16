<?php
//fetch.php

if(isset($_POST['action']))
{
	include('database_connection.php');

	$output = '';

	if($_POST["action"] == 'country')
	{
		$query = "
		SELECT state FROM country_state_city 
		WHERE country = :country 
		GROUP BY state
		";
		$statement = $connect->prepare($query);
		$statement->execute(
			array(
				':country'		=>	$_POST["query"]
			)
		);
		$result = $statement->fetchAll();
		$output .= '<option value="">Select State</option>';
		foreach($result as $row)
		{
			$output .= '<option value="'.$row["state"].'">'.$row["state"].'</option>';
		}
	}
	if($_POST["action"] == 'state')
	{
		$query = "
		SELECT city FROM country_state_city 
		WHERE state = :state
		";
		$statement = $connect->prepare($query);
		$statement->execute(
			array(
				':state'		=>	$_POST["query"]
			)
		);
		$result = $statement->fetchAll();
		foreach($result as $row)
		{
			$output .= '<option value="'.$row["city"].'">'.$row["city"].'</option>';
		}


	}
	echo $output;
}

?>