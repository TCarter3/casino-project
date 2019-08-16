require_relative "BlackJack.rb"

require 'pry'
require 'colorize'
# require 'sounds'

class Casino

    def initialize
        puts "$$$ CASINO GAMES! $$$"
        puts "- Please select a game:"
        puts "1. Rock Paper Scissors"
        puts "2. Dice Roll"
        puts "3. Blackjack"
        puts "4. Slots"
        puts "5. Exit"
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
        else
            puts "Invalid Input".colorize(:red)
            sleep(2)
        end


    end
        
end

Casino.new()