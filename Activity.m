%Create aarray with 1000 numbers
%Use tic/toc to measure time for:
    %Linear serch
    %Binary search(after sorting)
%Compare results

clc; clear;

% Create an array with 1000 random numbers
a = randi([1, 10000], 1, 1000);
target = a(randi(length(a)));


% Linear Search
found = false;
tic;                  %to turn on the timer
for i = 1:length(a)
    if a(i) == target
        found = true;
        index = i;
        break;
    end
end
linear_time = toc;    %to stop the timer
if found
    fprintf('Linear search: Found at index %d\n', index);
else
    fprintf('Linear search: Not found!\n');
end

% Binary Search (after sorting)
a_sorted = sort(a);
startPoint = 1;
endPoint = length(a_sorted);
found = false;

tic;
while startPoint <= endPoint
    mid = floor((startPoint + endPoint) / 2);
    
    if a_sorted(mid) == target
        found = true;
        index = mid;
        break;
    elseif target < a_sorted(mid)
        endPoint = mid - 1;
    else
        startPoint = mid + 1;
    end
end
binary_time = toc;
if found
    fprintf('Binary search: Found at index %d\n', index);
else
    fprintf('Binary search: Not found!\n');
end

% Comparing results
fprintf('Linear Search Time: %.6f seconds\n', linear_time);
fprintf('Binary Search Time: %.6f seconds\n', binary_time);
