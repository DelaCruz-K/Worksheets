#1.
Uppercase <- LETTERS
Uppercase

Lowercase <- letters
Lowercase

#1.a

eleven <- Uppercase[1:11]
eleven

#1.b
odd_letters <- Uppercase[seq(1, length(Uppercase), by = 2)]
odd_letters

#1.c

vowels <- Uppercase[Uppercase %in% c("A", "E", "I", "O", "U")]
vowels

#1.d

five_last <- tail(Lowercase,5)
five_last

#1.e

fifteen_niyon <- Lowercase [15:24]
fifteen_niyon


#2.a
City <- c("Tuguegarao City", "Manila", "Iloilo City", "Tacloban", "Samal Island",
          "Davao City")
City

#2.b
Temp <- c(42, 39, 34, 34, 30, 27)
Temp

#2.c
city_temp <- data.frame(City,Temp)
city_temp

#2.d

names(city_temp) <- c("City", "Temperature")
names(city_temp) #[1] "City"        "Temperature"

#2.e
str(city_temp)
#It shows the type which is 'data.frame', it tells us how many objects of 2 variables. 
#They also state the type of variable if the list is char(string) and num(integer)

#2.f
city_temp[3:4,]
#         City Temperature
#3 Iloilo City          34
#4    Tacloban          34

#2.g 
highest_temp <- max(city_temp$City)
highest_temp
#Taguegarao City

lowest_temp <- min(city_temp$City)
lowest_temp
#Davao City


#MATRIX

#2.a
matrix1 <- matrix(c(1:8, 11:14), nrow=3, ncol=4)
matrix1
#     [,1] [,2] [,3] [,4]
#[1,]    1    4    7   12
#[2,]    2    5    8   13
#[3,]    3    6   11   14

#2.b

matrix2 <- matrix1*2
matrix2
#     [,1] [,2] [,3] [,4]
#[1,]    2    8   14   24
#[2,]    4   10   16   26
#[3,]    6   12   22   28

#2.c
matrix2[2,]
#[1]  4 10 16 26

#2.d
son_of_matrix2 <-matrix2[1:2, 3:4]
#     [,1] [,2]
#[1,]   14   24
#[2,]   16   26

#2.e
matrix2[3, 2:3]
#[1] 12 22

#2.f
matrix2[, 4]
#[1] 24 26 28

#2.g
rownames(matrix2) <- c("isa", "dalawa", "tatlo")
colnames(matrix2) <- c("uno", "dos", "tres", "quatro")
#       uno dos tres quatro
#isa      2   8   14     24
#dalawa   4  10   16     26
#tatlo    6  12   22     28

#2.h
dim(matrix2) <- c(6,2)
matrix2
#[,1] [,2]
#[1,]    2   14
#[2,]    4   16
#[3,]    6   22
#[4,]    8   24
#[5,]   10   26
#[6,]   12   28



#ARRAY

#3.a
num_value <- c(2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1)
numArray <- array(data = rep(num_value, each = 2), dim=c(2,4,3))
numArray
#, , 1

#[,1] [,2] [,3] [,4]
#[1,]    2    3    6    7
#[2,]    2    3    6    7

#, , 2

#[,1] [,2] [,3] [,4]
#[1,]    8    9    0    3
#[2,]    8    9    0    3

#, , 3

#[,1] [,2] [,3] [,4]
#[1,]    4    5    1    2
#[2,]    4    5    1    2

#3.b
dim(numArray)
#[1] 2 rows, 4 columns, 3 groups = 3 dimensions.

#3.c
dimnames(numArray) <- list(Lowercase[1:2], Uppercase[1:4], c("1st-Dimensional Array", "2nd-Dimensional Array", "3rd-Dimensional Array"))
numArray
#, , 1st-Dimensional Array

#A B C D
#a 2 3 6 7
#b 2 3 6 7

#, , 2nd-Dimensional Array

#A B C D
#a 8 9 0 3
#b 8 9 0 3

#, , 3rd-Dimensional Array

#A B C D
#a 4 5 1 2
#b 4 5 1 2
      