def shuffled_shoe(number_of_decks = 6) # Returns a "shoe" array filled with 312 shuffled "card" arrays, each with a value and suit.
  deck_of_values  = []  # A place in which to repeatedly collect the thirteen card values.
  deck_of_suits   = []  # A place in which to establish thirteen instances of each suit.
  
  4.times do                        # For each of the four suits,
    (1..13).map do |c|              # count out thirteen cards.
      if c == 1                     # Make the first one 
        deck_of_values.push("A")    # an ace.
      elsif c <= 10                 # Make the next nine of them 
        deck_of_values.push(c.to_s) # the same value as their count order.
      elsif c == 11                 # Make the eleventh one
        deck_of_values.push("J")    # a Jack.
      elsif c == 12                 # Make the twelfth one
        deck_of_values.push("Q")    # a Queen.
      elsif c == 13                 # Make the thirteenth one
        deck_of_values.push("K")    # a King.
      end
    end
  end
  
  13.times do deck_of_suits << "C" end # Make thirteen Clubs in a row.
  13.times do deck_of_suits << "D" end # Make thirteen Diamonds in a row.
  13.times do deck_of_suits << "H" end # Make thirteen Hearts in a row.
  13.times do deck_of_suits << "S" end # Make thirteen Spades in a row.
  
  deck_of_cards = deck_of_values.zip(deck_of_suits) # Assign suits to the four groups of cards.
  
  pile = [] # Establish a pile in which to shuffle together multiple decks.
  
  number_of_decks.times { deck_of_cards.each { |deck| pile.push(deck) } } # Put decks of unboxed cards in a pile.
  
  stack = pile.shuffle! # Shuffle together all cards from all decks.
  
  puts "Would you like to cut the deck?"
  if gets.strip[0]&.downcase == y
    puts "About how many cards would you like to take off the top?"
    cut = gets.strip.to_i - 5 + rand(10)
    
  ##give player option to cut
  ##insert shuffle card 60-75 cards from bottom
  
end

class Shoe
  def instantiate(decks)
    @shoe = shuffled_shoe(decks)
  end
  
  def deal
     dealt_card = @shoe.pop
    

shoe = shuffled_shoe

def valid_bet?(bet)
  bet.between?(2, 500) && bet < 

def betting
  puts "Bet?"
  print "$"
  bet = gets.strip
  if valid_bet?(bet)