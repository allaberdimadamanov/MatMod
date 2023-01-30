model Project8
parameter Real p_cr = 35;
parameter Real N = 25;
parameter Real q = 1;

parameter Real tau1 = 17;
parameter Real tau2 = 21;

parameter Real p1 = 10.5;
parameter Real p2 = 8.6;

parameter Real d = 0.00066;


parameter Real a1 = p_cr/(tau1*tau1*p1*p1*N*q);
parameter Real a2 = p_cr/(tau2*tau2*p2*p2*N*q);
parameter Real b = p_cr/(tau1*tau1*tau2*tau2*p1*p1*p2*p2*N*q);
parameter Real c1 = (p_cr-p1)/(tau1*p1);
parameter Real c2 = (p_cr-p2)/(tau2*p2);

Real M1_1(start=6.7);
Real M2_1(start=5.9);

Real M1_2(start=6.7);
Real M2_2(start=5.9);

equation
der(M1_1) = M1_1 - (a1/c1)*M1_1*M1_1 - (b/c1)*M1_1*M2_1;
der(M2_1) = (c2/c1)*M2_1 - (a2/c1)*M2_1*M2_1 - (b/c1)*M1_1*M2_1;

equation
der(M1_2) = M1_2 - (a1/c1)*M1_2*M1_2 - (b/c1)*M1_2*M2_2;
der(M2_2) = (c2/c1)*M2_2 - (a2/c1)*M2_2*M2_2 - (b/c1+d)*M1_2*M2_2;

annotation(experiment(StartTime=0, StopTime=20, Tplerance=1e-06,Interval=0.05));

end Project8;
