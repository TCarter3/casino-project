
require_relative "Blackjack.rb"
require_relative "Card.rb"
require_relative "Deck.rb"
require_relative "wallet.rb"
require_relative "slots_game.rb"
# require_relative "DiceRoll.rb"
# require_relative "rockpaperscissors_class.rb"
require 'pry'
require 'colorize'
require 'sounder'

class Casino

    def initialize
        puts "$$$ CASINO GAMES! $$$".colorize(:yellow)
        puts "- Please select a game:"
        puts "1. Rock Paper Scissors"
        puts "2. Dice Roll"
        puts "3. Blackjack"
        puts "4. Slots"
        puts "5. Exit"
        puts "6. Add Money"
        choice = gets.to_i

        case choice
        when 1
            RockPaperScissors.new()
        when 2
            DiceRoll.new()
        when 3
            Blackjack.new()
        when 4
            Slots.new()
        when 5
            exit
        when 6
            Wallet.new()
        else
            puts "Invalid Input".colorize(:red)
            sleep(2)
        end


    end
        
end

Casino.new()