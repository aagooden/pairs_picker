require "sinatra"
require "erb"
require "sinatra/reloader"



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


def store_name(filename, string)
  File.open(filename, "a+") do |file|
    file.puts(string)
  end
end


get "/pairs" do 
  	if File.exist?("names.txt")
	File.delete("names.txt")
	File.new("names.txt", "w+")
	end
	erb :new
end


post "/pairs" do
	@name = params[:name]
	store_name("names.txt", @name)
	erb :new
end


post "/show_pairs" do
	@pairs = File.read("names.txt").split("\n")
	@pairs = return_pairs(@pairs)
	erb :show_pairs
end
