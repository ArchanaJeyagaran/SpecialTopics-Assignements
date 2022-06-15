# Special Topics Assignment 2
# Archana Jeyagaran 
# June 14, 2022

# Prompt the user to enter a three digit positive number
number<-readline("Enter a positive three digit number: ")
# set the user input to numeric
number<-as.numeric(number)

# Check if the user input is a positive three digit numeric value. 
# If not, print an error message and quit.
if(is.na(number)|number < 100|number > 999) {
  print("Invalid entry, please enter a positive three digit number. The program will now quit.")
} else {
  
  # Check if the number is narcissistic. A narcissistic number, or an Armstrong number, 
  # is a number that is equal to the sum of the cubes of its own digits. 
  # 153, 370, 371, 407 are three digit Armstrong numbers.
  
  # use the mod function to determine the last digit 
  last_digit <- number %% 10
  #remove last digit using floor function 
  number_2digits <- floor(number/10)
  
  # determine second digit 
  second_digit <- number_2digits %% 10
  # remove second digit using floor function 
  number_1digit <- floor(number_2digits/10)
  
  # determine first digit
  first_digit <- number_1digit %% 10
  # if statement to check if the sum the cubes of each digit equals to the intital input
  if(sum(last_digit^3,second_digit^3, first_digit^3) == number){
    print(paste(number, "is an armstrong number"))
  } else{
    print(paste(number, "is not an Armstrong number"))
  }
  
}


#Test to see if forking worked 

