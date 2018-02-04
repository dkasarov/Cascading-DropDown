<?php

class DB_Conn {
	private $DB = "diplomna";
	private $user = "";
	private $pass = "";
	private $server = "localhost";
	
	public function connect(){
		$conn = new mysqli($this->server, $this->user, $this->pass, $this->DB);
		return $conn;
	}
}

class DB_Handler {
	private $db = null;
	public function __construct(){
		$this->db = new DB_Conn();
	}
	
	public function get($query){
		$conn = $this->db->connect();
		$result = $conn->query($query) or die($conn->error.__LINE__);
		$data = array();
		if($result->num_rows > 0){
			while($row = $result->fetch_assoc()){ 
				$data[] = $row;
			}
		}
		$conn->close();
		return $data;
	}
}