# Clifford Smith Jr. (born March 2, 1971),[2] better known by his stage name Method Man, is an American rapper, 
# songwriter, record producer and actor. He is known as a member of the East Coast hip hop collective Wu-Tang Clan.

# He's asked you to build an app that outputs the details of his sick rhymes and the movies he's been in.
# Someone has done the ground work but its not very DRY. Using methods, refactor the existing code base.

# BEFORE cleaning up the code, take a moment to run the program to experience and understand what is happening.
def to_do
  puts "What would you like to do?"
end

def input_option 
  return "Press either 1/2/3/4"
end

def see(selection)
  puts "Would you like to see more about one of these #{selection}?"
end

def disco(list, index)
    puts "The album #{list[index][:title]} was released in #{list[index][:year]}, with a score of #{list[index][:score]} / 5"
    puts "The song list of #{list[index][:title]} is:"
    list[index][:songlist].each { |song| puts song}
end

def method_man_starred(media, index, list)
  print "Method Man starred in a #{media} called #{list[index][:title]} in #{list[index][:year]} as #{list[index][:role]}"
  yield(index, list) if block_given?
end

def goodbye
  puts "Thank you for visiting."
  puts "Have a good day."
end 

system "clear"
puts "Welcome to beats by method"
quit = false
until quit
  to_do
  puts "Options: 1. Discography, 2. Filmography, 3. Bio, 4. Exit"
  input_option
  input = gets.chomp
  system "clear"
  case input
  when "1"
    discography_menu = true
    while discography_menu
      puts "Method Man has studio and collaboritive work."
      to_do
      puts "Options: 1. Studio, 2. Collaboritive, 3. Back, 4. Exit"
      input_option
      input = gets.chomp
      system "clear"
      case input
      when "1"
        # I did the hard work of putting it into a hash for you. You're welcome.
        studio_work = [{
          title: "Tical",
          year: 1994,
          songlist: ["Tical", "Biscuits", "Bring the Pain"],
          score: 4.5
        }, {
          title: "Tical 2000: Judgement Day",
          year: 1998,
          songlist: ["Judgement Day (Intro)", "Perfect World", "Cradle Rock"],
          score: 4
        }, {
          title: "Tical 0: The Prequel",
          year: 2004,
          songlist: ["The Prequel", "Say What", "What's Happenin'"],
          score: 3
        }, {
          title: "4:21... The Day After",
          year: 2006,
          songlist: ["The Meth Lab", "Is It Me", "Problem"],
          score: 4
        }, {
          title: "The Meth Lab",
          year: 2015,
          songlist: ["The Meth Lab", "Straight Gutta", "Bang Zoom"],
          score: 4.5
        }]
        albums_menu = true
        while albums_menu
          see("albums")
          to_do
          puts "Options: 1. Tical, 2. Tical 2000: Judgement Day, 3. Tical 0: The Prequel, 4. 4:21... The Day After, 5. The Meth Lab, 6. Back, 7. Exit"
          puts input_option + "/5/6/7"
          input = gets.chomp
          system "clear"
          index = input.to_i - 1
          case input
          when "1", "2", "3", "4", "5"
            disco(studio_work, index)
          when "6"
            albums_menu = false
          when "7"
            discography_menu = false
            albums_menu = false
            quit = true
          end
        end
      when "2"
        # I did the hard work of putting it into a hash for you. You're welcome.
        collab_menu = true
        while collab_menu
          collab_work = [{
            title: "Blackout!",
            year: 1999,
            songlist: ["A Special Joint", "Blackout", "Mi Casa"],
            score: 4
          }, {
            title: "How High",
            year: 2001,
            songlist: ["Part II", "Round and Round (Remix)", "Cisco Kid"],
            score: 4.5
          }, {
            title: "Blackout! 2",
            year: 2009,
            songlist: ["BO", "I'm Dope", "A-Yo"],
            score: 4.5
          }, {
            title: "Wu-Massacre",
            year: 2010,
            songlist: ["Criminology 2.5", "Meth vs. Chef 2", "Smooth Sailing"],
            score: 4
          }]
          see("albums")
          to_do
          puts "Options: 1. Blackout!, 2. How High, 3. Blackout! 2, 4. Wu-Massacre, 5. Back, 6. Exit"
          puts input_option + "/5/6"
          input = gets.chomp
          system "clear"
          index = input.to_i - 1
          case input
          when "1", "2", "3", "4"
            disco(collab_work, index)
          when "5"
            collab_menu = false
          when "6"
            collab_menu = false
            discography_menu = false
            quit = true
          end
        end
      when "3"
        discography_menu = false
      when "4"
        quit = true
      end
    end
  when "2"
    acting_menu = true
    while acting_menu
      system "clear"
      puts "Method Man has been in movies and television ."
      to_do
      puts "Options: 1. Movies, 2. Television, 3. Back, 4. Exit"
      puts input_option
      input = gets.chomp
      system "clear"
      case input
      when "1"
        # I did the hard work of putting it into a hash for you. You're welcome.
        film_list = [{
          title: "The Film",
          role: "Himself",
          year: 1995
        }, {
          title: "The Great White Hype",
          role: "Himself",
          year: 1996
        }, {
          title: "Cop Land",
          role: "Shondel",
          year: 1997
        }, {
          title: "One Eight Seven",
          role: "Dennis Broadway",
          year: 1997
        }]
        film_menu = true
        while film_menu
          see("movies")
          to_do
          puts "Options: 1. The Film, 2. The Great White Hype, 3. Cop Land, 4. One Eight Seven, 5. Back, 6. Exit"
          puts input_option + "/5/6"
          input = gets.chomp
          index = input.to_i - 1
          system "clear"
          puts case input
          when "1", "2", "3", "4"
            method_man_starred("movie", index, film_list)
          when "5"
            film_menu = false
          when "6"
            acting_menu = false
            film_menu = false
            quit = true
          end
        end
      when "2"
        television_list = [{
          title: "Space Ghost Coast to Coast",
          episode: "Surprise",
          role: "Himself",
          year: 1996
        }, {
          title: "Martin",
          episode: "You Play Too Much",
          role: "Robber: M-E-T-H-O-D Man",
          year: 1997
        }, {
          title: "Station Zero",
          episode: "Uptown, Baby",
          role: "Himself",
          year: 1999
        }, {
          title: "Oz",
          episode: "Multiple",
          role: "Tug Daniels",
          year: 2001
        }]
        television_menu = true
        while television_menu
          see("shows")
          to_do
          puts "Options: 1. Space Ghost Coast to Coast, 2. Martin, 3. Station Zero, 4. Oz, 5. Back, 6. Exit"
          puts input_option + "/5/6"
          input = gets.chomp
          system "clear"
          index = input.to_i - 1
          case input
          when "1", "2", "3", "4"
            method_man_starred("television show", index, television_list) { |i, list| puts " on episode #{list[i][:episode]}" }
          when "5"
            television_menu = false
          when "6"
            television_menu = false
            acting_menu = false
            quit = true
          end
        end
      when "3"
        acting_menu = false
      when "4"
        acting_menu = false
        quit = true
      end
    end
  when "3"
    system "clear"
    puts "Clifford Smith Jr. (born March 2, 1971),[2] better known by his stage name Method Man, is an American rapper, songwriter, record producer and actor. He is known as a member of the East Coast hip hop collective Wu-Tang Clan. He is also one half of the hip hop duo Method Man & Redman. He took his stage name from the 1979 film Method Man.[3] In 1996, Smith won a Grammy Award for Best Rap Performance by a Duo or Group, for 'I\'ll Be There for You/You're All I Need to Get By', featuring American R&B singer Mary J. Blige who he currently stars with in Power Book II: Ghost, a spin-off of its original show Power."
    puts "Smith has appeared in films such as 187 (1997), Belly (1998), How High (2001), Garden State (2004), The Wackness (2008), Venom (2005), Red Tails (2012), Keanu (2016), and The Cobbler (2014). On television, he and frequent collaborator, fellow East Coast rapper Redman, co-starred on the short-lived Fox sitcom Method & Red. He has also had recurring roles in three HBO series, as Tug Daniels in Oz, Melvin 'Cheese' Wagstaff in The Wire, and Rodney in The Deuce.[4] Method Man also appears in the TBS comedy The Last O.G.. "
  when "4"
    quit = true
  end
end

goodbye
