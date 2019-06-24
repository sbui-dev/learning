package main

import "fmt"

type triangle struct {
	height float64
	base   float64
}
type square struct {
	side float64
}

type shape interface {
	getArea() float64
}

func main() {
	t := triangle{7, 5}
	printArea(t)

	s := square{5}
	printArea(s)
}

// getArea implementation for triangle
func (t triangle) getArea() float64 {
	return ((t.height * t.base) / 2)
}

// getArea implementation for square
func (s square) getArea() float64 {
	return s.side * s.side
}

// prints out the area of input shape
func printArea(s shape) {
	fmt.Println(s.getArea())
}
