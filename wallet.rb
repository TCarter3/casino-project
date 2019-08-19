class Wallet
  attr_accessor :amount

<<<<<<< HEAD
    def initialize
        puts "Put Money Into Your Account"
        print "$"
        @wallet = gets.to_i

        puts "$#{@wallet}"

        



        
    end

=======
  def initialize
  # random generation of contents from $1 to $1000
      @amount = rand(1000) + 1
      
  end
>>>>>>> 150952d32e171c5581df618a8d6c9174a4443ee2
end