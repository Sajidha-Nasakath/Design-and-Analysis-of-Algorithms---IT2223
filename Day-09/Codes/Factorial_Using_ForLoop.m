n = 5;          % Number to find factorial of
fact = 1;       % Initialize factorial result

for i = 1:n
    fact = fact * i;  % Multiply fact by each number from 1 to n
end

disp(['Factorial of ', num2str(n), ' is ', num2str(fact)]);
