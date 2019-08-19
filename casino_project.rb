
require_relative "Blackjack.rb"
require_relative "Card.rb"
require_relative "Deck.rb"
require_relative "User.rb"
require_relative "Wallet.rb"
require_relative "slots_game.rb"
require_relative "rps.rb"
# require_relative "DiceRoll.rb"
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
        puts "6. Add Money"

        case gets.to_i
        when 1
            RPS.new(@user)
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
            puts "Enter amount you'd like to add:"
            print "> "
            @amount = gets.to_i
            @user.wallet.amount += @amount
            puts "\nYou've added $#{@amount}.".colorize(:magenta)
            puts "You now have $#{@user.wallet.amount}. Don't spend it all in one place!".colorize(:magenta)
            menu
        else
            puts "Invalid Input".colorize(:red)
            sleep(2)
        end
    end
end

Casino.new()