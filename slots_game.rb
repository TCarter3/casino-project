require_relative "wallet.rb"
require_relative "Blackjack.rb"
require_relative "Card.rb"
require_relative "Deck.rb"
require_relative "User.rb"

require_relative "slots_game.rb"
require 'pry'
require 'colorize'
require 'sounder'
# source "https://rubygems.org"

Sounder::System.set_volume 20 

# Sounder.play File.expand_path('../support/mysound.m4a', __FILE__)

# @sound = Sounder::Sound.new "../soundsfx/begin_slot.mp3"

class Slots
  

    def initialize

      @start_slots_sfx = Sounder::Sound.new "../soundsfx/begin_slot1.mp3"
        @slot_number = [1, 2, 3, 4, 5, 6, 7, 8, 9]
       
      puts `clear`
        puts "
        ____  _     ___ _____ ____  _ 
       / ___|| |   / _ \_   _/ ___|| |
       \___ \| |  | | | || | \___ \| |
        ___) | |__| |_| || |  ___) |_|
       |____/|_____\___/ |_| |____/(_)
                                      
      ".colorize(:yellow)
      
      @start_slots_sfx.play
      sleep(2)
      puts `clear`
      
      lever_pull
    end

def lever_pull
  scramble
  puts `clear`
  puts "
  ____  _     ___ _____ ____  _ 
 / ___|| |   / _ \_   _/ ___|| |
 \___ \| |  | | | || | \___ \| |
  ___) | |__| |_| || |  ___) |_|
 |____/|_____\___/ |_| |____/(_)
                                
".colorize(:yellow)
      puts "1) Pull Lever!"
      puts "Wallet: [#{@wallet}]"
      puts "Bet: $"
      puts "Type 'quit' to EXIT GAME"
      choice = gets.strip

      case choice
      when "1"
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
    puts "YOU WIN!!".colorize(:red)
    sleep(3)
    puts "\e[H\e[2J"
    lever_pull
  else
    sleep(1)
    lever_pull
  end

end

def slot_animation
  scramble
  puts "[#{@random_slot1}]   [#{@random_slot2}]   [#{@random_slot3}]"
  sleep (0.2)
  puts "\e[H\e[2J"
  scramble
  puts "[#{@random_slot1}]   [#{@random_slot2}]   [#{@random_slot3}]"
  sleep (0.2)
  puts "\e[H\e[2J"
  scramble
  puts "[#{@random_slot1}]   [#{@random_slot2}]   [#{@random_slot3}]"
  sleep (0.2)
  puts "\e[H\e[2J"
  scramble
  puts "[#{@random_slot1}]   [#{@random_slot2}]   [#{@random_slot3}]"
  sleep (0.2)
  puts "\e[H\e[2J"
  scramble
  puts "[#{@random_slot1}]   [#{@random_slot2}]   [#{@random_slot3}]"
  sleep (0.2)
  puts "\e[H\e[2J"
  scramble
  puts "[#{@random_slot1}]   [#{@random_slot2}]   [#{@random_slot3}]"
  sleep (0.2)
  puts "\e[H\e[2J"
  scramble
  puts "[#{@random_slot1}]   [#{@random_slot2}]   [#{@random_slot3}]"
  sleep (0.2)
  puts "\e[H\e[2J"
  scramble
  puts "[#{@random_slot1}]   [#{@random_slot2}]   [#{@random_slot3}]"
  sleep (0.2)
  puts "\e[H\e[2J"
  
  puts "[#{@random_slot1}]  [#{@random_slot2}]  [#{@random_slot3}]"
  slot_math

  lever_pull
end

def place_bet
  puts "
  ____  _     ___ _____ ____  _ 
 / ___|| |   / _ \_   _/ ___|| |
 \___ \| |  | | | || | \___ \| |
  ___) | |__| |_| || |  ___) |_|
 |____/|_____\___/ |_| |____/(_)
                                
".colorize(:yellow)

puts "Place your bet:"
print "$"
@slot_bet = gets.to_i


end