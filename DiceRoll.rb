require "colorize"
class Die
  def initialize(sides)
    @sides = sides
    menu
  end

  def menu 
    puts ""
    puts ""
    puts "                  $$$ RAISE YOUR HANDS FOR GOOD LUCK!!! $$$" .colorize(:blue)
    puts ""
    puts ""
    puts "1 to roll dice"
    puts ""
    puts "2 to exit"
    input = gets.strip

    case input
    when "1"
      dicerollmenu
    when "2"
      exit
    else puts "invalid input, please try again"
      menu
    end
end

  def dicerollmenu
    puts ""
    puts "what number sided die would you like to roll today?"
    puts ""
    puts "the bigger the die number, the more you can win!!!"
    puts ""

    @listdice = ["6 sided die", "8 sided die", "10 sided die", "20 sided die", "return to main menu"]
    @listdice.each_with_index do |poop, index|
      puts "#{index + 1}. #{poop}"
      puts ""
      
    end


    caseboy = gets.to_i 
    if caseboy == 1
      @sides=6
    elsif caseboy == 2
      @sides=8
    elsif caseboy == 3
      @sides=10
    elsif caseboy == 4
      @sides=20
    elsif caseboy == 5
      menu
    else puts "invalid input, pls pick a number" 
    end
    roller 

    

  end

  def generate_die_roll
    rand(@sides) + 1
  end

  def roll(number=1)
    roll_array = []
    number.times do
      roll_array << generate_die_roll
    end
    total = 0
    roll_array.each do |roll|
      new_total = total + roll
      total = new_total
    end
    print total
    return total
  end


  def roller

    if @sides == 6
      puts ""
        puts "We're rolling a six sided die!"
        sleep 1
        puts "."
        sleep 1
        puts "."
        sleep 1
        puts "."
        poop = roll
      
        if poop > 3 
          puts ""
        puts "you won!! congratulations! here is 3 Dollars!"
        #wallet.push(3)
       elsif 
        
        puts "better luck next time!! 3 dollars lost!"
        # wallet.push(-3)
       end
       

    elsif @sides == 8
      puts ""
          puts "8 sided die baby!!!!"
          sleep 1
        puts "."
        sleep 1
        puts "."
        sleep 1
        puts "."
         poop = roll
          
          if poop > 4
            puts ""
          puts "you won!! congratulations! here is 5 Dollars!"
           # wallet.push(4)
          
          elsif 
           
            puts "better luck next time!! 4 dollars down the drain, thats a large oreo mcflurry you could have had!"
           # wallet.push(4)
          end
          

    elsif @sides == 10
      puts ""
        puts "10 sided die, kiss it for good luck!!!"
        sleep 1
        puts "."
        sleep 1
        puts "."
        sleep 1
        puts "."
        
        poop = roll
        if poop > 5
          puts ""
        puts "you won!! congratulations! here is 10 Dollars!"
        # wallet.push(5)
        elsif 
         
        puts "better luck next time!! Thats a loss of 5 bucks"
        # wallet.push(5)
        end
        
      

    elsif @sides == 20
      puts ""
      puts "Now we're rolling a 20 sided die for big bucks, if you roll higher than 15 you win $100!!!"
      sleep 1
        puts "."
        sleep 1
        puts "."
        sleep 1
        puts "."

      poop = roll
      if poop > 15
        puts ""
      puts "you won!! congratulations! here is 100 Dollars!"
      #wallet.push(100)
      elsif

    
      puts "ooooo bummer!! You lose 20!"
      #wallet.push(-20)
      end
      
    end
    menu
    end
end

SIX_SIDED_DIE = Die.new(6)
EIGHT_SIDED_DIE = Die.new(8)
TEN_SIDED_DIE = Die.new(10)
TWENTY_SIDED_DIE = Die.new(20)


