require_relative 'player'
require_relative 'question_answer'

class Math_Game

  def self.run
    p1 = Player.new('P1')
    p2 = Player.new('P2')
    qa = Q_A.new([p1, p2])
    qa.startQA
  end

end

Math_Game.run
