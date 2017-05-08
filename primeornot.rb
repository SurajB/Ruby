=begin
Sample
Hey how are you 
=end
puts "This program helps finding the no of prime nos until the given number"
puts "Enter the number"
number=gets.chomp.to_i
i=1
count=0
while i<=number do
    j=1
    flag=0
    while j<=i do
       if (i%j)==0
        flag=flag+1
       end
       j+=1
    end
    if (flag==2)
        count=count+1
    end
    i+=1
end
puts count