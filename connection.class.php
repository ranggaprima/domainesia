<?php
Class Database {
    private $settingEnv;
    public function __construct() {
        $this->getConnection();
    }

    private function getConnection() {
        $this->settingEnv = parse_ini_file("setting.php");
        
        $HOST = $this->settingEnv['HOST'];
        $USER = $this->settingEnv['USER'];
        $PASS = $this->settingEnv['PASS'];
        $DB = $this->settingEnv['DB'];
        
        $start;

        $connection = mysqli_connect($HOST, $USER, $PASS, $DB) or
        die("Connection failed: " . mysqli_connect_error());

        if (mysqli_connect_errno()) {
            printf("Connect failed: %s\n", mysqli_connect_error());
            exit();
        } else {
            $this->start = $connection;
		}
        return $this->start;
	}
}
?>