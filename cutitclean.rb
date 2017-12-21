def cut_it_clean(len,num)
    arr=Array.new(num)

        for i in 0..(num-1) do
                arr[i]=len/num
                len=len-arr[i]
                num=num-1
        end
    puts arr

end

cut_it_clean(1002,3)
