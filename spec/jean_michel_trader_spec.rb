#entré  =   un array de prix   

#sortie = un array de position 

# $15(day 1) - $3(day 4) == $12

require_relative "../lib/jean_michel_trader.rb" 

describe "day_trader" do
  it "should give the best day to buy and sell" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])   
  end
  it "should give the best day to buy and sell" do
    expect(day_trader([2, 5, 3, 6, 1, 2, 5, 9, 7])).to eq([4,7])    
  end
end 