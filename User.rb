class User
  attr_accessor :wallet
  attr_reader :user_name

  def initialize(user_name)
    @user_name = user_name
    @wallet = Wallet.new()

  end
end