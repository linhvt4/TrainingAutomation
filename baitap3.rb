class MultiDimensionalArray
    attr_accessor :array
    def initialize_array 
        @array = Array.new( 10 ){ Array.new( 10 ) {rand(0...100)}}
    end

    def collect_both_diagonal_elements
    (0...10).collect_concat{ |i| [ array[i][i], array[i][9-i] ] }.reduce(:+)
    
    end

    def collect_left_diagonal_elements
    (0...10).collect { |i| array[i][i] }.reduce(:+)
    
    end 

    def collect_right_diagonal_elements
    (0...10).collect { |i| array[i][9-i] }.reduce(:+)
    
    end

    def sum_of_elements_all_columns
    (0...10).collect_concat{|i| [array[i][0], array[i][1],array[i][2],array[i][3],array[i][4],array[i][5],array[i][6],array[i][7],array[i][8],array[i][9]]}.reduce(:+)

    end

    def sort_ascending_array
        hash=array.flatten.sort!        
        result1=hash.slice(0, 10)
        result2=hash.slice(10, 10)
        result3=hash.slice(20, 10)
        result4=hash.slice(30, 10)
        result5=hash.slice(40, 10)
        result6=hash.slice(50, 10)
        result7=hash.slice(60, 10)
        result8=hash.slice(70, 10)
        result9=hash.slice(80, 10)
        result10=hash.slice(90, 10)
        p result1
        p result2
        p result3
        p result4
        
    end
    
    
end

mda= MultiDimensionalArray.new
mda.initialize_array
puts "Sum of all elements on diagonal: " 
puts mda.collect_both_diagonal_elements 
 
puts "Sum of all elements on left diagonal: " 
puts mda.collect_left_diagonal_elements 

puts "Sum of all elements on right diagonal: " 
puts mda.collect_right_diagonal_elements 

puts "Sum of all elements on columns"
puts mda.sum_of_elements_all_columns

puts "Array after sorting:"
 mda.sort_ascending_array

