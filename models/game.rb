class Game

    RESULT = {"rock" => { "rock" => 0,
                          "paper" => -1,
                          "scissors" => 1},
              "paper" => { "rock" => 1,
                          "paper" => 0,
                          "scissors" => -1},
            "scissors" => { "rock" => -1,
                            "paper" => 1,
                            "scissors" => 0}}

  def self.play(hand1, hand2)
    winner = RESULT[hand1][hand2]
    case winner
    when 1 then return "PLAYER 1 WINS BY PLAYING #{hand1.upcase()}!!!!!!"
      when 0 then return "DRAW!"
      when -1 then return "PLAYER 2 WINS BY PLAYING #{hand2.upcase()}!!!!!!"
      else return "Invalid move!"
    end
  end

end
