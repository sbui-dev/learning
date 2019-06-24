package main

import "fmt"

type contactInfo struct {
	email   string
	zipCode int
}

// struct on be embeded in another struct
type person struct {
	firstName string
	lastName  string
	contact   contactInfo
}

func main() {
	// different ways to create a struct

	// method 1
	jane := person{"Jane", "Smith", contactInfo{"js@gmail.com", 22200}}
	fmt.Println(jane)

	// method 2
	alex := person{firstName: "Alex", lastName: "Smith"}
	fmt.Println(alex)

	// mehtod 3
	var john person
	john.firstName = "John"
	john.lastName = "Smith"
	fmt.Println(john)

	// same as 2
	jim := person{
		firstName: "Jim",
		lastName:  "Boe",
		contact: contactInfo{
			email:   "jim@gmail.com",
			zipCode: 93000,
		},
	}

	jim.updateName("Joe")
	jim.print()
}

// a go shortcut to let func call with a pointer
func (pointerToPerson *person) updateName(newFirstName string) {
	(*pointerToPerson).firstName = newFirstName
}

func (p person) print() {
	fmt.Printf("%+v", p)
}
