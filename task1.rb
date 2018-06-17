i = ARGV[0]
a = ARGV[1].to_i
b = ARGV[2].to_i

def pryamoyPerevod(chislo)
	case chislo
	when 'a'
	return 10
	when 'b'
	return 11
	when 'c'
	return 12
	when 'd'
	return 13
	when 'e'
	return 14
	when 'f'
	return 15
	when 'g'
	return 16
	when 'h'
	return 17
	when 'i'
	return 18
	when 'j'
	return 19
	when 'k'
	return 20
	when 'l'
	return 21
	when 'm'
	return 22
	when 'n'
	return 23
	when 'o'
	return 24
	when 'p'
	return 25
	when 'q'
	return 26
	when 'r'
	return 27
	when 's'
	return 28
	when 't'
	return 29
	when 'u'
	return 30
	when 'v'
	return 31
	when 'w'
	return 32
	when 'x'	
	return 33
	when 'y'
	return 34
	when 'z'
	return 35
	end
	return chislo.to_i
end

def obratniyPerevod(chislo)
	case chislo
	when 10
	return 'a'
	when 11
	return 'b'
	when 12
	return 'c'
	when 13
	return 'd'
	when 14
	return 'e'
	when 15
	return 'f'
	when 16
	return 'g'
	when 17
	return 'h'
	when 18
	return 'i'
	when 19
	return 'j'
	when 20
	return 'k'
	when 21
	return 'l'
	when 22
	return 'm'
	when 23
	return 'n'
	when 24
	return 'o'
	when 25
	return 'p'
	when 26
	return 'q'
	when 27
	return 'r'
	when 28
	return 's'
	when 29
	return 't'
	when 30
	return 'u'
	when 31
	return 'v'
	when 32
	return 'w'
	when 33	
	return 'x'
	when 34
	return 'y'
	when 35
	return 'z'
	end
	return chislo.to_s
end

im = Array.new
im = i.split('')
im = im.reverse
j = 0
while j!= im.length
	im[j] = pryamoyPerevod(im[j])
	if im[j] >= a
		puts 'Formate error'
		return 0
	end
	j += 1
end
sum10 = 0
j = 0
while j != im.length 
	sum10 += ((a**j)*im[j].to_i)
	j += 1
end
puts sum10
answ = Array.new
while sum10 >= b
	answ.push(sum10 % b)
	sum10 = sum10/b - 0.5
	sum10 = sum10.round(0)
end
answ.push(sum10)
j = 0
while j!= answ.length
	answ[j] = obratniyPerevod(answ[j])
	j += 1
end
answ = answ.reverse
itog = answ.join
puts itog
return 0 