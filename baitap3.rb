
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

    def sum_of_elements_all_columns
    (0...3).collect_concat{|i| [array[i][0], array[i][1],array[i][2]]}.reduce(:+)

    end

    def sort_ascending_array
        hash=array.flatten.sort!        
        result1=hash.slice(0, 3)
        result2=hash.slice(3, 3)
        result3=hash.slice(6, 3)
        p result1
        p result2
        p result3
    end
    
    
end

mda= MultiDimensionalArray.new
mda.array=[[1,2,5],[4,5,3],[9,8,7]]
puts "Sum of all elements on diagonal: " 
puts mda.collect_both_diagonal_elements 
 
puts "Sum of all elements on left diagonal: " 
puts mda.collect_left_diagonal_elements 

puts "Sum of all elements on right diagonal: " 
puts mda.collect_right_diagonal_elements 

puts "Sum of all elements on columns"
 mda.sum_of_elements_all_columns

puts "Array after sorting:"
 mda.sort_ascending_array

