puts("enter String")
str = gets.chomp
sum = 0
poscount = 0
negcount = 0
if str.length >=1 && (str[0].ord > 48 && str[0].ord <=57) 
	sum += str[0].to_i
	poscount = 0
end
(1...str.length).each do |i|
	if (str[i].ord > 48 && str[i].ord <=57)   
		if (str[i-1] != "-")
			sum += str[i].to_i
			poscount += 1
		else
			negcount += 1
		end
	end
end
begin
	if str.length==0
		raise "Empty Strings Are Not Allowed"
	elsif sum==0 && negcount==0
		raise "String contains only characters and Special characters"
	elsif negcount==str.length/2
		raise "String contains all Negative Numbers"
	elsif sum==0
		raise "There are No Positive Numbers In the String"
	
	end
rescue Exception => e
	puts(e.message)
end 
if sum!=0
	puts(sum.to_f/poscount)
end



