% assigning values from given formulas
constant = 1.458 * 10^-6;
e_constant = 110.4;
R = 287.05;

disp('T : to convert Celsius to Kelvin'); % statement shown to user
option = input('Enter temperature in Celsius : '); % query where user enters celsius value
T = option + 273.15;
fprintf('Temperature in Kelvin is : %.1f\n', T); % inputted value is converted into Kelvin and printed to 1 d.p.

disp('P : to convert pressure to bars'); % statement shown to user
option = input('Enter pressure : '); % query where user enters pressure value
P = R * T;
PB = P/10^5; % conversion of pressure value to pressure bar
fprintf('Pressure in bars is : %.5f\n', PB); % inputted value is converted into pressure bars and printed to 5 d.p.

ad = P / R * T;
fprintf('Air density is : %.3f\n', ad); % air density calculation displayed to 3 d.p.
dv = ((constant) * (T^3/2)) / (T + e_constant); % dynamic viscosity calculation manipulated with assigned variable names
fprintf('Dynamic viscosity is : %.4f\n', dv); % dynamic viscosity calculated from above calculations and printed to 4 d.p.
kv = dv / ad;
fprintf('Kinematic viscosity is : %.10f\n', kv); % kinematic viscosity calculated from above calculations and printed to 10 d.p.

