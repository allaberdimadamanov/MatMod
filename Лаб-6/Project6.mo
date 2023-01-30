model Project6
 parameter Real a=0.12;
 parameter Real b=0.002;

Real S(start=10007);
Real I(start=78);
Real R(start=13);

equation

der(S)=a*S;
der(I)=a*S-b*I;
der(R)=b*I;

annotation(experiment(StartTime = 0,StopTime = 600, Tolerance=1e-06, Interval = 0.05));

end Project6;
