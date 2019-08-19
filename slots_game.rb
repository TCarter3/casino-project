# require_relative "wallet.rb"
# require_relative "Blackjack.rb"
# require_relative "Card.rb"
# require_relative "Deck.rb"
# require_relative "User.rb"

# require_relative "slots_game.rb"
require 'pry'
require 'colorize'
require 'sounder'
# source "https://rubygems.org"

Sounder::System.set_volume 20 

# Sounder.play File.expand_path('../support/mysound.m4a', __FILE__)

# @sound = Sounder::Sound.new "../soundsfx/begin_slot.mp3"

class Slots
  

    def initialize(user)
      @slot_user = user
      

      @start_slots_sfx = Sounder::Sound.new "../soundsfx/begin_slot1.mp3"
      @pull_lever_sfx = Sounder::Sound.new "../soundsfx/pull_lever.mp3"
        @slot_number = [1, 2, 3, 4, 5, 6, 7, 8, 9]
       
      puts `clear`
        puts '

        _______   _         _______  _________  _______   _ 
        (  ____ \ ( \       (  ___  ) \__   __/ (  ____ \ ( )
        | (    \/ | (       | (   ) |    ) (    | (    \/ | |
        | (_____  | |       | |   | |    | |    | (_____  | |
        (_____  ) | |       | |   | |    | |    (_____  ) | |
              ) | | |       | |   | |    | |          ) | (_)
        /\____) | | (____/\ | (___) |    | |    /\____) |  _ 
        \_______) (_______/ (_______)    )_(    \_______) (_)
                                                        
        
                                      
      '.colorize(:yellow)
      
      @start_slots_sfx.play
      sleep(2)
      puts `clear`
      
      @slots_wallet = @slot_user.wallet.amount
      lever_pull
    end

def lever_pull
  
  scramble
  puts `clear`
  puts '

  _______   _         _______  _________  _______   _ 
  (  ____ \ ( \       (  ___  ) \__   __/ (  ____ \ ( )
  | (    \/ | (       | (   ) |    ) (    | (    \/ | |
  | (_____  | |       | |   | |    | |    | (_____  | |
  (_____  ) | |       | |   | |    | |    (_____  ) | |
        ) | | |       | |   | |    | |          ) | (_)
  /\____) | | (____/\ | (___) |    | |    /\____) |  _ 
  \_______) (_______/ (_______)    )_(    \_______) (_)
  
                                
'.colorize(:yellow)
      # @wallet = Wallet.new()
      puts "1) Pull Lever!"

      # wallet_math
      puts "Wallet: [$#{@slots_wallet}]"
      
      puts "Type 'quit' to EXIT GAME"
      choice = gets.strip

      case choice
      when "1"
        @pull_lever_sfx.play
        puts "\e[H\e[2J"
        puts slot_animation
        # puts "[#{@random_slot1}]  [#{@random_slot2}]  [#{@random_slot3}]"
        # print slot_animation
        # puts "\e[H\e[2J"
        # print slot_math
        
  
      when "quit"
        Casino.new()
      else
        puts "Nice try!"
      end

    end
  
end

def scramble
  @random_slot1 = @slot_number.sample
        @random_slot2 = @slot_number.sample
        @random_slot3 = @slot_number.sample
end

def slot_math
if @random_slot1 == @random_slot2
    puts "Nice!"
    
    sleep(3)
    lever_pull
elsif @random_slot2 == @random_slot3
    puts "Good!"
    
    sleep(3)
    lever_pull
elsif @random_slot1 == @random_slot2 && @random_slot2 == @random_slot3
    puts "YOU WIN!! + $10".colorize(:red)
    
    sleep(3)
    puts "\e[H\e[2J"
    lever_pull
  else
   
    puts "YOU LOSE!" 
    sleep(3)
    
    lever_pull
  end

end

def slot_animation
  scramble
  puts "[#{@random_slot1}]   [#{@random_slot2}]   [#{@random_slot3}]".colorize(:yellow)
  sleep (0.2)
  puts "\e[H\e[2J"
  scramble
  puts "[#{@random_slot1}]   [#{@random_slot2}]   [#{@random_slot3}]".colorize(:red)
  sleep (0.2)
  puts "\e[H\e[2J"
  scramble
  puts "[#{@random_slot1}]   [#{@random_slot2}]   [#{@random_slot3}]".colorize(:blue)
  sleep (0.2)
  puts "\e[H\e[2J"
  scramble
  puts "[#{@random_slot1}]   [#{@random_slot2}]   [#{@random_slot3}]".colorize(:green)
  sleep (0.2)
  puts "\e[H\e[2J"
  scramble
  puts "[#{@random_slot1}]   [#{@random_slot2}]   [#{@random_slot3}]".colorize(:yellow)
  sleep (0.2)
  puts "\e[H\e[2J"
  scramble
  puts "[#{@random_slot1}]   [#{@random_slot2}]   [#{@random_slot3}]".colorize(:red)
  sleep (0.2)
  puts "\e[H\e[2J"
  scramble
  puts "[#{@random_slot1}]   [#{@random_slot2}]   [#{@random_slot3}]".colorize(:blue)
  sleep (0.2)
  puts "\e[H\e[2J"
  scramble
  puts "[#{@random_slot1}]   [#{@random_slot2}]   [#{@random_slot3}]".colorize(:green)
  sleep (0.2)
  puts "\e[H\e[2J"
  scramble
  puts "[#{@random_slot1}]   [#{@random_slot2}]   [#{@random_slot3}]".colorize(:yellow)
  sleep (0.2)
  puts "\e[H\e[2J"
  scramble
  puts "[#{@random_slot1}]   [#{@random_slot2}]   [#{@random_slot3}]".colorize(:red)
  sleep (0.2)
  puts "\e[H\e[2J"
  scramble
  puts "[#{@random_slot1}]   [#{@random_slot2}]   [#{@random_slot3}]".colorize(:blue)
  sleep (0.2)
  puts "\e[H\e[2J"
  scramble
  puts "[#{@random_slot1}]   [#{@random_slot2}]   [#{@random_slot3}]".colorize(:green)
  sleep (0.2)
  puts "\e[H\e[2J"
  scramble
  puts "[#{@random_slot1}]   [#{@random_slot2}]   [#{@random_slot3}]".colorize(:yellow)
  sleep (0.2)
  puts "\e[H\e[2J"
 
 
  
  
  puts "[#{@random_slot1}]  [#{@random_slot2}]  [#{@random_slot3}]"
  slot_math

  lever_pull
end

#  @slot_user.wallet.amount

# def plus_5
#   @slot_user.wallet.amount + 5

# end
# def minus_5
#   @slot_user.wallet.amount - 5

# end
# def plus_10
#   @slot_user.wallet.amount + 10

# end

 



