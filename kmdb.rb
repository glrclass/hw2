# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!
# - Note rubric explanation for appropriate use of external resources.

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)
# - You are welcome to use external resources for help with the assignment (including
#   colleagues, AI, internet search, etc). However, the solution you submit must
#   utilize the skills and strategies covered in class. Alternate solutions which
#   do not demonstrate an understanding of the approaches used in class will receive
#   significant deductions. Any concern should be raised with faculty prior to the due date.

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

#studios, movies, actors, and roles are going to be our "tables" of data

Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model.
# TODO! -done!

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

#Studio
warnerbros = Studio.new
warnerbros["name"] = "Warner Bros."
warnerbros.save

#Movie
batmanbegins = Movie.new
batmanbegins["title"] = "Batman Begins"
batmanbegins["year_released"] = 2005
batmanbegins["rating"] = "PG-13"
batmanbegins["studio_id"] = warnerbros["id"]
batmanbegins.save

darkknight = Movie.new
darkknight["title"] = "The Dark Knight"
darkknight["year_released"] = 2008
darkknight["rating"] = "PG-13"
darkknight["studio_id"] = warnerbros["id"]
darkknight.save

darkknightrises = Movie.new
darkknightrises["title"] = "The Dark Knight Rises"
darkknightrises["year_released"] = 2012
darkknightrises["rating"] = "PG-13"
darkknightrises["studio_id"] = warnerbros["id"]
darkknightrises.save

#Actor
christianbale = Actor.new
christianbale["name"] = "Christian Bale"
christianbale.save

michaelcaine = Actor.new
michaelcaine["name"] = "Michael Caine"
michaelcaine.save

liamneeson = Actor.new
liamneeson["name"] = "Liam Neeson"
liamneeson.save

katieholmes = Actor.new
katieholmes["name"] = "Katie Holmes"
katieholmes.save

garyoldman = Actor.new
garyoldman["name"] = "Gary Oldman"
garyoldman.save

heathledger = Actor.new
heathledger["name"] = "Heath Ledger"
heathledger.save

aaroneckhart = Actor.new
aaroneckhart["name"] = "Aaron Eckhart"
aaroneckhart.save

maggiegyllenhaal = Actor.new
maggiegyllenhaal["name"] = "Maggie Gyllenhaal"
maggiegyllenhaal.save

tomhardy = Actor.new
tomhardy["name"] = "Tom Hardy"
tomhardy.save

josephgordonlevitt = Actor.new
josephgordonlevitt["name"] = "Joseph Gordon Levitt"
josephgordonlevitt.save

annehathaway = Actor.new
annehathaway["name"] = "Anne Hathaway"
annehathaway.save

#Role

#Batman begins roles

brucewayne = Role.new
brucewayne["movie_id"] = batmanbegins["id"]
brucewayne["actor_id"] = christianbale["id"]
brucewayne["character_name"] = "Bruce Wayne"
brucewayne.save

alfred = Role.new
alfred["movie_id"] = batmanbegins["id"]
alfred["actor_id"] = michaelcaine["id"]
alfred["character_name"] = "Alfred"
alfred.save

rasalghul = Role.new
rasalghul["movie_id"] = batmanbegins["id"]
rasalghul["actor_id"] = liamneeson["id"]
rasalghul["character_name"] = "Ra's Al Ghul"
rasalghul.save

racheldawes = Role.new
racheldawes["movie_id"] = batmanbegins["id"]
racheldawes["actor_id"] = katieholmes["id"]
racheldawes["character_name"] = "Rachel Dawes"
racheldawes.save

commissionergordon = Role.new
commissionergordon["movie_id"] = batmanbegins["id"]
commissionergordon["actor_id"] = garyoldman["id"]
commissionergordon["character_name"] = "Commissioner Gordon"
commissionergordon.save

#Dark knight roles

brucewayne = Role.new
brucewayne["movie_id"] = darkknight["id"]
brucewayne["actor_id"] = christianbale["id"]
brucewayne["character_name"] = "Bruce Wayne"
brucewayne.save

joker = Role.new
joker["movie_id"] = darkknight["id"]
joker["actor_id"] = heathledger["id"]
joker["character_name"] = "Joker"
joker.save

harveydent = Role.new
harveydent["movie_id"] = darkknight["id"]
harveydent["actor_id"] = aaroneckhart["id"]
harveydent["character_name"] = "Harvey Dent"
harveydent.save

alfred = Role.new
alfred["movie_id"] = darkknight["id"]
alfred["actor_id"] = michaelcaine["id"]
alfred["character_name"] = "Alfred"
alfred.save

racheldawes = Role.new
racheldawes["movie_id"] = darkknight["id"]
racheldawes["actor_id"] = maggiegyllenhaal["id"]
racheldawes["character_name"] = "Rachel Dawes"
racheldawes.save

#Dark knight rises roles

brucewayne = Role.new
brucewayne["movie_id"] = darkknightrises["id"]
brucewayne["actor_id"] = christianbale["id"]
brucewayne["character_name"] = "Bruce Wayne"
brucewayne.save

commissionergordon = Role.new
commissionergordon["movie_id"] = darkknightrises["id"]
commissionergordon["actor_id"] = garyoldman["id"]
commissionergordon["character_name"] = "Commissioner Gordon"
commissionergordon.save

bane = Role.new
bane["movie_id"] = darkknightrises["id"]
bane["actor_id"] = tomhardy["id"]
bane["character_name"] = "Bane"
bane.save

johnblake = Role.new
johnblake["movie_id"] = darkknightrises["id"]
johnblake["actor_id"] = josephgordonlevitt["id"]
johnblake["character_name"] = "John Blake"
johnblake.save

selinakyle = Role.new
selinakyle["movie_id"] = darkknightrises["id"]
selinakyle["actor_id"] = annehathaway["id"]
selinakyle["character_name"] = "Selina Kyle"
selinakyle.save


# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

#warnerbrothers = Studio.find_by({"name" => "Warner Bros."})

movielist = Movie.where({"studio_id" => warnerbros["id"]}) 

for movies in movielist
  studio = Studio.find_by({"id" => movies["studio_id"]})
  puts "#{movies["title"].ljust(25)} #{movies["year_released"]} #{movies["rating"]} #{studio["name"]}"
end
#note: looked up this --put .ljust(25) after movie.title to get cleaner output


#Alternative method
#movies = Movie.all

#movies.each do |movie|
  #studio = Studio.find(movie.studio_id)  # Fetch the associated studio
  #puts "#{movie.title} #{movie.year_released} #{movie.rating}  #{studio.name}" #gtg
#end


# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

rolelist = Role.all  # Get all roles

for role in rolelist
  movie = Movie.find_by({"id" => role["movie_id"]})  # Get the associated movie
  actor = Actor.find_by({"id" => role["actor_id"]})  # Get the associated actor
  puts "#{movie["title"].ljust(25)} #{actor["name"].ljust(25)} #{role["character_name"]}"
end

#-- The SQL statement for the cast output
#SELECT movies.title, actors.name, roles.character_name 
#FROM roles 
#INNER JOIN movies on movies.id = roles.movie_id 
#INNER JOIN actors ON actors.id = roles.actor_id;