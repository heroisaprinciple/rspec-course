class Deck
  def self.build
    # some business logic
  end
end

class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
  it 'can implement only those methods that are defined on the class' do
    # Failure/Error: class_double(Deck, build: ['Ace', 'Queen'], shuffle: ['Queen', 'Ace'])
    # the Deck class does not implement the class method: shuffle
    class_double(Deck, build: ['Ace', 'Queen'], shuffle: ['Queen', 'Ace'])
  end
end