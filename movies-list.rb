movies = {
  StarWars: 4.8, 
  Divergent: 4.7
  }

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."
choice = gets.chomp

case choice
when "add"
  puts "What is the movie title?"
  title = gets.chomp.to_sym
  title = title.downcase
  if movies[title.to_sym].nil?
    puts "what grade do you rate this movie?"
    rating = gets.chomp.to_i
    movies[title] = rating
    puts "Movie added!"
  else
    puts "Error, the movie already exists"
  end
when "update"
  puts "What is the movie title?"
  title = gets.chomp.downcase!.to_sym
  if movies[title.to_sym].nil?
    puts "This movie is not on the list"
  else
    puts "what's the new grade you give to this movie? "
    rating = gets.chomp!.to_i
    movies[title] = rating
  end
      puts "Movie updated!"
when "display"
 movies.each {
   |movie, rating| 
   puts "#{movie}: #{rating}"
 }
when "delete"
  puts "What is the movie title?"
  title = gets.chomp.to_sym
  if movies[title.to_sym].nil? 
    puts "This movie is not on the list"
  else
    movies[title.delete!] = rating.delete!
    puts "Movie deleted!"
  end
else
  puts "Error!"
end
puts movies