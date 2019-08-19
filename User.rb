# require_relative "Deck.rb"
# # require_relative "User.rb"
# require_relative "Wallet.rb"
# require_relative "slots_game.rb"
# require_relative "casino_project.rb"
# require_relative "DiceRoll.rb"
# require_relative "rockpaperscissors_class.rb"
require 'pry'
require 'colorize'
require 'sounder'

class User
  attr_accessor :wallet
  attr_reader :user_name

  def initialize(user_name)
    @user_name = user_name
    @wallet = Wallet.new()

  end
end