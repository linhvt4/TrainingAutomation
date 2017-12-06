puts "Chaò bạn, mời bạn đọc câu hỏi!"
puts "Cách nào khai báo một biến và gán giá trị số nguyên là đúng trong các câu lệnh sau?"
puts "a. int 1x=10;"
puts "b. int x=10;"
puts "c. float x=10.0f;"
puts "d. string x=”10″;"
puts "Mời bạn nhập câu trả lời: "
answer=gets.chomp

case answer
when "a" 
    puts "Câu trả lời không đúng!"
when "b" 
    puts "Bạn đã trả lời đúng!"
when "c" 
    puts "Câu trả lời không đúng!"
else "d" 
    puts "Câu trả lời không đúng!"
end



