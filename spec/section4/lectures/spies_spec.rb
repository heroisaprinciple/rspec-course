"""
Mocks: Mocks are objects that have pre-defined expectations about the messages they will receive.
You set up expectations on the mock object's methods and specify the desired return values or behaviors.
Mocks are typically used to verify that specific methods are called with the expected arguments during a test.
They focus on behavior verification.

Spies: Spies are objects that 'spy' on existing objects or classes and allow you to observe the
messages (method calls) that are sent to them. Spies do not have pre-defined expectations like mocks.
They simply record information about the interactions that occur.
Spies are useful when you want to observe and verify the behavior of an object or class without
modifying its implementation.
"""

RSpec.describe 'spies' do
  let(:animal) { spy('animal') }

  it 'confirms that the message is received' do
    # if it was an ordinary spec
    # expect(animal).to receive(:eat_food)
    # animal.eat_food

    animal.eat_food
    expect(animal).to have_received(:eat_food)
  end

  it 'resets between examples' do
    expect(animal).not_to have_received(:eat_food)
  end

  it 'retains the same functionality of a regular double' do
    animal.eat_food
    animal.eat_food
    animal.eat_food('sushi')
    expect(animal).to have_received(:eat_food).exactly(3).times
    expect(animal).to have_received(:eat_food).at_least(3).times
    expect(animal).to have_received(:eat_food).with('sushi')
    expect(animal).to have_received(:eat_food).once.with('sushi')
  end
end