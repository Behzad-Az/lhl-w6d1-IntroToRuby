class Player
  attr_accessor :name, :score, :starting_score

  def initialize(name, starting_score)
    @name = name
    @starting_score = starting_score
    @score = starting_score
  end

  def lose_score
    @score -= 1
  end

end
