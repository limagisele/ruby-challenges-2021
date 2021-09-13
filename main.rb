# Part 1
# GOALS - Reading and outputting
# Open the file
# Output each hash 
# Format the output so that it outputs in a "clean" way
# FINISH - I can see the contents of the file outputted cleanly to the terminal


# Part 2
# GOALS - Saving data, getting input, adding hashes to arrays
# Open the file and save the contents into a new array
# Each "person" needs to be an hash in this array
# Using `gets`, take input from the user and add a new "person" hash to the array
# Make sure that details is nested and id increments with each new entry
# FINISH - I can see the people data saved into the array, each person is in the same format as the scaffolded people.

# Part 3
# GOALS - Looping code
# Turn the 'getting input' and 'adding to the array' section into a loop 
# At the start of each loop, give the user the option to add a new person or exit
# The loop will exit when the user selects exit
# FINISH - My app will continue asking for input and adding to the array of users until I select to exit

# Part 4
# GOAL - Writing data to a file
# After the loop, write (save) the contents of the array to the json file
# FINISH - My json file contains the new created data and the old scaffolded data, running the program multiple times will add new users without deleting the old ones.

# Part 5
# GOAL - Updating data
# Add the option to update an existing person 
# What data about each person would we use to find them?
# To keep things simple, the only thing that can be changed is an email.
# Ask the user for the new email, update that person in the array
# When the user exits the loop, the previous code in Part 4 should update the json file
# FINISH - My json file contains the new updated data. Running the program again should output the new data

# Part 6
# GOAL - Logging in
# Only an Admin should be able to create or update a user.
# When the program starts, it will ask the user for their email and password.
# To log in: 
#   1. the program needs to find a person in the people array that has that email
#   2. the password the user provided should match the password saved in the hash

# If successful, the program continues
# If unsuccessful, the program retries asking for email/password until a match or the user chooses to exit

# FINISH - My program won't continue past the login screen until correct credentials
#        - My program will continue past the login screen once the correct credentials are provided

# Part 7
# GOAL - Permissions
# Now that we can login, each person has a "role" key
# The create and update actions shouldn't be possible for users that aren't Admins.
# The program should output a message "that can't be done" when someone who isn't an Admin tries to create/update the program
# When a user who has the role "BANNED" logs in the program should exit