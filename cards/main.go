package main

func main() {
	cards := newDeck()
	//hand, remainingDeck := deal(cards, 5)

	cards.saveToFile("my_cards")
}
