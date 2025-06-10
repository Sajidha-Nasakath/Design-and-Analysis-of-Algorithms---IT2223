arr = [5,2,9,1,3];

function sorted = quickSort(arr)
    if length(arr) <= 1
        sorted = arr;
        return;
    end

    pivot = arr(1);
    left = arr(arr < pivot);
    right = arr(arr > pivot);
    equal = arr(arr == pivot);

    sorted = [quickSort(left), equal, quickSort(right)];
end

sortedArray = quickSort(arr);

disp('Sorted array:');
disp(sortedArray);
