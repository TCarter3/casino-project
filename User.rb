require_relative "Deck.rb"
require_relative "User.rb"
require_relative "wallet.rb"
require_relative "slots_game.rb"
require_relative "casino_project.rb"
# require_relative "DiceRoll.rb"
# require_relative "rockpaperscissors_class.rb"
require 'pry'
require 'colorize'
require 'sounder'

class User
  attr_accessor :wallet
  attr_reader :user_name

  def initialize(username)
    @user_name = username
    @wallet = Wallet.new(gets.strip)

  end
end