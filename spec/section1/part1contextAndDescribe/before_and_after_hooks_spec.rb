'''
before(:example) runs before each example

after runs after each example

Before and after hooks are good to do smth faster and not create a brand new object, like with let.

Output:
Before context
Before example
After example
.Before example
After example
.After context

'''

RSpec.describe 'before and after hooks' do
  before(:context) do
    puts 'Before context'
  end

  after(:context) do
    puts 'After context'
  end

  before(:example) do
    puts 'Before example'
  end

  after(:example) do
    puts 'After example'
  end

  it 'expects a random example' do
    expect(5 * 4).to eq(20)
  end

  it 'expects a random example' do
    expect(3 - 2).to eq(1)
  end
end