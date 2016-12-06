class Player
  attr_accessor :name, :score

  STARTING_SCORE = 3

  def initialize(name)
    @name = name
    @score = STARTING_SCORE
  end

  def lose_score
    @score -= 1
  end

end
