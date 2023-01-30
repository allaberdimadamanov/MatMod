model Project4
 parameter Real w=6;
 parameter Real g=6;
 
 Real x(start=1.2);
 Real y(start=0.6);

equation
der(x)=y;
der(y)=-g*y-w*x+6*cos(6*time);

annotation(experiment(StartTime = 0,StopTime = 66, Tplerance=1e-06,Interval = 0.05));

end Project4;
