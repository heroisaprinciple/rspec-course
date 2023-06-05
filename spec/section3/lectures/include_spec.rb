'''
include() will test whether substring is included in the string or not
'''

RSpec.describe 'include matcher' do
  describe 'hot chocolate' do
    it 'checks for substring inclusion' do
      expect(subject).to include('hot')
      expect(subject).to include('choc')
      expect(subject).to include('late')
    end

    it { is_expected.to include('choc') }
  end

  describe ([10, 20, 30]) do
    it { is_expected.to include(10) }
    it { is_expected.to include(10, 30) }
  end

  describe ({ a: 2, b: 4}) do
    it { is_expected.to include(:b) }
    it { is_expected.to include(b: 4) }
  end
end