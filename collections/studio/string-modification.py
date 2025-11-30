my_string = "LaunchCode"

# a) Use string methods to remove the first three characters from the string and add them to the end.
beginning = my_string[0:3]
middle = my_string[3:]
new_string = middle + beginning
print(new_string)

# Use a template literal to print the original and modified string in
# a descriptive phrase.
print(f"The first string is {my_string} and the new string is {new_string}.")

# b) Modify your code to accept user input. Query the user to enter the number of letters that will be relocated.
move = int(input("How many letters would you like to relocate? "))
beginning = my_string[0:move]
middle = my_string[move:]
new_string = middle + beginning
print(f"The first string is {my_string} and the new string is {new_string}.")

# c) Add validation to your code to deal with user inputs that are longer than the word. In such cases, default to moving 3 characters. Also, the template literal should note the error.
num_tries = 0
while move < 0 or move > len(my_string):
    num_tries +=1
    if num_tries >= 3:
        print(f"You tried {num_tries} which is the max attempts. The default value of 3 will be used.")
        move = 3
        break
    else:
        print(f"Enter the number of letters to be relocated. Must be greater than 0 and less than {move}.")
