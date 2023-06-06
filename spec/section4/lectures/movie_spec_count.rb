'''
Movie relies on the actor object. These two are so tightly coupled,
that the question appears: how do we test the movie in issolation?
How do we test an actor in isolation?

Movie does not care how actors do their job. All what movie cares about if
particular methods are exposed to actor.
Our goal is to separate movie class from actor class.
'''

class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    'I am so cool'
  end

  def fall_off_ladder
    "Call my agent!!! No way!!"
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      puts actor.act
      puts actor.fall_off_ladder
      puts actor.light_on_fire
      puts actor.act
    end
  end
end

# actor = Actor.new('Brad Pitt')
# movie = Movie.new(actor)
# movie.start_shooting

RSpec.describe Movie do
  let(:stuntman) { double('Mr. Danger', ready?: true, act: 'Any string at all', fall_off_ladder: 'Sure',
                          light_on_fire: true) }
  subject { described_class.new(stuntman) }

  describe '#start_shooting method' do
    it 'expects an actor to do 3 actions' do
      # expect(stuntman).to receive(:ready?)
      # expect(stuntman).to receive(:act)
      # expect(stuntman).to receive(:fall_off_ladder)
      # expect(stuntman).to receive(:light_on_fire)

      # we'll assert now that if one method is called more than once, the
      # test will fail
      expect(stuntman).to receive(:light_on_fire).once
      expect(stuntman).to receive(:fall_off_ladder).exactly(1).times
      # twice
      expect(stuntman).to receive(:act).twice
      subject.start_shooting
    end
  end
end