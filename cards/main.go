package main

import "fmt"

func main() {
	fmt.Println("Creating new deck")
	cards := newDeck()
	cards.shuffle()
	cards.print()

	fmt.Println("Dealing a hand of 5")
	hand, remainingDeck := deal(cards, 5)
	hand.print()

	fmt.Println("Remaining cards in deck")
	remainingDeck.print()
}
