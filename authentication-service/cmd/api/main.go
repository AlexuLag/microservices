package main

import "database/sql"

const wepPort = "80"

type Config struct {
	DB     *sql.DB
	Models data.Models
}

func main() {

}
