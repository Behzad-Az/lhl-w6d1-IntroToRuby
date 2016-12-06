class Q_A

  NUMBERS = [*1..20]

  def startQA
    if @game_ongoing

      playerIndex = @current_round % @players.length
      currPlayer = @players[playerIndex]

      question_nums = NUMBERS.sample(2)
      p "#{currPlayer.name}, what is #{question_nums[0]} + #{question_nums[1]}?"

      if STDIN.gets.chomp.to_i == (question_nums[0] + question_nums[1])
        puts "Good job #{currPlayer.name}, Einstein would be proud.... \n \n ----------------- Next Round ----------------------"

      else
        currPlayer.lose_score
        puts "#{currPlayer.name}, YOU HAVE FAILED!! Your score is #{currPlayer.score}/#{currPlayer.starting_score}. \n \n"

        if currPlayer.score == 0
          p "#{currPlayer.name} is out of the game..."
          @players.delete(currPlayer)
          @current_round = playerIndex - 1

          if @players.length == 1
            winner = @players[0]
            puts"
            |*****************************************************************************|
            |             Game ended, winners is: #{winner.name} with a score of #{winner.score}/#{winner.starting_score}.                 |
            |*****************************************************************************|
            "
            @game_ongoing = false
          else
            puts "\n ----------------- Next Round ----------------------"
          end

        end

      end

      # puts "asdasjdhkajsdhkajshdkasjhdkjahsdkjhas"
      @current_round += 1
      startQA
    end

  end

  def initialize(players)
    @players = players
    @current_round = 0
    @game_ongoing = true
  end

end
