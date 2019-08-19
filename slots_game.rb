require_relative "wallet.rb"
require 'pry'
require 'colorize'
require 'sounder'
# source "https://rubygems.org"

Sounder::System.set_volume 20 

# Sounder.play File.expand_path('../support/mysound.m4a', __FILE__)

# @sound = Sounder::Sound.new "../soundsfx/begin_slot.mp3"

class Slots
  

    def initialize
      @sound = Sounder::Sound.new "../soundsfx/begin_slot1.mp3"
        @slot_number = [1, 2, 3, 4, 5, 6, 7, 8, 9]
       
      puts `clear`
        puts "
        ____  _     ___ _____ ____  _ 
       / ___|| |   / _ \_   _/ ___|| |
       \___ \| |  | | | || | \___ \| |
        ___) | |__| |_| || |  ___) |_|
       |____/|_____\___/ |_| |____/(_)
                                      
      ".colorize(:yellow)
      
      @sound.play
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
      puts "Type 'quit' to EXIT GAME"
      choice = gets.strip

      case choice
      when "1"
        puts "[#{@random_slot1}]  [#{@random_slot2}]  [#{@random_slot3}]"
        print slot_math
  
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
    sleep(4)
    lever_pull
elsif @random_slot2 == @random_slot3
    puts "Good!"
    sleep(4)
    lever_pull
elsif @random_slot1 == @random_slot2 && @random_slot2 == @random_slot3
    puts "YOU WIN!!".colorize(:red)
    sleep(4)
    clear
    lever_pull
  else
    sleep()
    lever_pull
  end

end