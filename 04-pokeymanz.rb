# Lets play pokeymans.
# We have our very own pokeymans that we have to take care of.

# SECTION ONE - EASY

# PART ONE - CREATING THE GAME LOOP

# I want to create a loop that will give me the option to train, catch or take care of my pokeymans.
# Each one of these actions count as one cycle of my loop. I want to be given the option of what action I want to do each cycle.

# PART TWO - INITIALIZE

# Each pokeymans I catch has a name, health, level, experience, happiness, hunger.
# Maximum health points start out as a random number between 60 and 100.
# Level starts at 5...for now.
# Experience starts at 0.
# Happiness at 100 out of 100
# Hunger at 0 out of 100.

# PART THREE - FIRST INSTANCE

# I start with 1 pokeyman and his name is Larry. Let's focus on Larry first before we start catching more pokeymans.
# For now, each cycle will only affect Larry.

# PART FOUR - INSTANCE METHODS & THE PASSAGE OF TIME

# Training my pokeymans will increase their experience by a little and eventually they will level up.
# Leveling up will increase their level by one and their maximum health
# Training will also decrease their happiness. If it gets to 0 then they won't train :(
# I can play with my pokeymans which will increase their happiness.
# Playing or training with my pokeymans will increase their hunger, if their hunger gets too high they lose health points and happiness.
# Feeding my pokeymans will decrease their hunger.
# Update our game loop so that each cycle, all of our pokeymans gain a bit of hunger
# While a pokeymans hunger is low, they will regain health points each cycle

# If a pokeymans health reaches zero, it dies.

# END OF SECTION ONE

# SECTION TWO - MEDIUM
# PART ONE - OTHER POKEYMANS

# Now I want to find and catch and battle with other pokeymans.
# I can only have 6 pokeymans at a time, if I catch another over 6 I have to let him go :(
# Lets keep it simple for now, each cycle will introduce random encounter with a unnamed pokeyman that is level 5

# If we decide to fight it, we gain a lot more experience but lose hp.
# How much do we lose? Lets say we lose the other pokeymans level multiplied by a random number between 0 and 5.

# If we decide to catch it then we add it to our caught pokeymans, and this will create a new instance of Pokeymans
# Catching a pokeymans will increase a count of caught pokeymans by one, remember this cant go higher than 6.

# Now that we have more than one caught pokeymans, we need to change our loop to ask which pokeymans we are training/taking care of.

class Pokeymans
    include Comparable
    attr_reader :name
    attr_accessor :health, :level, :experience, :happiness, :hunger

    @@caught_pokeymans = []

    def <=>(other)
        happiness <=> other.happiness
        hunger <=> other.hunger
        health <=> other.health
    end

    def initialize(name)
        @name = name
        @health = rand(60..100)
        @level = 5
        @experience = 0
        @happiness = 100
        @hunger = 0
    end

    def train
        if @happiness.zero?
            puts "Sorry! This pokeymans is too sad to train..."
        else
            @happiness -= 1
            @hunger += 20
            if @hunger > 80
                @health -= 10
                @happiness -= 25
            end
            @experience += 0.5
            if @experience > 5
                @level += 1
                @health += 1
                @experience = 0
            end
        end
        @happiness = @happiness.clamp(0, 100)
        @hunger = @hunger.clamp(0, 100)
        @health = @health.clamp(0, 100)
    end

    def play
        @happiness += 35
        @hunger += 10
        if @hunger > 80
            @health -= 10
            @happiness -= 25
        end
        @happiness = @happiness.clamp(0, 100)
        @hunger = @hunger.clamp(0, 100)
        @health = @health.clamp(0, 100)
    end

    def feed
        @hunger -= 40
        @hunger = @hunger.clamp(0, 100)
    end

    def to_s
        return "#{@name}'s current status is: Health -> #{@health}, Level -> #{@level}, Experience -> #{@experience.truncate(1)}, Happiness -> #{@happiness} and Hunger -> #{hunger}"
    end

    def self.caught_pokeymans
        return @@caught_pokeymans
    end

    def self.catch(name)
        if @@caught_pokeymans.length < 6
            @@caught_pokeymans << Pokeymans.new(name)
        else
            puts "You already got 6 pokeymans!!"
        end
    end

    def fight
        @experience += 10
        @health -= 5 * rand(0..5)
        if @experience > 10
            @level += 2
            @experience = 0
        end
        if @hunger > 80
            @health -= 10
            @happiness -= 25
        end
        @happiness = @happiness.clamp(0, 100)
        @hunger = @hunger.clamp(0, 100)
        @health = @health.clamp(0, 100)
    end
end

Pokeymans.catch("Larry")
Pokeymans.catch("unamed")

continue = true
while continue
    puts "Which Pokeymans you want to work with now?"
    puts Pokeymans.caught_pokeymans
    Pokeymans.caught_pokeymans.each_with_index do |pokeymans, index|
        puts "#{index + 1}. #{pokeymans.name}"
    end
    print "Type its number: "
    number = gets.chomp.to_i - 1

    while Pokeymans.caught_pokeymans[number].health.positive?
        puts Pokeymans.caught_pokeymans[number]
        puts "What action do you want to do with this pokeymans now?"
        puts "The options are: 1.Train, 2.Catch, 3.Take care, 4. Change pokeymans 5.Nothing(Exit)"
        print "Please type 1, 2, 3, 4 or 5: "
        action = gets.chomp
        Pokeymans.caught_pokeymans[number].hunger += 2
        Pokeymans.caught_pokeymans[number].health += 1 if Pokeymans.caught_pokeymans[number].hunger < 50
        case action
        when "1"
            system "clear"
            Pokeymans.caught_pokeymans[number].train
        when "2"
            puts "Once you find a pokeymans, do you want to battle or catch it?"
            puts "The options are: 1.Fight, 2.Catch, 3.Return"
            print "Please type 1, 2 or 3: "
            input = gets.chomp
            case input
            when "1"
                system "clear"
                Pokeymans.caught_pokeymans[number].fight
            when "2"
                system "clear"
                Pokeymans.catch("Unnamed Pokeymans")
                puts "You now have #{Pokeymans.caught_pokeymans.length - 1} pokeymans!"
            else
                next
            end
        when "3"
            puts "How do you want to take care of your pokeymans now?"
            puts "The options are: 1.Feed, 2.Play, 3.Return"
            print "Please type 1, 2 or 3: "
            input = gets.chomp
            case input
            when "1"
                system "clear"
                Pokeymans.caught_pokeymans[number].feed
            when "2"
                system "clear"
                Pokeymans.caught_pokeymans[number].play
            else
                next
            end
        when "4"
            break
        when "5"
            system "clear"
            puts "Don't be long. Your pokeymans needs you!"
            continue = false
            break
        end
    end

    if Pokeymans.caught_pokeymans[number].health.zero?
    puts "I'm sorry! #{Pokeymans.caught_pokeymans[number].name} died due to poor health condition :( "
    Pokeymans.caught_pokeymans.delete_at(number)
    puts "You now have only #{Pokeymans.caught_pokeymans.length} pokeymans!"
    break if Pokeymans.caught_pokeymans.length.zero?
    end

end