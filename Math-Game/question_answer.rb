class Q_A

  NUMBERS = [*1..20]
  PLAYER_COUNT = 2

  def startQA
    if @game_ongoing

      playerIndex = @current_round % PLAYER_COUNT
      currPlayer = @players[playerIndex]

      question_nums = NUMBERS.sample(2)
      p "#{currPlayer.name}, what is #{question_nums[0]} + #{question_nums[1]}?"

      if gets.chomp.to_i == question_nums[0] + question_nums[1]
        puts "Good job #{currPlayer.name}, Einstein would be proud.... \n \n ----------------- Next Round ----------------------"

      else
        currPlayer.lose_score
        p "#{currPlayer.name}, YOU HAVE FAILED!! Your score is #{currPlayer.score}/3."

        if currPlayer.score == 0
          playerIndex = (playerIndex + 1) % PLAYER_COUNT
          winner = @players[playerIndex]
          puts"
            |*****************************************************************************|
            |             Game ended, winners is: #{winner.name} with a score of #{winner.score}/3.                 |
            |*****************************************************************************|
            "

          @game_ongoing = false
        else
          puts "\n ----------------- Next Round ----------------------"
        end

      end

      @current_round += 1

      getQuestion
    end
  end

  def initialize(players)
    @players = players
    @current_round = 0
    @game_ongoing = true
  end

end
