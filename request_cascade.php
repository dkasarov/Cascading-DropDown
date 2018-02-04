<?php

include("cascade.php");

$data = file_get_contents("php://input");
$request = json_decode($data); 

$string = $request->param;

if($string == "brand"){
	$db = new DB_Handler();
	$result = $db->get("SELECT DISTINCT b.ID as 'ID', b.`Name` as 'Name' FROM Brands b INNER JOIN Models m ON b.ID=m.Brands_ID INNER JOIN modifications md ON md.Models_ID=m.ID WHERE b.Status=1 AND m.Status=1 AND md.Status=1");
	unset($db);
	echo json_encode($result);
}else if($string == "model"){
	$db = new DB_Handler();
	$result = $db->get("SELECT DISTINCT m.ID as 'ID', m.`Name` as 'Name' FROM models m INNER JOIN modifications md ON md.Models_ID=m.ID WHERE md.Status=1 AND Brands_ID = ". $request->Brand_ID);
	unset($db);
	echo json_encode($result);
}else if($string == "prod_from_to"){
	$db = new DB_Handler();
	$result = $db->get("SELECT DISTINCT CONCAT(ProduceFrom,'-', ProduceTo) as 'Years' FROM modifications WHERE Models_ID = ". $request->Model_ID);
	unset($db);
	echo json_encode($result);
}else if($string == "door"){
	$db = new DB_Handler();
	$result = $db->get("SELECT DISTINCT Doors FROM modifications WHERE Models_ID = ".$request->Model_ID." AND CONCAT(ProduceFrom,'-', ProduceTo) = '". $request->Produce_From_To."'");
	unset($db);
	echo json_encode($result);
}else if($string == "fuel"){
	$db = new DB_Handler();
	$result = $db->get("SELECT DISTINCT f.ID as 'ID', f.Name as 'Name' FROM modifications m INNER JOIN fuel f ON m.EngineFuel=f.ID WHERE Models_ID = ".$request->Model_ID." AND CONCAT(ProduceFrom,'-', ProduceTo) = '". $request->Produce_From_To."' AND Doors=".$request->NumOfDoors);
	unset($db);
	echo json_encode($result);
}
else if($string == "volume"){
	$db = new DB_Handler();
	$result = $db->get("SELECT DISTINCT EngineVolume FROM modifications WHERE Models_ID = ".$request->Model_ID." AND CONCAT(ProduceFrom,'-', ProduceTo) = '". $request->Produce_From_To."' AND Doors=".$request->NumOfDoors." AND EngineFuel=".$request->EngineFuel);
	unset($db);
	echo json_encode($result);
}
else if($string == "power"){
	$db = new DB_Handler();
	$result = $db->get("SELECT Name,EnginePower FROM modifications WHERE Models_ID = ".$request->Model_ID." AND CONCAT(ProduceFrom,'-', ProduceTo) = '". $request->Produce_From_To."' AND Doors=".$request->NumOfDoors." AND EngineFuel=".$request->EngineFuel." AND EngineVolume=".$request->EngineVolume);
	unset($db);
	echo json_encode($result);
}