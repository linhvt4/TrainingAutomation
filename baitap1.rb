require 'cmath'

puts  "Nhap diem toan:"
toan=gets()
toan=toan.to_f
puts "Nhap diem ly:"
ly=gets()
ly=ly.to_f
puts "Nhap diem hoa:"
hoa=gets()
hoa=hoa.to_f
diemtrungbinh = (toan + ly + hoa)/3 
if (diemtrungbinh<4)
    puts "Ban la hoc sinh yeu"            
elsif ((diemtrungbinh>=4) && (diemtrungbinh<7))
    puts "Ban la hoc sinh trung binh"
elsif ((diemtrungbinh>=7) && (diemtrungbinh<8))
    puts "Ban la hoc sinh kha"
elsif ((diemtrungbinh>=8) && (diemtrungbinh<9))
    puts "Ban la hoc sinh gioi"
else
    puts "Ban la hoc sinh xuat sac"   
end


            

