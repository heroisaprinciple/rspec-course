class ProfessionalWrestler
  attr_reader :name, :finishing_move

  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
  end
end

RSpec.describe 'have_attributes matcher' do
  describe ProfessionalWrestler.new('All Jackson', 'Stunner') do
    it 'checks for obj attributes are proper values' do
      # instead of {}, we can simply use () syntax (but it's still hash)
      expect(subject).to have_attributes(name: 'All Jackson', finishing_move: 'Stunner')
    end
  end
end