#Numeric vector that repeats the sequence of all odd 
# numbers between 1 to 10 two times, with each number repeated

# Generate the odd numbers between 1 and 10
odd_numbers <- seq(1, 10, by = 2)

# Repeat each odd number
repeated_odds <- rep(odd_numbers, each = 2)

# Repeat the entire sequence twice
final_vector <- rep(repeated_odds, times = 2)

# Print the resulting vector
print(final_vector)
