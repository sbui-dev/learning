package main

import (
	"fmt"
	"strings"
)

func wordCount(s string) map[string]int {
	m := make(map[string]int)
	f := strings.Fields(s)

	for _, element := range f {
		m[element]++
	}

	return m
}

func main() {
	fmt.Println(wordCount("dog cat doggy dogs dog cat cat"))
	fmt.Println(wordCount("green Green blue red red blue yellow"))
}
