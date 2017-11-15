<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

// get the HTTP method, path and body of the request
$method = $_SERVER['REQUEST_METHOD'];
$request = explode('/', trim($_SERVER['REQUEST_URI'],'/'));
$input = json_decode(file_get_contents('php://input'),true);

if($method === 'GET') {

	$link = mysqli_connect('localhost', 'USERNAME', 'PASSWORD', 'DBNAME');
	mysqli_set_charset($link,'utf8');

	// retrieve the table and key from the path
	$table = preg_replace('/[^a-zA-Z0-9\s-]/','',array_shift($request));
	$key = preg_replace('/[^a-zA-Z0-9\s-]/','',array_shift($request));

	// create SQL based on HTTP method
	$sql = "select * from public_$table".($key?" WHERE id=$key":' ORDER BY date DESC, id DESC');
	// $sql = "SELECT * FROM public_$table".($key?" WHERE name_id LIKE '$key'":'');
	// excecute SQL statement
	$result = mysqli_query($link,$sql);

	// if params - documentation / options
	if(!$table){
		$json_content = array(
			"projects list"=>"https://api.joaobelo.pt/projects",
			"project"=>"https://api.joaobelo.pt/projects/{project_id}",
			"highlights list"=>"https://api.joaobelo.pt/highlights",
			"highlights"=>"https://api.joaobelo.pt/highlights/{highlight_id}",
			"social list"=>"https://api.joaobelo.pt/social"
		);
		echo json_encode($json_content, JSON_PRETTY_PRINT);

	// if first param isn't found as a table name
	} elseif (!$result) {
		$errorMessage = "Wrong path";
		http_response_code(404);
		// die(mysqli_error());

	// if second param isn't an id in the table
	} elseif( mysqli_num_rows($result) < 1 ) {
		$errorMessage = "Nothing was found";

	// show results - if key was not defined, expect multiple objects, use []
	} else {
		if (!$key) echo '[';
		for ($i=0;$i<mysqli_num_rows($result);$i++) {
			echo ($i>0?',':'').json_encode(mysqli_fetch_object($result), JSON_PRETTY_PRINT);
		}
		if (!$key) echo ']';
	}

	// close mysql connection
	mysqli_close($link);

} elseif($method === 'POST') {
	$errorMessage = "POST service is not available";
} elseif($method === 'PUT') {
	$errorMessage = "PUT service is not available";
} elseif($method === 'DELETE') {
	$errorMessage = "DELETE service is not available";
} else {
	$errorMessage = "this service is not available";
}

if($errorMessage) {
	$json_content = array("message"=>$errorMessage, "Available options"=>"https://api.joaobelo.pt");
	echo json_encode($json_content, JSON_PRETTY_PRINT);
}
