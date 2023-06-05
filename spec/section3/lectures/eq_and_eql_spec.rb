'''
eql will tell RSpec to look for the value as well as the data type.
eq just makes RSpec ignore it. eq tests only value.
equal/be will point to the same place in memory.

equal and be are the same thing.
Equality -> the same values
Identity -> when objects refer to the same memory cell


'''

RSpec.describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  describe 'eq matchers' do
    it 'tests for value and ignores the type' do
      expect(a).to eq(3)
      expect(b).to eq(3.0)
      expect(b).to eq(b)
    end
  end

  describe 'eql matchers' do
    it 'tests for value including same type' do
      expect(a).not_to eql(3)
      expect(b).not_to eql(3.0)
      expect(a).not_to eql(b)
    end
  end

  describe 'equal/be matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it 'cares about object identity' do
      expect(c).to eq(d)
      expect(c).to eql(d)

      expect(c).to equal(d) # leads to the failing test
      expect(c).to equal(e)

      expect(c).not_to equal(d)
      expect(c).not_to equal([1, 2, 3])
    end
  end
end