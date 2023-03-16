class ProgrammingLang
  attr_reader :name

  def initialize(name = 'Ruby')
    @name = name
  end
end

RSpec.describe ProgrammingLang do
  let(:language) { ProgrammingLang.new('Python') }

  it 'should store the name of lang' do
    expect(language.name).to eq('Python')
  end

  context 'with no argument' do
    # it will fail if uncomment, because it is expected to receive Ruby
    # let(:language) { ProgrammingLang.new('C++') }

    # it will pass as default arg is Ruby
    let(:language) { ProgrammingLang.new }

    # if I comment all let in the current block (which is context), the test will fail,
    # as it is going to upper level (which is let(:language) { ProgrammingLang.new('Python') }),
    # and Python is not Ruby.

    it 'should default to Ruby' do
      # it will look for let in the same block (in context here), but then if not found,
      # go to upper level, which is on 10th row
      expect(language.name).to eq('Ruby')
    end
  end
end