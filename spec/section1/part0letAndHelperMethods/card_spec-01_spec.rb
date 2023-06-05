"""
before do runs before every example
If we use card, instead of @card, there would be undefined local variable
before hook is not a good practice
"""

class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  before do
    @card = Card.new('Ace', 'Shades')
  end

  it 'has a rank' do # identical to specify 'has a type' do
    expect(@card.rank).to eq('Ace')
  end

  it 'has a suit' do
    expect(@card.suit).to eq('Shades')
  end
end