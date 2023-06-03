'''
described_class gives a reference to current class being tested.
In essence, when a name of a class is changed, we should rename the name of the class anywhere in tests, so
it would be much less time-consuming to use described_class.
'''

class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe King do
  subject { described_class.new('William') }
  let(:louis) { described_class.new('Louis') }

  it 'represents a great person' do
    expect(subject.name).to eq('William')
  end
end