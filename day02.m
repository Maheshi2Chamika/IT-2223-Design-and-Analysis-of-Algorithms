%for loop
for variable=1:10
    disp(variable)
end


for vari=1:2:15
    disp(vari)
end


for i = 10:-2:1
    disp(i)
end

%Write a for loop to calculate the sum of the numbers from 1 to 10
sum=0;
for m = 1:10
    sum = sum+m;
end
disp(sum)

%write a code to find the factorial
n=5;
fact=1;
for j=2:n
    fact =fact*j;
end
disp(fact)

%output displays
x=10;
disp(['The number is: ',num2str(x)])
disp("The number is: "+x)
fprintf('The number is: %d', x)
y=sprintf('The number is: %d', x)
disp(y);

%User inputs
d=input("Enter the number: ");  % to input an int
disp(['You entered',num2str(d)]);

name=input("Enter your name: ",'s'); %to input a string
disp(['You entered: ',name]);

%While loop
k=1;
while k<=10;
    disp(k);
    k=k+1;
end




