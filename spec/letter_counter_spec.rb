#file: letter_counter_spec.rb

require 'letter_counter'

RSpec.describe LetterCounter do
    #test the initialation of LetterCounter with a text
    describe "#initialize" do
        it 'creates a new instance with the given text' do
            counter = LetterCounter.new("Test")
            expect(counter.instance_variable_get(:@text)).to eq("Test")
        end
    end
    #test the calculate_most_commom method
    describe "#calculate_most_common" do
        it 'returns the most common letter and its count' do
            counter = LetterCounter.new("Digital Punk")
            expect(counter.calculate_most_common).to eq([2, "i"])
        end
    end
end

