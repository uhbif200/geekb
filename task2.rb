str = ARGV[0]
str = str.split('')
arr = Array.new(str.length).map!{Array.new(str.length)}
amax = 0

for i in 0...str.length
	for j in 0...str.length
		if str[i] == str[j] 
			if i > 0 && j > 0
				arr[i][j] = arr[i-1][j-1] + 1
			else 
				arr[i][j] = 1
			end
			if (arr[i][j] > amax) && (i != j)
				amax = arr[i][j]
				imax = i
				jmax = j
			end 
		
		else
			arr[i][j] = 0
		end
	end
end
for k in 0...amax
	print str[jmax-(amax-k-1)]
end