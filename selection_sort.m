%------------------------ Selection sort-------------------------------

clc; clear;

% Define the array
arr = [64, 25, 12, 22, 11];
n = length(arr);

% Selection Sort Algorithm
tic;
for i = 1:n-1     % because the last element is automatically sorted
    minIndex = i; % Assume current index holds the smallest value
    
    % Find the minimum element in the remaining array
    for j = i+1:n
        if arr(j) < arr(minIndex)
            minIndex = j;
        end
    end
    
    % Swap the found minimum element with the first element
    if minIndex ~= i
        temp = arr(i);
        arr(i) = arr(minIndex);
        arr(minIndex) = temp;
    end
end
toc;

% Display sorted array
disp('Sorted Array:');
disp(arr);
