% Define the range of n
n_values = 3:15;

% Initialize arrays to store the values for each formula
ABCSNI_values = zeros(size(n_values));
AGSNI_values = zeros(size(n_values));
GASNI_values = zeros(size(n_values));
HSN_values = zeros(size(n_values));
SDSNI_values = zeros(size(n_values));
ISSNI_values = zeros(size(n_values));
ASNI_values = zeros(size(n_values));

% Calculate values for each formula for varying n
for i = 1:length(n_values)
    n = n_values(i);
    
    ABCSNI_values(i) = 2*n*((27*n-32)/(170*n^2-370*n+200))^(1/2) + n*((5*n^2+12*n-22)/(85*n^3-185*n^2+100*n))^(1/2);
    AGSNI_values(i) = n*( (27*n-30)/sqrt(170*n^2-370*n+200) ) + n*( (5*n^2+12*n-20)/(2*sqrt(85*n^3-185*n^2+100*n)) );
    GASNI_values(i) = 4*n*sqrt(170*n^2-370*n+200)/(27*n-30) + 2*n*sqrt(85*n^3-185*n^2+100*n)/(5*n^2+12*n-20);
    HSN_values(i) = (4*n/(27*n-30)) + (2*n/(5*n^2+12*n-20));
    SDSNI_values(i) = 2*n*((389*n^2-880*n+500)/(170*n^2-370*n+200)) + n*((25*n^4-50*n^3+314*n^2-680*n+400)/(85*n^3-185*n^2+100*n));
    ISSNI_values(i) = 2*n*((170*n^2-370*n+200)/(27*n-30)) + n*((85*n^3-185*n^2+100*n)/(5*n^2+12*n-20));
    ASNI_values(i) = 2*n*((170*n^2-370*n+200)/(27*n-32))^3 + n*((85*n^3-185*n^2+100*n)/(5*n^2+12*n-22));
end

% Create a table
table_values = table(n_values', ABCSNI_values', AGSNI_values', GASNI_values', HSN_values', SDSNI_values', ISSNI_values', ASNI_values', ...
                     'VariableNames', {'n', 'ABCSNI', 'AGSNI', 'GASNI', 'HSN', 'SDSNI', 'ISSNI', 'ASNI'});

% Display the table
disp(table_values);
