#!/usr/bin/ruby

puts "Sample program to reverse the input and find max occurence of a letter in the string"
puts "Enter a word"
name = gets.chomp
puts "Your word" + name
n = name.length
puts "the length is " 
puts n
revname=String.new
cnt=Array.new
alpha=Array.new
#maxocc=Array.new

puts"Enter the option 
1. Reverse the string
2. Find the letter that occurs maximum"
option=gets.chomp

case option

when "1"
j=0
for i in (n-1).downto 0
 	revname[j]=name[i]
 	j=j+1
end
puts "The reverse string is " + revname

else
for i in 0..(n-1)
	count=0
	for j in 0..(n-1)
		if name[i]==name[j] then
			count=count+1
		end
		cnt[i]=count
	end
#	puts name[i] + "occurred" + cnt[i].to_s + "times"
end

i=0
k=0
max=cnt[i]
#puts max
#alpha[k]=name[i]

for i in 0..(n-2)
	j=i+1
#	puts cnt[j].to_s
	if cnt[j]>max then
		max=cnt[j]
#		alpha[k]=name[j]
#		maxocc[k]=max
#       k=k+1
	end
end

for i in 0..(n-1)
	if cnt[i]==max then
		alpha[k]=name[i]
		k=k+1
	end
end

for k in 0..(k-1)
 puts "The letter with maximum occurence in the given string is " + alpha[k] + " and has occured " + max.to_s + " times "
end

end



