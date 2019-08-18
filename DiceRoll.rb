class DiceRoll
  def initialize(sides)
    @sides = sides
    menu
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
    total
  end
end

SIX_SIDED_DIE = Die.new(6)
EIGHT_SIDED_DIE = Die.new(8)
TEN_SIDED_DIE = Die.new(10)
TWENTY_SIDED_DIE = Die.new(20)

puts "We're rolling a six sided die!"
puts SIX_SIDED_DIE.roll

puts "Now we're rolling two 20 sided die twice!"
puts TWENTY_SIDED_DIE.roll(2)







def menuu
   
end
 
puts ""
puts ""
puts "                  $$$ RAISE YOUR HANDS FOR GOOD LUCK!!! $$$".clorize(:blue)
puts ""
puts ""
puts "take a shot to hit an odd numer with one die to win 15$!!"
sleep 2
puts ""
puts ""


puts "Rolling a 20 sided die, not one, but 2 of them!!! get over 25 to win $!!"
puts ""
puts ""

sleep 2
puts roll(20, 2)
if total >= 25
  puts "congratulaions!! you won!!"
  wallet = 25 + wallet
elsif total < 25
  puts "'(mocking cough)' YOU SUCK!"
  wallet = wallet - 25

end


def quit
  exit
end