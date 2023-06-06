'''
If we make The Deck class commented, then
as_stubbed_const means that RSpec will replace all calls to Deck with calls to deck double.
If we uncomment, then the same happens.
'''

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
    deck_class = class_double('Deck', build: ['Ace', 'Queen']).as_stubbed_const

    expect(deck_class).to receive(:build)
    subject.start
    expect(subject.cards).to eq(['Ace', 'Queen'])
  end
end