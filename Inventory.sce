//Simulation of Inventory Problem 
    // There are 3 day lag between order and delivery/arrival.
    // The merchandise is ordered at the end of the day(i) and received at the start of fourth day(i+3).
    // For each unit of inventory the carrying cost of each night is Rs.0.75.
    // Each unit out of stock when ordered results into the loss of goodwill worth Rs.2.0 per unit plus loss of Rs.16.00 net income,
    // that would have resulted in its sale. Or a total loss of Rs. 18.00 per unit forever.
    // The demand in a day can be for any number of units between 0 and 99, each equiprobable.
    // There is never more than one replenishment order outstanding.
    // Initially we have 115 units on hand and no reorder outstanding.

t=(floor(rand(1:90)*100)+1) //random number generator

x=[125,125,150,175,175] //reorder point
y=[150,250,250,250,300] //reorder quantity

for policy = 1:5
    curr=115 //no of tyres in stock
    p=0 //profit
    l=0 //loss
    d=3 //reorder day left

    for i = 1:90
        limit = x(policy)
        reorder = y(policy)
        cust = t(i) //no. of cutomers on ith day
        if(i>d) then //order arrived
            curr = curr+reorder
            d=90
        end
        if(cust>curr) then //loss
            p=p+(curr*16)
            l=l+(cust-curr)*18
            curr=0
        else
            p=cust*16 //no. loss
            curr=curr-cust
            l=l+(curr*0.75)
        end
        if((curr<=limit)&(d==90)) then //need to reorder
            d=i+3
        end
    end
    disp("policy",policy)
    disp("profit",p)
    disp("loss",l)
    disp("remaining",curr)
end