package main

import "fmt"

func main() {

	// one way to create a map
	colors0 := map[string]string{
		"red":   "#ff0000",
		"green": "#00FF00",
		"white": "#ffffff",
	}
	fmt.Println(colors0)

	// first way to create a map
	var colors1 map[string]string
	fmt.Println(colors1)

	// second way to create a map
	colors2 := make(map[string]string)
	fmt.Println(colors2)

	// adding an element to the map
	colors2["white"] = "#ffffff"
	fmt.Println(colors2)

	// deleting an element of the map
	delete(colors2, "white")
	fmt.Println(colors2)

	printMap(colors0)
}

func printMap(c map[string]string) {
	// iterating through a map
	for color, hex := range c {
		fmt.Println("Hex code for", color, "is", hex)
	}
}
