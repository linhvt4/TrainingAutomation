require 'cmath'

puts  "Nhap diem toan:"
toan=gets()
toan=toan.to_i
puts "Nhap diem ly:"
ly=gets()
ly=ly.to_i
puts "Nhap diem hoa:"
hoa=gets()
hoa=hoa.to_i
diemtrungbinh = (toan + ly + hoa)/3 

case diemtrungbinh
when diemtrungbinh<4
    puts  "Hoc sinh yeu"
when diemtrungbinh>=4 && diemtrungbinh<=7
    puts "Hoc sinh kha"
when diemtrungbinh>=8 && diemtrungbinh<=9
    puts "Hoc sinh gioi"
else 
    puts "Hoc sinh xuat sac" 
end



    

            

