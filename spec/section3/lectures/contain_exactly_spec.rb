RSpec.describe 'contain_exactly matcher' do
  subject { [1, 2, 3] }

  describe 'long form syntax' do
    it 'should check for the presence of all els' do
      expect(subject).to contain_exactly(1, 2, 3)
      # we don't care about the order
      expect(subject).to contain_exactly(2, 1, 3)
      expect(subject).to contain_exactly(3, 2) # failure
    end
  end
end