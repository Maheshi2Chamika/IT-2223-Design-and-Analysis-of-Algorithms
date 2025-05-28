clc; clear;

% Define the array
arr = [64, 25, 12, 22, 11, 90];
n = length(arr);

% Insertion Sort Algorithm
tic;
for i = 2:n
    key = arr(i);
    j = i - 1;
    
    % Move elements that are greater than key one position ahead
    while j >= 1 && arr(j) > key
        arr(j + 1) = arr(j);
        j = j - 1;
    end
    
    arr(j + 1) = key;
end
toc;

% Display sorted array
disp('Sorted Array:');
disp(arr);
