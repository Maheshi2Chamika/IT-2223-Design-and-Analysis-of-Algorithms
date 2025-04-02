A=[1,2,3]   %used comma to get row vector

B=[1;2;3]   %used semicolan to get column vector

P=[1 2 3; 4 5 6; 7 8 9]

size(A)     %to get the size of matrix

numel(A)    %to get the number of elements in the matrix

sum(P, 1)

sum(sum(P)) %to get sum of all elements in the matrix

min(P)       %minimum element 

max(P)       %maximum element

min(min(P))  %minimum element in the matrix

max(max(P))  %maximum element in the matrix

P(4)         %matrix_name(index)

P(2,1)       %matrix_name(row,index)

P(1,:)       %All elements in first row

P(:,2)       %All elements in second column

P(1,end)     %First row,last item

P(end,2)     %last column second row

%Matrix multiplication
X=[2 3; 3 1]
Y=[3 2; 2 3]
X*Y

%to get zero matrix
Q=zeros(2,3)  

Z=[2 9; 7 8; 9 6]

R=[X;Z]


%..............If else........................
if(mod(4,2)==1)
    disp('The number is even')
else
    disp('The number is odd')
end


