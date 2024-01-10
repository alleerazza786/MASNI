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
    
    ABCSNI = n * sqrt((5 * n^2 - 10 * n + 29) / (25 * n^3 - 110 * n^2 + 295 * n - 266)) + ...
             n * sqrt((10 * n^2 - 30 * n + 74) / (25 * n^4 - 150 * n^3 + 605 * n^2 - 1140 * n + 1444)) + ...
             n * sqrt((10 * n^2 - 22 * n + 36) / (25 * n^4 - 110 * n^3 + 295 * n^2 - 266 * n));
    AGSNI = n + n * (5 * n^2 - 10 * n + 31) / sqrt(25 * n^3 - 110 * n^2 + 295 * n - 266) + ...
            n * (5 * n^2 - 11 * n + 19) / (2 * sqrt(25 * n^4 - 110 * n^3 + 295 * n^2 - 266 * n));
    GASNI = n + n * sqrt(25 * n^4 - 110 * n^3 + 295 * n^2 - 266 * n) / (5 * n^2 - 11 * n + 19) + ...
            2 * n * sqrt(25 * n^3 - 110 * n^2 + 295 * n - 266) / (5 * n^2 - 10 * n + 31);
    HSN = 2 * n / (5 * n^2 - 10 * n + 31) + n / (5 * n^2 - 15 * n + 38) + n / (5 * n^2 - 11 * n + 19);
    SDSNI = 2 * n + n * (25 * n^4 - 150 * n^3 + 630 * n^2 - 1210 * n + 1493) / (25 * n^3 - 110 * n^2 + 295 * n - 266) + ...
            n * (50 * n^4 - 220 * n^3 + 654 * n^2 - 1140 * n + 1444) / (25 * n^4 - 110 * n^3 + 295 * n^2 - 266 * n);
    ISSNI = n * (25 * n^3 - 110 * n^2 + 295 * n - 266) / (5 * n^2 - 10 * n + 31) + ...
            0.5 * n * (5 * n^2 - 15 * n + 38) + ...
            0.5 * n * (25 * n^4 - 110 * n^3 + 295 * n^2 - 266 * n) / (5 * n^2 - 11 * n + 19);
    ASNI = n * ((25 * n^3 - 110 * n^2 + 295 * n - 266) / (5 * n^2 - 10 * n + 29))^3 + ...
           n * ((25 * n^4 - 150 * n^3 + 605 * n^2 - 1140 * n + 1444) / (10 * n^2 - 30 * n + 74))^3 + ...
           n * ((25 * n^4 - 110 * n^3 + 295 * n^2 - 266 * n) / (10 * n^2 - 22 * n + 36))^3;

    % Store values in arrays
    ABCSNI_values(i) = ABCSNI;
    AGSNI_values(i) = AGSNI;
    GASNI_values(i) = GASNI;
    HSN_values(i) = HSN;
    SDSNI_values(i) = SDSNI;
    ISSNI_values(i) = ISSNI;
    ASNI_values(i) = ASNI;
end

% Create a table
table_values = table(n_values', ABCSNI_values', AGSNI_values', GASNI_values', HSN_values', SDSNI_values', ISSNI_values', ASNI_values', ...
                     'VariableNames', {'n', 'ABCSNI', 'AGSNI', 'GASNI', 'HSN', 'SDSNI', 'ISSNI', 'ASNI'});

% Display the table
disp(table_values);
