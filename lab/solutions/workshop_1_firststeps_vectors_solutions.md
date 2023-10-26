# Workshop 1 - First Steps & Vectors

## Question 1


In economics, the formula for calculating future value (FV) of a present sum of money is given by FV = PV * (1 + r)^n, where PV is the present value of the money, r is the interest rate, and n is the number of periods.

Calculate the future value of $1000 in 5 years, with an annual interest rate of 8% using the above formula.

Your output should be:

```r
1469.3280768
```

**Solution:**
```
PV <- 1000
FV <- PV * (1 + 0.08)^5
FV
```

## Question 2

Yusuf works at the water quality control department of a firm. He tests the quality of water for the tap water of the city of Istanbul. If the weekly rate of contamination for the tap water is over or equal to 1.907%, then he marks the weekly tap water as dangerous. After he takes the mean, he rounds the number to three decimals.

Given below are the contamination rates of the tap water for a week.

- Monday - 0.895%
- Tuesday - 3.101%
- Wednesday - 1.708%
- Thursday - 1.800%
- Friday - 1.543%
- Saturday - 1.707%
- Sunday - 2.592%

What does Yusuf mark the tap water as? Print the rounded mean contamination rate of the week. 

- If you don't round it, then the tap water is not dangerous. But when you round, it is dangerous. This can make you understand the round() function and it's purpose.

Your output should be:

```r
1.907
```

**First Steps Solution:**

```r
weekly_sum <- 0.895 + 3.101 + 1.708 + 1.800 + 1.543 + 1.707 + 2.592
weekly_rate <- weekly_sum / 7
round(weekly_rate, 3)
```

**Easier Solution:**

```r
weekly_rate <- mean(c(0.895, 3.101, 1.708, 1.800, 1.543, 1.707, 2.592))
round(weekly_rate, 3)
```

## Question 3

Suppose Metallica has a concert scheduled, and they want to make sure their setlist fits within the allotted time frame. Using the following information, calculate how long their setlist would be in hours?

Their setlist consists of 18 songs, with the following average lengths:
  
* 6 short songs: Avg. 3 minutes and 30 seconds
* 6 medium songs: Avg. 5 minutes
* 6 long songs: Avg. 8 minutes and 30 seconds

On average, they take a 30-second break between each song.

1) Print how long their setlist would be in seconds, and in hours (rounded to two decimal places).
2) Assuming the concert has a 2-hour time limit, will Metallica's setlist fit within the allotted time frame? Print TRUE or FALSE. 

Your output should be:

```r
6630
1.84
TRUE
```

**Solution:**
```r
Short_songs <- (3*60+30)*6
Medium_songs<-5*60*6
Long_songs <- (8*60+30)*6
Breaks<-17*30


Total_song_length_in_seconds<-Short_songs+Medium_songs+Long_songs+Breaks

Total_song_length_in_hours<-Total_song_length_in_seconds / 3600
rounded<-round(Total_song_length_in_hours,2)
compare<- 2 >rounded

Total_song_length_in_seconds
rounded
compare
```

## Question 4

Ilgın is a nutritionist and he is trying to create a program to help his clients calculate their daily calorie intake based on their lifestyle and activity level. Create a program that should calculate the daily calorie intake for the client using the following formula:

* For males: BMR = (10 × weight in kg) + (6.25 × height in cm) - (5 × age in years) + 5
* For females: BMR = (10 × weight in kg) + (6.25 × height in cm) - (5 × age in years) - 161

* Daily Calorie Intake for Sedentary Person: BMR × 1.2
* Daily Calorie Intake for Active Person: BMR × 1.725

1) What is the daily calorie intake for a 40-year-old male who weighs 80kg and is 175cm tall and leads an active lifestyle?

2) What is the daily calorie intake for a 26-year-old female who weighs 63kg and is 168 tall and leads an sedentary lifestyle?

**Solution:**

```r
w <- 80
h <- 175
a <- 40

bmr_1 <- (10 * w) + (6.25 * h) - (5 * a) + 5 
daily_calorie_intake_1 <- bmr_1 * 1.725
daily_calorie_intake_1

w <- 63
h <- 168
a <- 26

bmr_2 <- (10 * w) + (6.25 * h) - (5 * a) - 161
daily_calorie_intake_2 <- bmr_2 * 1.2
daily_calorie_intake_2
```

## Question 5

In order to convert a weight from kilograms to pounds, you need to use a conversion factor of 2.20462. This factor is used because there are approximately 2.20462 pounds in one kilogram. With using that information ;

```r

kilograms <- c(80, 93, 147, 53, 71, 18, 140)

```

Convert these measurements to pounds.

Your output should be:


```r
176.36960 205.02966 324.07914 116.84486 156.52802  39.68316 308.64680

```


**Solution:**

```r
kilograms <- c(80, 93, 147, 53, 71, 18, 140)
pounds <- kilograms * 2.20462
pounds

```

## Question 6 - Named Vectors

Let's create a new vector for the grades of the students in Beacon Hills High for the subject Math.

| Name |Grade|
|--- |---|
|Jason|46|
|Lydia|98|
|Scott|51|
|Stiles|84|
|Allison|76|
        
* Hint: You can use `names()` to assign names to a vector.

1) Print the vector.
2) Create a new vector with the same names and the students' student ids. Generate their student ids (respectively, starting from Jason, ending with Allison) starting from 1000 using the `seq()` function. 

Your output should be:

```r
  Jason   Lydia   Scott  Stiles Allison 
     46      98      51      84      76

  Jason   Lydia   Scott  Stiles Allison 
   1000    1001    1002    1003    1004 

```

**Solution:**

```r
student_grades <- c(Jason=46, Lydia=98, Scott=51, Stiles=84, Allison=76)
student_grades

student_ids <- seq(from=1000, to=1004, by=1)
names(student_ids) <- names(student_grades)
student_ids

```

## Question 7

 MGM's one week weather estimations are respectively 15,16,17,15,14,14,17 C° from Sunday to Saturday, respectively. Measured temperatures for that week are 17 C° for each day.

 1) First, assign the estimated values of MGM to vector named "estimations".
 2) For comparison, calculate and print the mean difference between estimations and real values.
 3) Print which days coincide with the forecast?

 Your output should be:

```r
-1.571429

 Tuesday Saturday 
      17       17 
```
 
 **Solution:**
 
 ```r
estimations <- c(Sunday=15, Monday=16, Tuesday=17, Wednesday=15, Thursday=14, Friday=14, Saturday=17)
estimations
mean_error <- mean(estimations - 17)
mean_error
estimations[estimations-17 == 0]
```

