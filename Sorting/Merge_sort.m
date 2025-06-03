clc; clear;

% Define the array
arr = [64, 25, 12, 22, 11, 90];
n = length(arr);

% Merge Sort Algorithm
tic;
step = 1;
while step < n
    for left = 1:2*step:n
        mid = min(left + step - 1, n);
        right = min(left + 2*step - 1, n);
        
        % Temporary array for merging
        temp = zeros(1, right - left + 1);
        i = left;
        j = mid + 1;
        k = 1;
        
        % Merging two halves using loops
        while i <= mid && j <= right
            if arr(i) <= arr(j)
                temp(k) = arr(i);
                i = i + 1;
            else
                temp(k) = arr(j);
                j = j + 1;
            end
            k = k + 1;
        end
        
        for p = i:mid
            temp(k) = arr(p);
            k = k + 1;
        end
        
        for q = j:right
            temp(k) = arr(q);
            k = k + 1;
        end
        
        % Updating the original array
        for t = 1:length(temp)
            arr(left + t - 1) = temp(t);
        end
    end
    step = step * 2;
end
toc;

disp(arr); % Display sorted array
