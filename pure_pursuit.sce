//Simulation of Pure Pursuit problem
    // Lets assume distance in Kms and time in minutes
    // The coordinates of bombers are represented using XB(t),YB(t)
    // and fighter be XF(t), YF(t).
    // Target is to compute the position of pursuer viz xf(t),yf(t), until
    // the fighter is within 10kms of bomber.
    // Once bomber is in the range of pursuer(10kms), the fighter can fire a missile.
    // If it doesn't happens within 12 minutes, the pursuit is abandoned and the target(bomber is considered escaped).

XB = [80,90,99,10,116,125,133,141,151,160,169,179,180] //X coordinates of bomber
YB = [0,-2,-5,-9,-15,-18,-23,-29,-28,-25,-21,-20,-17] //Y coordinate of bomber
vel = 20 //Velocity of figghter
YF = 50 //Y coordinate of fighter
XF = 0 //X coordinate of fighter 
for i = 1:12 //loop starts for all given values
    dist = sqrt( (YB(i) - YF)^2 + ( XB(i) - XF )^2 ) //euclidean Distance
    //angle θ of the line from the fighter to the target at a given time
    s = ((YB(i)-YF)/dist) //sin  θ
    c = ((XB(i)-XF)/dist) //cos  θ
    //position at (t+1) for the fighter
    XF = XF + vel*c
    YF = YF + vel*s
    if(dist<=10) then
        disp("Bomber Engaged")
        disp(i-1)
    end
end