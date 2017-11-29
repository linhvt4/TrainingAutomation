class Operations
    def plus(number1, number2)
        number1 + number2    
    end
    
    def minus(number1, number2)
        if number1 >= number2
            number1 - number2
        else
            number2 - number1
        end
    end

    def multiply(number1, number2)
        number1*number2 
    end

    def divisibility(divisor, dividend)
        if (divisor%2==0)&&(dividend%2==0)
            if divisor >= dividend
                divisor/dividend
            else
                dividend/divisor
            end
        end
    end

    def dividendSuplus(divisor, dividend)
        if (divisor%2!=0)&&(dividend%2!=0)
            puts "Hello, Linh"
          divisor/dividend  
        end      
    end
end

operations = Operations.new
puts operations.plus(10,4)
puts operations.minus(4,6)
puts operations.multiply(2,4)
puts operations.divisibility(2,4)
puts operations.dividendSuplus(7.0,9)




