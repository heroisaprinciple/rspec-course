'''
Output:

Before context
Before example
.INNER Before context
Before example
INNER Before example
.Before example
INNER Before example

'''

RSpec.describe 'nested hooks' do
  before(:context) do
    puts 'Before context'
  end

  before(:example) do
    puts 'Before example'
  end

  it 'does basic math' do
    expect(1 + 1).to eq(2)
  end

  context 'with condition a' do
    before(:context) do
      puts 'INNER Before context'
    end

    before(:example) do
      puts 'INNER Before example'
    end

    it 'does basic math INNER' do
      expect(1 + 1).to eq(2)
    end

    it 'does basic substraction' do
      expect(5 - 3).to eq(2)
    end
  end
end