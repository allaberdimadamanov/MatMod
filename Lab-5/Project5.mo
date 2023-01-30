model Project5
 parameter Real a=0.51;
 parameter Real b=0.046;
 parameter Real c=0.41;
 parameter Real d=0.036;
 
Real x(start=6);
Real y(start=22);

equation
der(x)=-a*x+b*x*y;
der(y)=c*y-d*x*y;

annotation(experiment(StartTime = 0,StopTime = 250,Tplerance=1e-06,Interval = 0.05));

end Project5;
