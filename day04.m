%{
%Get a marks from the user and print the grade and calculate GPA
gpa = zeros(1,5);
marks= zeros(1,5);

for i = 1:5
    marks(i)=input(['Enter marks for subject: '])

    if marks(i)>=90 && marks(i)<=100
        disp('Grade A');
        gpa(i)=4.0

    elseif marks(i)>=80
        disp('Grade B');
        gpa(i)=3.0

    elseif marks(i)>=70
        disp('Grade C');
        gpa(i)=2.0

    
    elseif marks(i)>=60
        disp('Grade D');
        gpa(i)=1.0

    else
        disp('Grade F');
        gpa(i)=0.0
    end
end

GPA=mean(gpa);
fprintf('\nYour GPA is : %.2f\n',GPA);

%--------------SWITCH CASE------------------------------

day = input('Enter the day(1-5) :');

switch day
    case 1
        disp('Monday');
    case 2
        disp('Tuesday');
    case 3
        disp('Wednesday');
    case 4
        disp('Thursday');
    case 5
        disp('Friday');
    otherwise
        disp('Invalid Day')
end


%-------------CALCULATOR---------------------

num1=input("Enter number 1: ")
num2=input("Enter number 2: ")
op=input("Enter the operator(+,-,*,/):",'s');

switch op
    case '+'
        result = num1 + num2;
        fprintf('Result:%.2f\n', result);

    case '-'
        result = num1 - num2;
        fprintf('Result:%.2f\n', result);
     
    case '*'
        result = num1 + num2;
        fprintf('Result:%.2f\n', result);
     
    case '/'
        if num2 ~= 0
            result = num1 / num2;
            fprintf('Result:%.2f\n', result);
        else
            disp('Error: Division by zero');
        end

    otherwise
        disp('Invalid')

end
%}

%---------------------PLOT--------------------------------
x=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
y=[0, 0.84, 0.91, 0.14, -0.76, -0.96,-0.89, -0.99, 0.66, -0.26, -0.56];

figure;
plot(x,y, '-o');
title('Line Plot: y vs x');
xlabel('x');
ylabel('y');