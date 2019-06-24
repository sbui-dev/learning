package main

import "fmt"

// simple program that prints if a number is even or odd
func main() {
	arr := []int{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10}

	for _, element := range arr {
		if element%2 == 0 {
			fmt.Println(element, "is even")
		} else {
			fmt.Println(element, "is odd")
		}
	}
}
