
require 'pry'
require 'colorize'
require 'sounder'

class Wallet
  attr_accessor :amount

  def initialize
  # random generation of contents from $1 to $1000
      @amount = rand(1000) + 1
      
  end
end