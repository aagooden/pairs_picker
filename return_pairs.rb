def shuffle(people)
	people = people.shuffle
	return people
end

def return_pairs(people)
	people = shuffle(people)
	pairs_array = []
	num = people.length / 2

	for x in (0...num)
		pairs_array.push(people.slice(x * 2, 2))
	end

	if people.length % 2 != 0
		pairs_array[pairs_array.length - 1].push(people.last)
	end

	return pairs_array
end

# people = []
# system "clear"
# puts "Enter the names of the people you want in random pairs."
# puts "Enter \"done\" when you have entered all of your names."

# names = "nil"
# until names == "done" do 
# 	names = gets.chomp

# 	if names != "done"
# 		people.push(names)
# 	end
# 	puts "Enter another name or \"done\" to finish."
# end

# people = shuffle(people)
# pairs = return_pairs(people)
# system "clear"
# puts "Your pairings are as follows:"

# pairs.each do |x|
# 	if x.length == 2
# 		puts "#{x[0]} and #{x[1]}"
# 	else 
# 		puts "#{x[0]} and #{x[1]} and #{x[2]}"
# 	end
# end




