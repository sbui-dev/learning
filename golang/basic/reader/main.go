package main

import (
	"fmt"
	"io"
	"os"
)

func main() {

	// get filename from commandline arg
	filename := os.Args[1]

	// open file
	file, err := os.Open(filename)
	if err != nil {
		fmt.Println("Failed to open file:", filename)
		os.Exit(1)
	}

	// print content to screen
	io.Copy(os.Stdout, file)
}
