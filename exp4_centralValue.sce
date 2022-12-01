list=[1,2,9,5,4,6,3,3]
disp("mean: ",sum(list)/length(list))
list=gsort(list)
disp(list)
len=length(list)
disp("median: ")
if (modulo(len,2)==1) then
    disp(list((len/2)+1))

else
    disp((list(len/2)+list((len/2)+1))/2)
end
disp("variance")
disp(variance(list))
disp("standard deviation")
disp(stdev(list))