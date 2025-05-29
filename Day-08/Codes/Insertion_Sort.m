array = [64, 34, 25, 12, 22, 11, 90];

n = length(array);

for i = 2:n         
    key = array(i);
    j = i - 1;
    
    while j >= 1 && array(j) > key
        array(j + 1) = array(j);
        j = j - 1;
    end
    
    array(j + 1) = key;
end

disp('Sorted array: ');
disp(array);
