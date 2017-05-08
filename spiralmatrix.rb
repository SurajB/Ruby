#!/usr/bin/ruby
puts "Enter the no of rows in the matrix"
m=gets.chomp.to_i
puts "Enter the no of cols in the matrix"
n=gets.chomp.to_i
puts "The given matrix is #{m} X #{n}"
M=Array.new(m){Array.new(n)}

for i in 0..(m-1)
	puts "Enter the row #{i+1} of the matrix"
	for j in 0..(n-1)
	M[i][j]=gets.chomp.to_i	
	end
end
puts "The matrix is"
new_line="\t"
for i in 0..(m-1)
	for j in 0..(n-1)
		print M[i][j] 
		print "\t"
	end
	puts "\n"
end
s=0
flag=0
puts "The elements printed in spiral form"
until (s==(m-1) || s>(m-1) || (n-1)<=s) do
for j in s..(n-1)
	puts M[s][j]
end
for i in (s+1)..(m-1)
	puts M[i][n-1]
end
for j in (n-2).downto(s)
 	puts M[m-1][j]
end
for i in (m-2).downto(s+1)
	puts M[i][s]
end
s=s+1
m=m-1
n=n-1
end
if (m==1 || n==1) then
	flag=flag+1
end
if(flag==0) then
if(m<=n) then
	for j in s..(n-1)
		puts M[s][j]
	end
	if(s+1==m-1) then
		for j in (n-1).downto(s)
			puts M[s+1][j]
		end
	end
else 
	for i in s..(m-1)
		puts M[i][n-1]
	end
end
end