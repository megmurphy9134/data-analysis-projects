# Python Assignment One
# 1. Declare and assign the variables here:
shuttle_name = "Determination"
speed_mph = 17500
distance_to_mars_km = 2250000000
distance_to_moon_km = 384400
miles_per_km = 0.621

# 2. Use print() to print the 'type' each variable. Print one item per line.
print(type(shuttle_name))
print(type(speed_mph))
print(type(distance_to_mars_km))
print(type(distance_to_moon_km))
print(type(miles_per_km))

# Code your solution to exercises 3 and 4 here:
miles_to_mars = distance_to_mars_km * miles_per_km
hours_to_mars = miles_to_mars / speed_mph
days_to_mars = round(hours_to_mars / 24, 2)

print(f"It will take {days_to_mars} days for the {shuttle_name} to reach Mars.")

# Code your solution to exercise 5 here
miles_to_moon = distance_to_moon_km * miles_per_km
hours_to_moon = miles_to_moon / speed_mph
days_to_moon = round(hours_to_moon / 24, 2)

print(f"It will take {days_to_moon} days for the {shuttle_name} to reach Mars.")
