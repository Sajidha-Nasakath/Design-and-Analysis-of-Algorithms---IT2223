array=[3 5 7 9 11 13];
target=9;
n=length(array);
found = false;

for i=1:n
    if array(i) == target
        found = true;
        index = i;
        break;
    end
end

if found
    fprintf("The target element is found at : %d \n", index);
else
    disp("The target element is not found");
end