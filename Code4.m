% This program calculates the required power of pump that transports water 
% from one reservoir to another in units of kW.
 
% Pipe parameters
 
L_AC=input('define the length of AC pipe in m: ');
D_AC=input('define the diameter of AC pipe in m: ');
 
L_CB=input('define the lenght of CB pipe in m: ');
D_CB=input('define the diameter of CB pipe in m: ');
 
fr=input('define the friction factor of pipes: ');
 
g=9.81; % Gravitational acceleration
 
gamma=9.81; % Unit weight of water
 
P1=3.14; %Pi number
 
 
% Reservoir parameters
 
Height_R_1=input('define the water height first reservoir in m: ');
Height_R_2=input('define the water height second reservoir in m: ');
 
% Pump Parameters
 
Eff=input('define the efficiency of the pump thats going to be used: ');
 
% Flow parameters
 
Q=input('define the flow rate in m^3/sec: ');
 
% Calculations
 
% Flow velocity
 
A_AC=P1*((D_AC)^2)/4;
A_CB=P1*((D_CB)^2)/4;
 
 
V_AC=Q/(A_AC);
V_CB=Q/(A_CB);
 
% Head losses
 
hk_AC=fr*(L_AC/D_AC)*((V_AC)^2)/(2*g);
hk_CB=fr*(L_CB/D_CB)*((V_CB)^2)/(2*g);
 
% Total height that pump can elevate
 
Ht=abs(Height_R_1-Height_R_2)+hk_AC+hk_CB;
 
% Power of the pump
 
Np=(gamma*Q*Ht)/Eff;