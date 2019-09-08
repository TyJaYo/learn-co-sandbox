def shuffled_shoe # Returns a "shoe" array filled with 208 shuffled "card" arrays, each with a value and suit.
  
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
  
  shoe = [] # Establish a shoe in which to shuffle together multiple decks.
  
  4.times { deck_of_cards.each { |deck| shoe.push(deck) } } # Put four decks of unboxed cards in the shoe.
  
  shoe.shuffle! # Shuffle together all 208 cards from the 4 decks.
end









# puts "\u2660 \u2665	\u2666	\u2663"
# puts "♠	♥	♦	♣"
# puts "\u2664	\u2661	\u2662	\u2667"
# puts "♤	♡	♢	♧"
# _____
# |J