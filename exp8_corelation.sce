//To find the Covariance and Correlation For age and frequency Where
age=[46;53;29;61;36;39;47;49;52;38;55;32;57;54;44]
frequency=[12;15;7;17;10;11;11;12;14;9;16;8;18;14;12]
cv=cov(age,frequency) //covariance
cr=correl(age,frequency) //correlation
disp('Covarience')
disp(cv)
disp("correlation")
disp(cr)
