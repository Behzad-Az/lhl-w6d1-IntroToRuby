require_relative 'player'
require_relative 'question_answer'

class Math_Game

  def self.run
    playerCount = ARGV[0].to_i
    playerScore = ARGV[1].to_i
    players = []

    for i in 1..playerCount
      player = Player.new("P#{i}", playerScore)
      players.push(player)
    end

    qa = Q_A.new(players)
    qa.startQA
  end

end

Math_Game.run
