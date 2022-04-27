import Foundation


enum Suits: String, CaseIterable {
    case heart = "heart"
    case diamond = "diamond"
    case club = "club"
    case spade = "spade"
}

enum Ranks: Int, CaseIterable {
    case one = 1, tow, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
}

struct Card: CustomStringConvertible {
    let suit: Suits
    let rank: Ranks
    
    var description: String {
        return "Suit: \(suit),\nRank: \(rank)"
    }
}

class Deck {
    var cards: [Card]?
    
    init() { }
    
    func createDeck() {
        var cards: [Card] = []
        Ranks.allCases.forEach { rank in
            Suits.allCases.forEach { suit in
                let card = Card(suit: suit, rank: rank)
                cards.append(card)
                self.cards = cards
            }
        }
    }
    
}

let deck = Deck()
deck.createDeck()

if let randomCard = deck.cards?.randomElement() {
    print(randomCard.description)
}
