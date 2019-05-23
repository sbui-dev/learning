package main

import (
	"fmt"
	"net/http"
	"time"
)

func main() {
	links := []string{
		"http://google.com",
		"http://facebook.com",
		"http://stackoverflow.com",
		"http://golang.org",
		"http://amazon.com",
	}

	// create a channel
	c := make(chan string)

	for _, link := range links {
		// go routine
		go checkLink(link, c)
	}

	// runs forever
	for l := range c {

		// function literal aka anon function
		go func(link string) {
			// sleep for 5 seconds
			time.Sleep(5 * time.Second)

			// l variable became link variable
			checkLink(link, c)
		}(l) // need to pass the l variable into function literal
	}
}

func checkLink(link string, c chan string) {

	_, err := http.Get(link)

	if err != nil {
		fmt.Println(link, "might be down!")
		c <- link
		return
	}

	fmt.Println(link, "is up")
	c <- link
}
