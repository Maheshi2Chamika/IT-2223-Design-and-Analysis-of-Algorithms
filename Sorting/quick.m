function sortedArray = quickSort(arr)
    if numel(arr) <= 1
        sortedArray = arr;
        return;
    end

    % Choose a pivot (first element)
    pivot = arr(1);
    
    % Partition the array into left (smaller than pivot) and right (greater than pivot)
    leftArr = arr(arr < pivot);
    rightArr = arr(arr > pivot);
    middleArr = arr(arr == pivot); % Handles duplicate values

    % Recursively sort left and right sub-arrays
    sortedArray = [quickSort(leftArr), middleArr, quickSort(rightArr)];
end

% Example Usage:
arr = [8, 3, 5, 1, 2, 7];  % Input array
sortedArray = quickSort(arr);
disp(sortedArray);
