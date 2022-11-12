// Given the age of different persons with their frequencies, calculate simple mean of age and plot graph between age and frequency.

age=[16,17,18,19,20]
freq =[2;5;11;14;19]
total = age*freq
mean = total/sum(freq) //mean
disp(mean)
plot(age, freq) //Plotting age and frequency