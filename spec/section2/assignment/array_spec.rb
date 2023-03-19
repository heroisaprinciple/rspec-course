"""
The second test example is going to fail as subject creates a new object for every example.

It will succeed only if we put subject << 'a' in the second example.
"""

RSpec.describe Array do
  context 'checks the length of subject' do
    it 'length is 0' do
      expect(subject.length).to eq(0)
      subject << 'a'
    end

    it 'length is 1' do
      expect(subject.length).to eq(1)
    end
  end
end