proto_list1 = "3,6,9,12"
proto_list2 = "A;C;M;E"
proto_list3 = "space delimited string"
proto_list4 = "Comma-spaces, might, require, typing, caution"

strings = [proto_list1, proto_list2, proto_list3, proto_list4]

# a) Use the 'in' method to check to see if the words in each string are separated by commas (,), semicolons (;) or just spaces.
com_semi_space = False
for item in strings:
    if ',' or ';' or ' ' in item:
        com_semi_space = True
print(com_semi_space)

# b) If the string uses commas to separate the words,
#  split it into an array, reverse the entries,
#  and then join the array into a new comma separated string.
if com_semi_space == True:
    for item in strings:
        if ',' in item:
            new_entry = item.split(',')
            new_entry.reverse()
            new_entry = ','.join(new_entry)
            print(new_entry)

# c) If the string uses semicolons to separate the words, 
# split it into an array, alphabetize the entries,
# and then join the array into a new comma separated string.
if com_semi_space == True:
    for item in strings:
        if ';' in item:
            new_entry = item.split(';')
            new_entry.sort()
            new_entry = ','.join(new_entry)
            print(new_entry)

# d) If the string uses spaces to separate the words,
# split it into an array, reverse alphabetize the entries,
# and then join the array into a new space separated string.
if com_semi_space == True:
    for item in strings:
        if ' ' in item and (',' or ';') not in item:
            new_entry = item.split(' ')
            new_entry.sort(reverse=True)
            new_entry = ' '.join(new_entry)
            print(new_entry)

# e) If the string uses ‘comma spaces’ to separate the list, 
# modify your code to produce the same result as part “b”,
#  making sure that the extra spaces are NOT part of the final string.
if com_semi_space == True:
    for item in strings:
        if ', ' in item:
            new_entry = item.replace(' ','').split(',')
            new_entry.reverse()
            new_entry = ','.join(new_entry)
            print(new_entry)