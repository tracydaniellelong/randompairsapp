def random_pair(pair)
	pairs = []
	to_pair = pair.shuffle.each_slice(2)
	to_pair.each do |x|
		case 
		when x.length == 2
			ary.push(x)
		when x.length == 1
 			ary[rand(ary.length)].concat(x)
		end
	end
	return pairs
end