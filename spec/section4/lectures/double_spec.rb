'''
Some complex objects can not be tested in isolation. This is where mocks come into game.

.double() creates an stand-in object for other objects.
In RSpec, we can test these strong coupled objects independently using doubles.
'''

RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    # 'Ouch' is the returned value
    # stuntman = double('Mr. Orange', { fall_off_ladder: 'Ouch', light_on_fire: true })
    # expect(stuntman.fall_off_ladder).to eq('Ouch')
    # expect(stuntman.light_on_fire).to eq(true)

    # or
    stuntman = double('Mr. Danger')
    # if we don't provide a return value, then the return value will be nil
    allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')
    expect(stuntman.fall_off_ladder).not_to be_nil
  end
end