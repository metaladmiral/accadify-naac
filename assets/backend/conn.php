<?php

date_default_timezone_set("Asia/Kolkata");

class db {

    public function mconnect() {
        // main database connection function
        try {
            $conn = new PDO("mysql:host=localhost;dbname=u586615155_clone_attendfi", "u586615155_clone_attendfi", "f]!:|b#m0\$L");
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $conn;
        }
        catch(PDOException $e) {
            return $e->getMessage();
        }
    }
    public function cconnect($dbname) {
        //custom database connection function
        try {
            $conn = new PDO("mysql:host=localhost;dbname=$dbname", "u586615155_clone_attendfi", "f]!:|b#m0$L");
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $conn;
        }
        catch(PDOException $e) {
            return $e->getMessage();
        }
    }
}

