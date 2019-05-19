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
	jane := person{"Jane", "Smith", contactInfo{"js@gmail.com", 22200}}
	fmt.Println(jane)

	alex := person{firstName: "Alex", lastName: "Smith"}
	fmt.Println(alex)

	var john person
	john.firstName = "John"
	john.lastName = "Smith"
	fmt.Println(john)

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

func (pointerToPerson *person) updateName(newFirstName string) {
	(*pointerToPerson).firstName = newFirstName
}

func (p person) print() {
	fmt.Printf("%+v", p)
}
