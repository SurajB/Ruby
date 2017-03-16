#!/usr/bin/ruby
puts "Enter the string to find the maximum occurence of a character"
s=gets.chomp
n=s.length
count=0
for i in 0..(n-1)
	maxcount=count
	count=0
	for j in 0..(n-1)
		if(s[i]==s[j]) then
			count=count+1
		end
	end
	if(count>maxcount) then
		maxocc=s[i]
	end
end
puts "The maximum occuring character in the given string is " + maxocc