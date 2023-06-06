RSpec.describe 'DB' do
  it 'checks for successful db connection' do
    db = double({ connect: true, disconnect: 'Goodbye' })
    allow(db).to receive(:connect).and_return(true)
    expect(db.connect).to eq(true)
  end

  it 'check for non successful db connection' do
    db = double({ connect: true, disconnect: 'Goodbye' })
    allow(db).to receive(:disconnect).and_return('Goodbye')
    expect(db.disconnect).to eq('Goodbye')
  end
end