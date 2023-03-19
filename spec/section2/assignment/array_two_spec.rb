"""
Two tests will be successful.
"""

RSpec.describe Array do
  context 'checks the length of subject' do
    subject(:sally) do
      ['one', 2]
    end

    it 'length is 2' do
      expect(subject.length).to eq(2)
      subject.pop
      expect(subject.length).to eq(1)
    end

    it 'length is equal to orig example' do
      expect(subject).to eq(['one', 2])
    end
  end
end