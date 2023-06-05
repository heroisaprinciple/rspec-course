"""
helper methods
"""

class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  def card
    Card.new('Ace', 'Shades')
  end

  it 'has a rank' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen' # is not saved anywhere, so tests will fail
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Shades')
  end
end