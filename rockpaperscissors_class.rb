require 'pry'
require 'colorize'

class RockPaperScissors
  def initialize
    @arr = ["rock", "paper", "scissor"]

   @answer_arr = @arr.clone 
    puts "welcome to Rock, Paper, Scissors".colorize(:magenta)




