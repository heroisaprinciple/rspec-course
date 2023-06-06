'''
Using the allow method, give the double a read method that returns the value "Romeo and Juliet".

Using the allow method, give the double a write method that returns the value false.
'''

RSpec.describe 'File System' do
  it 'checks for double' do
    fs = double({ read: 'Romeo and Juliet'})
    allow(fs).to receive(:write).and_return(false)
  end
end