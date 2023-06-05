class HotChocolate
  def drink
    'Delicioud'
  end

  def discard
    'Plop!'
  end

  def purchase(number)
    "Wow, I bought #{number} hot chocolate beverages!"
  end
end

class Coffee
  def drink; end
  def discard; end
  def purchase(number); end
end

RSpec.describe HotChocolate do
  it 'confirms that an object can respond to a method' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:drink, :discard)
  end

  it 'confirms an obj can respond to a method with args' do
    expect(subject).to respond_to(:purchase)
    expect(subject).to respond_to(:purchase).with(1).arguments
  end

  it { is_expected.to respond_to(:purchase, :discard) }
  it { is_expected.to respond_to(:purchase).with(1).arguments }
end

