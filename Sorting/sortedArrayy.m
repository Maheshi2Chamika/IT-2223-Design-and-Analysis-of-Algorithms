function sortedArray = mergeSort(arr)
    if numel(arr) <= 1
        sortedArray = arr;
        return;
    end

    mid = floor(numel(arr) / 2);

    % Recursively sort both halves
    leftHalf = mergeSort(arr(1:mid));
    rightHalf = mergeSort(arr(mid+1:end));

    % Merge sorted halves
    sortedArray = merge(leftHalf, rightHalf);
end

function mergedArray = merge(leftArr, rightArr)
    i = 1; j = 1; k = 1;
    mergedArray = zeros(1, numel(leftArr) + numel(rightArr));

    while i <= numel(leftArr) && j <= numel(rightArr)
        if leftArr(i) <= rightArr(j)
            mergedArray(k) = leftArr(i);
            i = i + 1;
        else
            mergedArray(k) = rightArr(j);
            j = j + 1;
        end
        k = k + 1;
    end

    while i <= numel(leftArr)
        mergedArray(k) = leftArr(i);
        i = i + 1;
        k = k + 1;
    end

    while j <= numel(rightArr)
        mergedArray(k) = rightArr(j);
        j = j + 1;
        k = k + 1;
    end
end

% Example Usage:
arr = [8, 3, 5, 1, 2, 7];  % Your input array
sortedArray = mergeSort(arr);
disp(sortedArray);
