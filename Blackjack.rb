class Blackjack
  def initialize
    @deck = Deck.new.shuffle_cards
    # @deck.shuffle_cards
    @user_hand = []
    @dealers_hand = []
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
      "J": 11,
      "Q": 12,
      "K": 13
    }
    menu

  end

  def menu
    puts "Welcome to the BlackJack table. Aces are low..."
    puts "Buy in is $5 dollars. You in? y/n"
    gets.strip == "y" ? game : exit
  end

  def game
    buy_in
    initial_deal
    display_hand
    win
  end

  def buy_in
    # subtract money from wallet here
  end

  def initial_deal
    @user_hand << @deck.pop
    @dealers_hand << @deck.pop
    @user_hand << @deck.pop
  end

  def display_hand
    @user_hand.each {|card| puts "You have a #{card.rank} of #{card.suit}."}
    hand_total(@user_hand)
  end

  def hand_total(array)
    @total = 0
    array.each {|card| @total += @card_values[:"#{card.rank}"]}
    puts "Total is #{@total}.".colorize(:cyan)
  end

  def winner_check
    if @hand_total == 21
      puts "Blackjack!"
      puts "Dealer has:"
      hand_total(@dealers_hand)
    
    end
  end

end