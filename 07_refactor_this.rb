# README FIRST

## Part 1
# Run the program and explore what is happening in the code
# Try to find instances where the code is "broken" - ie bad inputs create unexpected results
# Shoot me a message if you did so I can fix it ;)

## Part 2
# This code is very WET, there's many opportunities to re-write the code using methods
# There's little guidance here, just try to find as many opportunities to DRY up the code and refactor it
# Remember, when refactoring only make small changes and test that nothing has broken.

users = [
  {
    username: "foobar",
    pin: 1234,
    accounts: [
      {
        name: "Daily Drain",
        balance: 100
      },
      {
        name: "Super Saver",
        balance: 1000
      }
    ]
  },
  {
    username: "jimbob",
    pin: 5678,
    accounts: [
      {
        name: "Daily Drain",
        balance: 100
      },
      {
        name: "Super Saver",
        balance: 1000
      }
    ]
  },
  {
    username: "billybob",
    pin: 1357,
    accounts: [
      {
        name: "Daily Drain",
        balance: 100
      },
      {
        name: "Super Saver",
        balance: 1000
      }
    ]
  }
]

user = nil
puts "Welcome to our bank"
while user == nil
  puts "Plese enter your username and pin"
  print  "username: "
  print ">"
  username = gets.chomp
  print "pin: "
  print ">"
  pin = gets.chomp.to_i

  found = users.find { |element| element[:username] == username }
  if found
    if found[:pin] == pin
      user = found
    end
  end
end

continue = true
while continue == true
  system "clear"
  puts "Options - select using value in []"
  puts "[1]. Balance"
  puts "[2]. Deposit"
  puts "[3]. Withdraw"
  puts "[4]. Transfer"
  puts "[e]. Exit"
  puts "What would you like to do?"
  input = gets.chomp
  case input
  # Balance
  when "1"
    system "clear"
    puts "Balance of which account? select using value in []"
    user[:accounts].each_with_index do |account, index|
      puts "[#{index}]. #{account[:name]}"
    end
    account_index = gets.chomp.to_i
    until account_index > -1 && account_index < user[:accounts].length
      system "clear"
      puts "Invalid choice, please try again"
      puts "Balance of which account? select using value in []"
      user[:accounts].each_with_index do |account, index|
        puts "[#{index}]. #{account[:name]}"
      end
      account_index = gets.chomp.to_i
    end
    account = user[:accounts][account_index]
    system "clear"
    puts "#{account[:name]}: $#{account[:balance]}"
    puts "Press enter to continue..."
    gets
  # Deposit
  when "2"
    puts "Deposit into which account? select using value in []"
    user[:accounts].each_with_index do |account, index|
      puts "[#{index}]. #{account[:name]}"
    end
    account_index = gets.chomp.to_i
    until account_index > -1 && account_index < user[:accounts].length
      system "clear"
      puts "Invalid choice, please try again"
      puts "Deposit into which account? select using value in []"
      user[:accounts].each_with_index do |account, index|
        puts "[#{index}]. #{account[:name]}"
      end
      account_index = gets.chomp.to_i
    end

    account = user[:accounts][account_index]

    system "clear"
    puts "Deposit how much?"
    amount = gets.chomp
    until amount.to_i > 0
      system "clear"
      puts "Invalid choice, please try again"
      puts "Deposit how much?"
      amount = gets.chomp
    end
    system "clear"
    puts "Depositing $#{amount.to_i} into your #{account[:name]} account."
    account[:balance] += amount.to_i

    puts "See new balance? y/n"
    if gets.chomp == "y"
      system "clear"
      puts "#{account[:name]}: $#{account[:balance]}"
      puts "Press enter to continue..."
      gets
    else 
      system "clear"
      puts "Press enter to continue..."
      gets
    end
  when "3"
    puts "Withdraw from which account? select using value in []"
    user[:accounts].each_with_index do |account, index|
      puts "[#{index}]. #{account[:name]}"
    end
    account_index = gets.chomp.to_i
    until account_index > -1 && account_index < user[:accounts].length
      system "clear"
      puts "Invalid choice, please try again"
      puts "Withdraw from which account? select using value in []"
      user[:accounts].each_with_index do |account, index|
        puts "[#{index}]. #{account[:name]}"
      end
      account_index = gets.chomp.to_i
    end

    account = user[:accounts][account_index]

    system "clear"
    puts "Withdraw how much?"
    amount = gets.chomp
    until amount.to_i > 0
      system "clear"
      puts "Invalid choice, please try again"
      puts "Withdraw how much?"
      amount = gets.chomp
    end
    system "clear"
    if amount.to_i <= account[:balance]
      puts "Withdrawing $#{amount.to_i} from your #{account[:name]} account."
      account[:balance] -= amount.to_i

      puts "See new balance? y/n"
      if gets.chomp == "y"
        system "clear"
        puts "#{account[:name]} #{account[:balance]}"
        puts "Press enter to continue..."
        gets
      else 
        system "clear"
        puts "Press enter to continue..."
        gets
      end
    else
      system "clear"
      puts "Cannot withdraw that much. Insufficient funds."
      puts "Press enter to continue..."
    end
  when "4"
    system "clear"
    puts "Transfer from which account? select using value in []"
    user[:accounts].each_with_index do |account, index|
      puts "[#{index}]. #{account[:name]}"
    end
    account_index = gets.chomp.to_i
    until account_index > -1 && account_index < user[:accounts].length
      system "clear"
      puts "Invalid choice, please try again"
      puts "Deposit into which account? select using value in []"
      user[:accounts].each_with_index do |account, index|
        puts "[#{index}]. #{account[:name]}"
      end
      account_index = gets.chomp.to_i
    end
    from_account = user[:accounts][account_index]
    system "clear"

    puts "Transfer to which account? select using value in []"
    user[:accounts].each_with_index do |account, index|
      puts "[#{index}]. #{account[:name]}"
    end
    account_index = gets.chomp.to_i
    until account_index > -1 && account_index < user[:accounts].length
      system "clear"
      puts "Invalid choice, please try again"
      puts "Deposit into which account? select using value in []"
      user[:accounts].each_with_index do |account, index|
        puts "[#{index}]. #{account[:name]}"
      end
      account_index = gets.chomp.to_i
    end

    to_account = user[:accounts][account_index]

    system "clear"
    puts "Tranfer how much?"
    amount = gets.chomp
    until amount.to_i > 0
      system "clear"
      puts "Invalid choice, please try again"
      puts "Withdraw how much?"
      amount = gets.chomp
    end

    if amount.to_i <= from_account[:balance]
      puts "Withdrawing $#{amount.to_i} from your #{from_account[:name]} account."
      from_account[:balance] -= amount.to_i
      puts "Depositing $#{amount.to_i} to your #{to_account[:name]} account."
      to_account[:balance] += amount.to_i
      
      puts "See new balance? y/n"
      if gets.chomp == "y"
        system "clear"
        puts "#{account[:name]}: #{from_account[:balance]}"
        puts "#{account[:name]}: #{to_account[:balance]}"
        puts "Press enter to continue..."
        gets
      else 
        system "clear"
        puts "Press enter to continue..."
        gets
      end
    else 
      system "clear"
      puts "Cannot withdraw that much. Insufficient funds."
      puts "Press enter to continue..."
    end
  when "e"
    continue = false
  else 
    system "clear"
    puts "Invalid choice, please try again"
  end
end

puts "Goodbye"
