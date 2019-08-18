class Blackjack
  def initialize
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
      "J": 11,
      "Q": 12,
      "K": 13
    }
    menu
  end

  def menu
    puts "Welcome to the BlackJack table. Aces are low...".colorize(:yellow)
    puts "Buy in is $5 dollars. You in? y/n".colorize(:yellow)
    gets.strip == "y" ? game : exit
  end

  def game
    buy_in
    initial_deal
    choice
  end

  def buy_in
    # subtract money from wallet here
  end

  def initial_deal
    @users_hand << @deck.pop
    @dealers_hidden << @deck.pop
    deal
    display_user
    puts
    display_dealer
    puts
  end

  def display_user
    if @users_hand.length <= 0
      puts "There's nothing in the hand..."
    else
      @users_hand.each {|card| puts "You have a #{card.rank} of #{card.suit}."}
      hand_total(@users_hand)
    end
  end

  def display_dealer
    @dealers_hand.each {|card| puts "Dealer has a #{card.rank} of #{card.suit}."}
    hand_total(@dealers_hand)
  end

  def add_hidden_card
    @dealers_hand.push(@dealers_hidden)
  end

  def hand_total(array)
    @total = 0
    array.each {|card| @total += @card_values[:"#{card.rank}"]}
    puts "Total is #{@total}.".colorize(:cyan)
  end

  def deal
    @users_hand << @deck.pop
    @dealers_hand << @deck.pop
  end

  def winner_check
    if @hand_total == 21
      puts "Blackjack!"
      puts "Dealer:"
      hand_total(@dealers_hand)
    
    end
  end

end