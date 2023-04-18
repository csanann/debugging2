#file: letter_counter.rb

#define a class named LetterCounter
class LetterCounter
    #defin the initialise method with a text parameter
    def initialize(text)
        #set a instance variable to given text parameter
        @text = text
    end
    #define a method that takes no parameters
    def calculate_most_common()
        #initialises the new Hash with 0,default value, for non-existing key
        counter = Hash.new(0)
        #initialises a variable with a value of nil
        most_common = nil
        #initialises a variable with a value of 0
        most_common_count = 0
        #iterate through each character in the text by using each do
        @text.chars.each do |char|
            #skip the current iteration if the character is not a letter
            next unless is_letter?(char)
            #increment the count by 1 for the character in the counter hash
            counter[char] += 1

            #check if the count for the current character is greater than the most_current_count
            if counter[char] > most_common_count
                #update the most_common with the current character
                most_common = char
                #update the most_common_count with the count for t he current character
                most_common_count = counter[char]
            end
        end

        #return an array with the most_common_count and the most_common character
        return [most_common_count, most_common]
    end

    #define a private method that take a single parameter letter
    private

    def is_letter?(letter)
        #return true if the letter matches the regular expression for letter, or else return false
        return letter =~ /[a-z]/i
    end
end

#create a new instance of the LetterCounter clas with the given text
counter = LetterCounter.new("Digital Punk")
#output the result after call the calculate_most_common method on the counter instance 
p counter.calculate_most_common

#intended output:
# [2, "i"]