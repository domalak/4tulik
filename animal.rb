class Animal
  def initialize(start_count, pregnancy_time, grow_percent, freeze_percent)
    @count = start_count
    @pregnancy_time = pregnancy_time
    @pregnancy_count = 0
    @grow_percent = grow_percent
    @freeze_percent = freeze_percent
  end
  
  attr_accessor :count, :pregnancy_count
  attr_reader :pregnancy_time, :grow_percent, :freeze_percent
end