"""
let vs let!

introducing memoization (which is caching)

1) in different examples let instantiates a new card object, but cached in the same example
2) lazy loading. let is not going to be ran when RSpec starts, but RSpec creates it when let is called
3) let!() is the equal to before do hook

"""

class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  let(:card) { Card.new('Ace', 'Spades') }

  it 'has a rank' do
    # creating a brand new card object and saving it
    expect(card.rank).to eq('Ace')
    # using the saved object, there is caching
    card.rank = 'Queen'
    # using the saved object, there is caching
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    # invoking a brand new object
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error message' do
    pending # the example will be unsuccessful
    comparison = 'Spade'
    expect(card.suit).to eq(comparison), "Hey, I expected #{comparison}, but got #{card.suit} instead"
  end
end