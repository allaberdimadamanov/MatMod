model Project7
 parameter Real a=0.51;
 parameter Real b=0.32;
 parameter Real N=1682;

Real n(start=11);
equation
der(n)= (a*time+(b*n)*time*time)*(N-n);

annotation(experiment(StartTime = 0,StopTime = 5, Tolerance = 1e-6, Interval = 0.05));

end Project7;
