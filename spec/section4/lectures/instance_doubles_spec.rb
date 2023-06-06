'''
The problem with regular double is that we are adding some strange b method.
There is no b method in the Person class. And this can cause problems.
We are polluting the double object.
The better way is to write instance doubles with methods that are the same as
in the class. This is a verifying double.

instance_double will look through the double and compare its methods with
methods of the class. If there is some b method (in the double), then the test will fail.
'''

class Person
  def asd
    sleep(3)
    'hello'
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      #In this case, the double object person is created with the methods a and b,
      # which are defined with specific return values 'hello' and 20, respectively.
      person = double(asd: 'hello', b: 20)
      expect(person.asd).to eq('hello')
    end
  end

  describe 'an instance double' do
    it 'can only implement instance methods' do
      # here, Person == Person.new (RSpec is funny)
      # person = instance_double(Person, asd: 'hello')

      person = instance_double(Person)
      # expects asd method to have 2 args: 3 and 10. But there is 0.
      allow(person).to receive(:asd).with(3, 10).and_return('hello')
    end
  end
end