'''
Using context and nested describes

To describe an object method, use "#name" naming,
to describe a class method, use ".name".

context and describe are identical, but using context is better
'''

RSpec.describe '#even? method' do
  # the first option
  # it 'returns true if num is even'

  # it 'returns false if num is odd'

  # the better approach is:
  describe 'with even num' do
    it 'returns true' do
      expect(4.even?).to eq(true)
    end
  end

  describe 'with odd num' do
    it 'returns false' do
      expect(5.even?).to eq(false)
    end
  end

  # the best approach
  context 'with even num' do
    it 'returns true' do
      expect(4.even?).to eq(true)
    end
  end

  context 'with odd num' do
    it 'returns false' do
      expect(5.even?).to eq(false)
    end
  end
end