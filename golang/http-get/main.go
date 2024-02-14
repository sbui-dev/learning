package main

import (
	"fmt"
	"io"
	"log"
	"net/http"
	"sync"
	"time"
)

func httpGet(myURL string) string {
	logFunc(fmt.Sprintf("GET %s", myURL))
	resp, err := http.Get(myURL)
	if err != nil {
		log.Fatal("error sending get")
	}
	body, err := io.ReadAll(resp.Body)
	if err != nil {
		log.Fatal("error reading body")
	}

	return string(body)
}

func httpGetParallel(urls []string) []string {
	var wg sync.WaitGroup
	var allResponse []string
	for _, url := range urls {
		wg.Add(1)
		go func(url string) {
			resp := httpGet(url)
			allResponse = append(allResponse, resp)
			defer wg.Done()
		}(url)
	}
	wg.Wait()
	return allResponse
}

func httpGetSerial(urls []string) []string {
	var allResponse []string
	for _, url := range urls {
		resp := httpGet(url)
		allResponse = append(allResponse, resp)
	}
	return allResponse
}

func logFunc(message string) {
	now := time.Now().Format("17:06:06.0")
	fmt.Printf("[%s] %s\n", now, message)
}

func main() {
	urls := []string{
		"https://httpbin.org/delay/1",
		"https://httpbin.org/delay/2",
		"https://httpbin.org/delay/1",
	}

	logFunc("Trying httpGetParallel...")
	resp := httpGetParallel(urls)
	fmt.Printf("Got responses: %s\n", resp)

	logFunc("Trying httpGetSerial...")
	resp = httpGetSerial(urls)
	fmt.Printf("Got responses: %s\n", resp)
}
