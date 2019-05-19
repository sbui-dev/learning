package main

import (
	"fmt"
	"io/ioutil"
	"os"
	"strings"
)

// Create a new type of deck which is a slice of strings
type deck []string

// create a new deck of playing cards
func newDeck() deck {
	cards := deck{}
	cardSuits := []string{"Spades", "Hearts", "Diamonds", "Clubs"}
	cardValues := []string{"Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"}

	for _, suit := range cardSuits {
		for _, value := range cardValues {
			cards = append(cards, value+" of "+suit)
		}
	}
	return cards
}

// Create a new deck of playing cards from a file
func newDeckFromFile(filename string) deck {
	bs, err := ioutil.ReadFile(filename)

	if err != nil {
		fmt.Println("Error:", err)
		os.Exit(1)
	}

	s := strings.Split(string(bs), ",")
	return deck(s)
}

// Deals
func deal(d deck, handSize int) (deck, deck) {
	return d[:handSize], d[handSize:]
}

// Prints the contents of the deck
func (d deck) print() {
	for i, card := range d {
		fmt.Println(i, card)
	}
}

// Returns a comma seperated string of the contents of the deck
func (d deck) toString() string {
	return strings.Join([]string(d), ",")
}

// Saves deck contents into a file
func (d deck) saveToFile(filename string) error {
	return ioutil.WriteFile(filename, []byte(d.toString()), 0666)
}
