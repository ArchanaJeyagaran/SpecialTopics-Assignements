# Special Topics in Biomedical Communications
# Assignment 3
# June 24, 2022
# Archana Jeyagaran

# load txt file with dictionary of words 
setwd("~/MBiotech Year 1/MSC 2011H Special Topics in Biomedical Communications/Assignments/GitSpecialTopics-Assignements")
# get working directory 
getwd()

# Read word list 
fruits <- scan(file="HangmanFruits.txt", what="", sep = "\n")
# separate elements with one or more whitespace
fruitsdata <- strsplit(fruits, "[[:space:]]+")

# Choose a random element from the list
randomword <- fruitsdata[[sample(1:length(fruitsdata),size=1)]]




# Inform the user on the length of the secret word
numberofletters<-nchar(randomword, allowNA = F)
letters <- as.list(strsplit(randomword, "")[[1]])
print(letters)
print(paste("Your word contains",numberofletters, "letters"))


# Inform the user about the number of wrong guesses/tries allowed
incorrectattempts <- as.integer(0)
# incorrectattempts <- 0
typeof(incorrectattempts)

print(incorrectattempts)

# Ask for user input. The user is expected to enter one character only
while (incorrectattempts < 3) {
  input <- readline(paste("Please input one letter a-z. 
                          You have the following number of incorrect attempts left:", 
                          (3-incorrectattempts)))
  
  # Check to see if the user input is in the secret word
  if( input %in% letters) {
    # remove the input letter from the list of letters in randomword
    letters = letters[letters != input]
    print(letters)
    # If yes, notify user and ask for next letter
    print("This was a correct attempt")
    
  } else{
    # If not, notify user.
    print("Sorry your guess was incorrect")
    incorrectattempts = incorrectattempts + 1
  }
  # If user guesses all the letter, notify user that they’ve won. Reveal secret and exit.
  
  if(length(letters) == 0) {
    print("You Win! :)")
    print(paste("Your word was:", randomword))
  }
}
# If tries are exhausted, notify user that they’ve lost. Reveal secret and exit.
if (incorrectattempts >=3) {
  print("Sorry you lost :(")
  print(paste("The word was: ", randomword))
}











