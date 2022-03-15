# Clifford Smith Jr. (born March 2, 1971),[2] better known by his stage name Method Man, is an American rapper, 
# songwriter, record producer and actor. He is known as a member of the East Coast hip hop collective Wu-Tang Clan.

# He's asked you to build an app that outputs the details of his sick rhymes and the movies he's been in.
# Someone has done the ground work but its not very DRY. Using methods, refactor the existing code base.

# BEFORE cleaning up the code, take a moment to run the program to experience and understand what is happening.
system "clear"
puts "Welcome to beats by method"
quit = false
until quit == true
  puts "What would you like to do?"
  puts "Options: 1. Discography, 2. Filmography, 3. Bio, 4. Exit"
  puts "Press either 1/2/3"
  input = gets.chomp
  system "clear"
  if input == "1"
    discography_menu = true
    while discography_menu == true
      puts "Method Man has studio and collaboritive work."
      puts "What would you like to do?"
      puts "Options: 1. Studio, 2. Collaborive, 3. Back, 4. Exit"
      puts "Press either 1/2/3/4"
      input = gets.chomp
      system "clear"
      if input == "1"
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
        while albums_menu == true
          puts "Would you like to see more about one of these albums?."
          puts "What would you like to do?"
          puts "Options: 1. Tical, 2. Tical 2000: Judgement Day, 3. Tical 0: The Prequel, 4. 4:21... The Day After, 5. The Meth Lab, 6. Back, 7. Exit"
          puts "Press either 1/2/3/4/5/6/7"
          input = gets.chomp
          system "clear"
          if input == "1"
            puts "The album Tical was released in 1994, with a score of 4.5 / 5"
            puts "The song list of Tical is:"
            puts "Tical"
            puts "Biscuits"
            puts "Bring the Pain"
          elsif input == "2"
            puts "The album Tical 2000: Judgement Day was released in 1994, with a score of 3 / 5"
            puts "The song list of Tical 2000: Judgement Day is:"
            puts "Judgement Day (Intro)"
            puts "Perfect World"
            puts "Cradle Rock"
          elsif input == "3"
            puts "The album Tical 0: The Prequel was released in 1994, with a score of 4.5 / 5"
            puts "The song list of Tical 0: The Prequel is:"
            puts "The Prequel"
            puts "Say What"
            puts "What's Happenin'"
          elsif input == "4"
            puts "The album 4:21... The Day After was released in 1994, with a score of 4 / 5"
            puts "The song list of 4:21... The Day After is:"
            puts "The Meth Lab"
            puts "Is It Me"
            puts "Problem"
          elsif input == "5"
            puts "The album The Meth Lab was released in 1994, with a score of 4.5 / 5"
            puts "The song list of The Meth Lab is:"
            puts "The Meth Lab"
            puts "Straight Gutta"
            puts "Bang Zoom"
          elsif input == "6"
            albums_menu = false
          elsif input == "7"
            discography_menu = false
            albums_menu = false
            quit = true
          end
        end
      elsif input == "2"
        # I did the hard work of putting it into a hash for you. You're welcome.
        collab_menu = true
        while collab_menu == true
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
          puts "Would you like to see more about one of these albums?."
          puts "What would you like to do?"
          puts "Options: 1. Blackout!, 2. How High, 3. Blackout! 2, 4. Wu-Massacre, 5. Back, 6. Exit"
          puts "Press either 1/2/3/4/5/6"
          input = gets.chomp
          system "clear"
          if input == "1"
            puts "The album Blackout! was released in 1999, with a score of 4.5 / 5"
            puts "The song list of Blackout! is:"
            puts "A Special Joint"
            puts "Blackout"
            puts "Mi Casa"
          elsif input == "2"
            puts "The album How High was released in 2001, with a score of 4.5 / 5"
            puts "The song list of How High! is:"
            puts "Part II"
            puts "Round and Round (Remix)"
            puts "Cisco Kid"
          elsif input == "3"
            puts "The album Blackout! 2 was released in 2009, with a score of 4.5 / 5"
            puts "The song list of Blackout! 2 is:"
            puts "I'm Dope"
            puts "BO"
            puts "A-Yo"
          elsif input == "4"
            puts "The album Wu-Massacre was released in 2010, with a score of 4.5 / 5"
            puts "The song list of Wu-Massacre is:"
            puts "Criminology 2.5"
            puts "Meth vs. Chef 2"
            puts "Smooth Sailing"
          elsif input == "5"
            collab_menu = false
          elsif input == "6"
            collab_menu = false
            discography_menu = false
            quit = true
          end
        end
      elsif input == "3"
        discography_menu = false
      elsif input == "4"
        quit = true
      end
    end
  elsif input == "2"
    acting_menu = true
    while acting_menu == true
      system "clear"
      puts "Method Man has been in movies and television ."
      puts "What would you like to do?"
      puts "Options: 1. Movies, 2. Television, 3. Back, 4. Exit"
      puts "Press either 1/2/3/4"
      input = gets.chomp
      system "clear"
      if input == "1"
        # I did the hard work of putting it into a hash for you. You're welcome.
        film_list = [{
          title: "The Film",
          role: 1995,
          year: "Himself"
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
        while film_menu == true
          puts "Would you like to see more about one of these movies?."
          puts "What would you like to do?"
          puts "Options: 1. The Film, 2. The Great White Hype, 3. Cop Land, 4. One Eight Seven, 5. Back, 6. Exit"
          puts "Press either 1/2/3/4/5/6"
          input = gets.chomp
          system "clear"
          if input == "1"
            puts "Method Man starred in a movie called 'The Film' in 1995 as Himself"
          elsif input == "2"
            puts "Method Man starred in a movie called 'The Great White Hype' in 1996 as Himself"
          elsif input == "3"
            puts "Method Man starred in a movie called 'Cop Land' in 1997 as Shondel"
          elsif input == "4"
            puts "Method Man starred in a movie called 'One Eight Seven' in 1997 as Dennis Broadway"
          elsif input == "5"
            film_menu = false
          elsif input == "6"
            acting_menu = false
            film_menu = false
            quit = true
          end
        end
      elsif input == "2"
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
        while television_menu == true
          puts "Would you like to see more about one of these shows?."
          puts "What would you like to do?"
          puts "Options: 1. Space Ghost Coast to Coast, 2. Martin, 3. Station Zero, 4. Oz, 5. Back, 6. Exit"
          puts "Press either 1/2/3/4/5/6"
          input = gets.chomp
          system "clear"
          if input == "1"
            puts "Method Man starred in a television show called 'Space Ghost Coast to Coast' in 1996 as Himself on episode 'Surprise'"
          elsif input == "2"
            puts "Method Man starred in a television show called 'Martin' in 1997 as Robber: M-E-T-H-O-D Man on episode 'You Play Too Much'"
          elsif input == "3"
            puts "Method Man starred in a television show called 'Station Zero' in 1995 as Himself on episode 'Uptown, Baby'"
          elsif input == "4"
            puts "Method Man starred in a television show called 'Oz' in 1995 as Himself on episode 'Tug Daniels'"
          elsif input == "5"
            television_menu = false
          elsif input == "6"
            television_menu = false
            acting_menu = false
            quit = true
          end
        end
      elsif input == "3"
        filmography_menu = false
      elsif input == "4"
        filmography_menu = false
        quit = true
      end
    end
  elsif input == "3"
    system "clear"
    puts "Clifford Smith Jr. (born March 2, 1971),[2] better known by his stage name Method Man, is an American rapper, songwriter, record producer and actor. He is known as a member of the East Coast hip hop collective Wu-Tang Clan. He is also one half of the hip hop duo Method Man & Redman. He took his stage name from the 1979 film Method Man.[3] In 1996, Smith won a Grammy Award for Best Rap Performance by a Duo or Group, for 'I\'ll Be There for You/You're All I Need to Get By', featuring American R&B singer Mary J. Blige who he currently stars with in Power Book II: Ghost, a spin-off of its original show Power."
    puts "Smith has appeared in films such as 187 (1997), Belly (1998), How High (2001), Garden State (2004), The Wackness (2008), Venom (2005), Red Tails (2012), Keanu (2016), and The Cobbler (2014). On television, he and frequent collaborator, fellow East Coast rapper Redman, co-starred on the short-lived Fox sitcom Method & Red. He has also had recurring roles in three HBO series, as Tug Daniels in Oz, Melvin 'Cheese' Wagstaff in The Wire, and Rodney in The Deuce.[4] Method Man also appears in the TBS comedy The Last O.G.. "
  elsif input == "4"
    quit = true
  end
end

puts "Thank you for visiting."
puts "Have a good day."
