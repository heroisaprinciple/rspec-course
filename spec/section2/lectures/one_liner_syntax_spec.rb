'''
One liner syntax provided means that RSpec will generate the text automatically for it block.
The result:

  with classic syntax
    should equal 5
  with one-liner sytax
    is expected to eq 5

If we are to change is_expected to should, then the result will be the same.
But it ONLY WORKS WITH SUBJECTS, NOT LETS. So, the second test will refer to the subject above.
'''

RSpec.describe 'shorthand syntax' do
  subject { 5 }
  # let(:n) { 5 }

  context 'with classic syntax' do
    it 'should equal 5' do
      expect(subject).to eq(5)
    end
  end

  context 'with one-liner sytax' do
    it { is_expected.to eq(5) }
  end
end