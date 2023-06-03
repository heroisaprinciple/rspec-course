'''
Shared contexts allows us to extract the common business logic to outside blocks.
'''

RSpec.shared_context 'common' do
  before do
    @foods = []
  end

  def some_helper_method
    5
  end

  let(:var) { [1, 2, 3] }
end

RSpec.describe 'first example' do
  include_context 'common'

  it 'can use outside instance vars' do
    expect(@foods.length).to eq(0)
    @foods << 'sushi'
    expect(@foods.length).to eq(1)
  end

  it 'reuse instance variables across examples' do
    expect(@foods.length).to eq(0)
  end

  it 'can use shared helper methods' do
    expect(some_helper_method).to eq(5)
  end
end

RSpec.describe 'second example' do
  include_context 'common'

  it 'can use shared let variables across examples' do
    expect(var).to eq([1, 2, 3])
  end

end
