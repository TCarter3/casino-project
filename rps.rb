require "colorize"

class RPS
  def initialize
     @arr = ["ROCK",
    "PAPER",
    "SCISSORS"
]
    @answer_arr = @arr.clone
     puts "ROCK PAPER SCISSORS".colorize(:orange)
    menu
  end
  def menu
    print "==================="
    print "ROCK PAPER SCISSORS"
    print "==================="
    puts "1) TYPE 1 TO ENTER THE GAME".colorize(:orange)
    puts "2) EXIT.".colorize(:red)
    choice = gets.to_i
    case choice
      when 1
        puts "ROCK PAPER OR SCISSORS".colorize(:magenta)
        choice2 = gets.strip
        choice2 == "Change" ? answer_options : answer
        menu
      when 2
        puts "GOODBYE".colorize(:red)
        exit
      else
        puts "TRY AGAIN".colorize(:red)
        menu    
    end
  end
    def answer
    puts @answer_arr.sample
  end
    
    def print_answers
    puts @answer_arr
    answer_options
  end
end

RPS = RPS.new