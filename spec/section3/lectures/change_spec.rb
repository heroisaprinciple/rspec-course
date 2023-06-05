'''
...change { subject.length }.from(3).to(4) is good.
But if we are to add one more num to the arr, then, the test will break.
It would be better to use:
...change { subject.length }.by(1)
'''

RSpec.describe 'change matcher' do
  subject { [1, 2, 3] }

  it 'checks that a method changes object state' do
    # expect { subject << 4 }.to change { subject.length }.from(3).to(4)
    expect { subject << 4 }.to change { subject.length }.by(1)
  end

  # a better way
  it 'accepts negative args' do
    expect { subject.pop }.to change(subject, :length).by(-1)
  end
end