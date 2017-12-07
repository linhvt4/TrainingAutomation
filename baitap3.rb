require 'cmath'
require 'matrix'
class MultiDimensionalArray
    attr_accessor :array
    def initialize_array array
        @array = Array.new(3, Array.new(3))

    end
    
    def collect_both_diagonal_elements
    (0...3).collect_concat{ |i| [ array[i][i], array[i][2-i] ] }.reduce(:+)
    
    end

    def collect_left_diagonal_elements
    (0...3).collect { |i| array[i][i] }.reduce(:+)
    
    end 

    def collect_right_diagonal_elements
    (0...3).collect { |i| array[i][2-i] }.reduce(:+)
    
    end
    
    
end

mda= MultiDimensionalArray.new
mda.array=[[1,2,3],[4,5,6],[7,8,9]]
puts "Sum of all elements on diagonal: " 
puts mda.collect_both_diagonal_elements 
 
puts "Sum of all elements on left diagonal: " 
puts mda.collect_left_diagonal_elements 

puts "Sum of all elements on right diagonal: " 
puts mda.collect_right_diagonal_elements 

