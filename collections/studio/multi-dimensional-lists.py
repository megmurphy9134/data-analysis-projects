food = "water bottles,meal packs,snacks,chocolate"
equipment = "space suits,jet packs,tool belts,thermal detonators"
pets = "parrots,cats,moose,alien eggs"
sleep_aids = "blankets,pillows,eyepatches,alarm clocks"

# a) Use split to convert the strings into four cabinet lists.
#  Alphabetize the contents of each cabinet.

food_list = sorted(food.split(','))
equipment_list = sorted(equipment.split(','))
pets_list = sorted(pets.split(','))
sleep_aids = sorted(sleep_aids.split(','))

# b) Initialize a cargo_hold list and add the cabinet lists to it. Print cargo_hold to verify its structure.
cargoHold = []

cargoHold.append(food_list)
cargoHold.append(equipment_list)
cargoHold.append(pets_list)
cargoHold.append(sleep_aids)

print(cargoHold)

# c) Query the user to select a cabinet (0 - 3) in the cargo_hold.
cabinet = int(input("Select a cabinet between 0 and 3: "))

# d) Use bracket notation and format to display the contents of the selected cabinet. If the user entered an invalid number, print an error message.
#BROKEN
# for cabinet in cargoHold:
#   print(f"The following items are in cabinet {cabinet}: {cargoHold[cabinet]}")
    

# e) Modify the code to query the user for BOTH a cabinet in cargo_hold AND a particular item. Use the in method to check if the cabinet contains the selected item, then print “Cabinet ____ DOES/DOES NOT contain ____.”
