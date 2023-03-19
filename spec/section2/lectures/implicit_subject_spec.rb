'''
Subject instantiates a new object automatically, so there is no need
to use let in the example below.

For every new example subject creates a new object. But in one the object is memoized.

THE FUNNY THING: if you do "Hash" instead of Hash, then there will be an error, because
string is an object, and you can not instantiate an object from an object.
'''

RSpec.describe Hash do
  #let(:my_hash) { { Hash.new } }

  # one object
  it 'should start empty' do
    puts subject # {}
    puts subject.class # Hash

    expect(subject.length).to eq(0)
    subject[:some_key] = 'Some Value'
    expect(subject.length).to eq(1)
  end

  # a totally different object
  it 'is isolated between examples' do
    expect(subject.length).to eq(0)
  end
end