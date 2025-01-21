require_relative "../lib/multiples.rb" 

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(15)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end
  it "should return FALSE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(17)).to eq(false)
    expect(is_multiple_of_3_or_5?(23)).to eq(false)
    expect(is_multiple_of_3_or_5?(31)).to eq(false)
    expect(is_multiple_of_3_or_5?(4)).to eq(false)
  end
end

describe "sum_of_3_and_5_multiples" do
  it "should return the correct sum" do
    expect(sum_of_3_or_5_multiples(8)).to eq(14)
end
  it "should return the correct sum" do  
    expect(sum_of_3_or_5_multiples(16)).to eq(60)
end
  it "should return the correct sum" do
    expect(sum_of_3_or_5_multiples(24)).to eq(119)
end
  it "should return the correct sum" do
    expect(sum_of_3_or_5_multiples(32)).to eq(225)
end
  it "should return the correct sum" do
    expect(sum_of_3_or_5_multiples(312)).to eq(22683)
end
end 