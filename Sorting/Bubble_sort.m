clc; clear;

% Define the array
arr = [64, 25, 12, 22, 11, 90];
n = length(arr);

% Bubble Sort Algorithm
tic;
for i = 1:n-1
    for j = 1:n-i              % inner loop for comparison
        if arr(j) > arr(j+1)
            % Swap elements
            temp = arr(j);
            arr(j) = arr(j+1);
            arr(j+1) = temp;
        end
    end
end
toc;

% Display sorted array
disp('Sorted Array:');
disp(arr);
