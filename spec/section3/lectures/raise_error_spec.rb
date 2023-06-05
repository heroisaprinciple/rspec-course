RSpec.describe 'raise_error matcher' do
  def asd
    x
  end

  class CustomError < StandardError; end

  it 'can check for any error' do
    expect { asd }.to raise_error(NameError)
  end

  it 'can check for a user-created error' do
    expect { raise CustomError }.to raise_error(CustomError)
  end
end