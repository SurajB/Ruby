#!/usr/bin/ruby

puts "Remember flames? ;) We all used to have that childhood crush"
puts "Let's play it again"
puts "What's your name"
myname= gets.chomp
puts "Who is your crush"
crushname= gets.chomp
len1=myname.length
len2=crushname.length
mname=myname
cname=crushname

#puts len1, len2 #1 lessons learnt - puts/print diff #2 Use of comma to separate arguments
for i in 0..(len1-1)
	for j in 0..(len2-1)
		if myname[i]==crushname[j] then
			if (j!=0) then
			 pre=crushname[0..(j-1)]
			 post=crushname[(j+1)..len2]
			 crushname=pre+post 
			else
				crushname=crushname[1..len2]
			end
             len1=len1-1
			 len2=len2-1
			 break
		end
	end
end
count=len1+len2
if(count==3 || count==5 || count ==14 || count==16 || count==18) then
puts mname + "is friends with" + cname + ":)"
elsif(count==8 || count==12 || count==13 || count==17) then
puts mname + "is affectionate to" + cname + ";)"
elsif(count==6 || count==11 || count==15) then
puts mname + "is gonna marry" +  cname + ":D"
elsif(count==2 || count==4 || count==7 || count==9 || count==20) then
puts mname + "is a enemy to" + cname + ":@"
elsif(count==10 || count==19) then
puts mname + "is in love with" + cname + "<3"
elsif(count==1) then 
puts mname + "is a sister/brother of" + cname + ":)"
end

