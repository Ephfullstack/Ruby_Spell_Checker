require "Spell"

describe Spell do

    before(:each) do 
        @Spell = Spell.new
    end

    it 'returns currently spelled word as it is' do

        expect(@Spell.check("Hello")).to eq "Hello"

    end 
    
end