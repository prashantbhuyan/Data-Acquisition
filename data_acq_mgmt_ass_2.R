# Prashant B. Bhuyan
# 9.7.2014
# Data Aquisition & Management ass_2

##### Question 1 #####

# 1a) Assign 5 people to a vector called queue:
queue <- c("james", "mary", "steve", "alex", "patricia")
# > queue
# [1] "james"    "mary"     "steve"    "alex"     "patricia"

# 1b) Harold joins 
queueState2 <- append(queue, "harold")
# > queueState2
# [1] "james"    "mary"     "steve"    "alex"     "patricia" "harold" 

# 1c) James has checked out
queueState3 <- queueState2[-1]
# > queueState3
# [1] "mary"     "steve"    "alex"     "patricia" "harold"  

# 1d) Pam has cut in front of Steve
queueState4 <- append(queueState3, "pam", 1)
# > queueState4
# [1] "mary"     "pam"      "steve"    "alex"     "patricia" "harold"  

# 1e) Harold left
queueState5 <- queueState4[-6]
# > queueState5
# [1] "mary"     "pam"      "steve"    "alex"     "patricia"

# 1f) Alex left
queueState6 <- queueState5[-(match(as.character("alex"),queueState5))]
# > queueState6
# [1] "mary"     "pam"      "steve"    "patricia"

# 1g) ID Patricia's position in line
patriciaPos <- match(as.character("patricia"), queueState6)
# > patriciaPos
# [1] 4

# 1h) Count the number people in line
numPeopleInQueue <- length(queueState6)
# > numPeopleInQueue
# [1] 4

##### Question 2 #####

discFunc <- function(a = 0, b= 0, c= 0){
   val <- b^2 - 4*a*c
   if(val == 0){
     print("There is one real solution.")
     }
   else if(val < 0){
     print("There are two conjugate complex solutions.")
     }
   else{
     print("There are two real solutions.")
     }
   }

# Test Cases:
# Use the Discriminant to determine the number and type of solutions
# to the given quadratic equation. 
#
# Test #1: 
# 2x^2 + x - 1 = 0 (Given)

discFunc(2,1,-1)

# Test # 1 Answer: 
# [1] "There are two real solutions."

# Test #2: 
# (4/3)x^2 - 2x + 3/4 = 0 (Given)

discFunc(4/3,-2,3/4)

# Test # 2 Answer: 
# [1] "There is one real solution. "

# Test #3:
# 2x² + 5x + 5 = 0 (Given)

discFunc(2,5,5)

# Test #3 Answer:
# [1] "There are two conjugate complex solutions."


##### Question 3 #####

> count = 0
> for(i in 1:1000){
   if(i%%3!=0 && i%%7!=0 && i%%11!=0){
     count = count +1
     print(i)
     }
   }

# [1] 1
# [1] 2
# [1] 4
# [1] 5
# [1] 8
# [1] 10
# [1] 13
# [1] 16
# [1] 17
# [1] 19
# [1] 20
# [1] 23

> print(count)
# [1] 520

##### Question 4 #####

> pythFunc <- function(a = 0,b = 0, c = 0){
   sideVec <- c(a,b,c)
   longestSide <- max(sideVec)
   sumSides = 0
   sideSquared <- sideVec^2
   longestSideSquared <- max(sideSquared)
   for(i in sideSquared){
     sumSides = sumSides + i
     }
   if((sumSides - longestSideSquared) == longestSideSquared){
     print("Success: The input numbers are Pythagorean Triples!")
     }
   else{
     print("Failure: The input numbers are NOT Pythagorean Triples!")
     }
   }

> pythFunc(3,4,5)
# [1] "Success: The input numbers are Pythagorean Triples!"
> pythFunc(1,2,4)
# [1] "Failure: The input numbers are NOT Pythagorean Triples!"
> pythFunc(5,12,13)
# [1] "Success: The Input Numbers are Pythagorean Triples!"
> pythFunc(8,15,17)
# [1] "Success: The Input Numbers are Pythagorean Triples!"
# > pythFunc(7,24,25)
# [1] "Success: The Input Numbers are Pythagorean Triples!"
> pythFunc(20,21,29)
# [1] "Success: The Input Numbers are Pythagorean Triples!"
> pythFunc(40,42,58)
# [1] "Success: The Input Numbers are Pythagorean Triples!"
> pythFunc(49,48,50)
# [1] "Failure: The Input Numbers are NOT Pythagorean Triples!"
> pythFunc(14,48,50)
# [1] "Success: The Input Numbers are Pythagorean Triples!"
> pythFunc(30,40,50)
# [1] "Success: The Input Numbers are Pythagorean Triples!"
> 
