%step 1
K1 =5;
K2 = 1.5;
Rt = 2;
num= Rt;
den = [44,1];
sys = tf(num, den);
K3=1;

%step 2
G = K1*K2*sys; %open loop transfer function
H = feedback(G,K3); %closed loop transfer function
stepplot(H); % plotting step response
[y,t]= step(H);
y(length(y)) %getting steady state error of H transfer function

%step 3 increase K1 = 10
