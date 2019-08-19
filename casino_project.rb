
require_relative "Blackjack.rb"
require_relative "Card.rb"
require_relative "Deck.rb"
require_relative "User.rb"
require_relative "Wallet.rb"
require_relative "slots_game.rb"
# require_relative "DiceRoll.rb"
# require_relative "rockpaperscissors_class.rb"
require 'pry'
require 'colorize'
require 'sounder'

class Casino

    def initialize
        puts "What is your name?"
        print "> "
        @user = User.new(gets.strip)
        puts "\nWelcome to the Casino, #{@user.user_name}.".colorize(:cyan)
        puts "You have $#{@user.wallet.amount} in your wallet.".colorize(:cyan)
        puts "Good luck!".colorize(:cyan)
        menu

    end

    def menu
        puts "\n$$$ CASINO GAMES! $$$".colorize(:yellow)
        puts "- Please select a game:"
        puts "1. Rock Paper Scissors"
        puts "2. Dice Roll"
        puts "3. Blackjack"
        puts "4. Slots"
        puts "5. Exit"
<<<<<<< HEAD
        puts "6. Add Money"
        choice = gets.to_i
=======
        print "> "
>>>>>>> 150952d32e171c5581df618a8d6c9174a4443ee2

        case gets.to_i
        when 1
            RockPaperScissors.new()
        when 2
            DiceRoll.new()
        when 3
            Blackjack.new(@user)
            menu
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