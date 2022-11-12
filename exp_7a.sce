// Generate a list of 100 random numbers between 10-100 representing the age of the people. 
// Draw the bar graph of people between the age of 10-20, 21-30,31-40, 41-50,51-60,61-70,71-80,81-90,91-100.

A=grand(1,10,"bet",1,100)*100; //random number generation
disp(A)
histplot(10,A); //plotting bar graph 
xtitle("random no","age.group","freq")