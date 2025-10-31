# Define three variables for the LaunchCode shuttle - 
# one for the starting fuel level, 
# another for the number of astronauts aboard,
# and the third for the altitude the shuttle reaches.

# Exercise #1: Construct while loops to do the following:
# a. Query the user for the starting fuel level.
# Validate that the user enters a positive integer value
# greater than 5000 but less than 30000. 
fuel_lvl = 0

while (fuel_lvl <= 5000 or fuel_lvl >= 30000):
  fuel_lvl = int(input('Starting fuel level:'))
  if (fuel_lvl <= 5000 or fuel_lvl >= 30000):
    print('Invalid number. Fuel level is between 5000 and 30000.')

# b. Use a second loop to query the user for the number of astronauts (up to a maximum of 7). Validate the entry.
count_astronauts = 0

while count_astronauts:
  count_astronauts = int(input('Number of astronauts:'))
if (count_astronauts < 1 or count_astronauts > 7):
  print('Invalid response. Please enter a value 1 - 7.')
  
# c. Use a final loop to monitor the fuel status and the altitude of the shuttle. Each iteration, decrease the fuel level by 100 units for each astronaut aboard. Also, increase the altitude by 50 kilometers.
shuttle_altitude = 0

while fuel_lvl - 100 * count_astronauts >= 0:
  shuttle_altitude += 50
  fuel_lvl -= 100 * count_astronauts

# Exercise #2: Print the result with the phrase, The shuttle gained an altitude of ___ km and has ___ kg of fuel left. Fill in the blanks with the altitude and fuel level values.

# If the altitude is 2000 km or higher, add “Orbit achieved!” Otherwise add, “Failed to reach orbit.”
if shuttle_altitude >= 2000:
  ending = 'Orbit achieved!'
else:
  ending = 'Failed to reach orbit.'
print('The shuttle gained an altitude of', shuttle_altitude, 'km and has', fuel_lvl, 'kg of fuel left.', ending)