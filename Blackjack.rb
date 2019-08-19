class Blackjack
  def initialize(user)
    @user = user
    @deck = Deck.new.shuffle_cards
    @users_hand = []
    @dealers_hand = []
    @dealers_hidden = []
    @card_values = {
      "A": 1,
      "2": 2,
      "3": 3,
      "4": 4,
      "5": 5,
      "6": 6,
      "7": 7,
      "8": 8,
      "9": 9,
      "J": 10,
      "Q": 10,
      "K": 10
    }
    @winnings = 0
    puts "Welcome #{@user.user_name}, to the BlackJack table. Aces are low...".colorize(:yellow)
    menu
  end

  def menu
    puts "Buy in is $5 dollars. You in? y/n".colorize(:yellow)
    print "> "
    if gets.strip == "y" 
      game
    else
      puts "Leaving the blackjack table..."
    end
  end

  def game
    buy_in
    initial_deal
    play_hand
  end

  def buy_in
    # subtract money from wallet here
    if @user.wallet.amount >= 5
      @user.wallet.amount -= 5
      puts "You have #{@user.wallet.amount} left..."
    else
      puts "You do not have enough money to play at the table."
      puts "Returning to the main menu..."
    end
  end

  def initial_deal
    @users_hand << @deck.pop
    @dealers_hidden << @deck.pop
    deal
  end

  def display_user
    if @users_hand.length <= 0
      puts "There's nothing in the hand..."
    else
      puts
      @users_hand.each {|card| puts "You have a #{card.rank} of #{card.suit}."}
      @total = hand_total(@users_hand)
      puts "Your total is #{@total}.".colorize(:cyan)
    end
  end

  def display_dealer
    if @dealers_hand.length <= 0
      puts "There's nothing in the hand..."
    else
      puts
      @dealers_hand.each {|card| puts "Dealer has a #{card.rank} of #{card.suit}."}
      @total = hand_total(@dealers_hand)
      puts "The dealers total is #{@total}.".colorize(:cyan)
    end
  end

  def add_hidden_card
    puts "The dealer flips their first card face up..."
    @dealers_hand.push(@dealers_hidden)
  end

  def hand_total(array)
    @total = 0
    array.each {|card| @total += @card_values[:"#{card.rank}"]}
    return @total
  end

  def deal
    @users_hand << @deck.pop
    @dealers_hand << @deck.pop
  end

  def play_hand
    display_user
    puts
    display_dealer
    puts
    @user_total = hand_total(@users_hand)
    @dealer_total = hand_total(@dealers_hand)
    if @user_total == 21
      add_hidden_card
      if @user_total > @dealer_total
        @winnings += 10
        puts "Blackjack! Dealer lost! You won $#{@winnings}!".colorize(:green)
        # add to wallet here
      end
    elsif @dealer_total == 21
      puts "Dealer won! You lost!".colorize(:red)
      puts "You didn't when anything...".colorize(:red)
    elsif @user_total > 21
      puts "Your total is #{@user_total}, you lost!".colorize(:red)
      puts "You didn't when anything...".colorize(:red)
    elsif @dealer_total > 21
      @winnings = 20
      puts "Dealer busted! You won $#{@winnings}!".colorize(:green)
      # add to wallet here
    else
      puts "Hit or stay?"
      @choice = gets.strip.downcase
      case @choice
      when "hit"
        deal
        play_hand
      when "stay"
        @dealers_hand << @deck.pop
        play_hand
      else
        puts "invalid input"
        play_hand
      end
    end
  end
end