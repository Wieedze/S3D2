require_relative "../lib/caesar_cipher.rb" 

describe "caesar_cipher" do
  it "should take the string and convert it with the key of the cipher" do
    expect(caesar_cipher("a", 3)).to eq("d")
  end
  it "should take the string and convert it with the key of the cipher" do
    expect(caesar_cipher("Salut", 3)).to eq("Vdoxw")
  end
  it "should take the string and convert it with the key of the cipher" do
    expect(caesar_cipher("What a string", 5)).to eq("Bmfy f xywnsl")  
  end
it "should take the string and convert it with the key of the cipher" do
  expect(caesar_cipher("Hello Zen!!!", 10)).to eq("Rovvy Jox!!!")
  end
end