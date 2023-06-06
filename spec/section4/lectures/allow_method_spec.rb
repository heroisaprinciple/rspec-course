RSpec.describe 'allow method review' do
  it 'can customize return value for methods on doubles' do
    calc = double
    # will return nil
    # allow(calc).to receive(:add)

    allow(calc).to receive(:add).and_return(15)
    expect(calc.add(3)).to eq(15)
  end

  it 'cam stub methods on real obj' do
    arr = [1, 2, 3]
    # mocked obj
    # In this part, an expectation is set that verifies the return value of arr.sum.
    # Since the sum method was stubbed to return 10, the expectation expects the return value of arr.sum to be 10.
    allow(arr).to receive(:sum).and_return(10)

    # real obj
    expect(arr.sum).to eq(10)

    arr << 4
    expect(arr).to eq([1, 2, 3, 4])
  end
end