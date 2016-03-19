Final Grade Breakdown is a way to calculate final grade based on each component earned in the span of a course. Total final grades can be broken down into: midterm scores, final scores, laboratory, homework, and others (detail can be seen in Component Breakdown tab). Once the data is weighted, the program will convert the raw numerical total grade (out of 100) into a letter grade (from A to F), which is explained in the Final Grade Range tab. 

### Motivation


When students get their midterm grade, they often do not know how to interpret their scores with respect to their final grades. This shiny app is created to help students see their standings in the class with their given grades so far.

### Instructions


The user is required to enter:

1. Midterm 1 (out of 100)
2. Midterm 2 (out of 100)
3. Midterm 3 (out of 100)
4. Final Exam (out of 100%)
5. Homework (out of 100%)
6. Reading Quiz (out of 100%)
7. Lab Grade (out of 100%)
8. Discussion Section (out of 100%)

Once all the inputs are entered, the server will run background computation (see Computational Background for more details) to compute the average midterm grades, average non-midterm grades, the raw total points (out of 100), and the final letter grade.

### Computational Background 


In the background, each of the component is weighted by: 

1. Midterm 1 (13.33%)
2. Midterm 2 (13.33%)
3. Midterm 3 (13.33%)
4. Final Exam (20%)
5. Homework (10%)
6. Reading Quiz (5%)
7. Lab Grade (15%)
8. Discussion Section (10%)

For average of midterm grades, the calculations are done by: adding total midterm grades (out of 300) and divide it by 3 to get the average out of 100 point range. In order to convert it to 40% weight, I multiply it by 0.4.

For average of non-midterm grades, the Homework, Reading Quiz, Lab Grade, and Discussion Section are weighted and computed to get the total of 40%.  

For raw total point, we add the average of midterm grades, the average of non-midterm grades, and the weighted score of final exam (20%) to get the accumulated total points. 

The raw total point is then converted into letter grade through the scale below:

* 0-59: F
* 60-69: D
* 70-72: C-
* 73-76: C
* 77-79: C+
* 80-82: B-
* 83-86: B
* 87-89: B+
* 90-92: A-
* 93-100: A

I hope that this will help students to understand where they stand and what they need to get in each of the component in order to get the ideal grades. 
