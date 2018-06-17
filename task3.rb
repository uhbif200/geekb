a = ARGV[0].to_i
b = ARGV[1].to_i
maxOd = 1

if a > b
	p = b
	b = a 
	a = p	
end	

for i in 0...a
	if (a%(a-i)==0) && (b%(a-i)==0)
		puts (a-i)
		return 0
	end 
end
