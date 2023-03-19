'''
You can use let instead of subjects.

And you can name subjects.
All tests here pass.
All tests reference to one subject - hash.
'''

RSpec.describe Hash do
  subject(:hash) do
    { a: 1, b: 2 }
  end

  # let(:bob) { { a: 1, b: 2 } }

  it 'has two key-val pairs' do
    expect(subject.length).to eq(2)
    expect(hash.length).to eq(2)
  end

  describe 'nested example' do
    it 'has two key-val pairs' do
      expect(subject.length).to eq(2)
      expect(hash.length).to eq(2)
    end
  end
end