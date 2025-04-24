num_students = 5;
marks = zeros(1, num_students);

for i = 1:num_students
    marks(i) = input(sprintf('Enter marks for student %d (out of 100): ', i));

    if marks(i) >= 90 && marks(i) <= 100
        grade = 'A';
    elseif marks(i) >= 80 && marks(i) <= 89
        grade = 'B';
    elseif marks(i) >= 70 && marks(i) <= 79
        grade = 'C';
    elseif marks(i) >= 60 && marks(i) <= 69
        grade = 'D';
    else
        grade = 'F';
    end
    
    fprintf('Student %d: Marks = %d, Grade = %s\n', i, marks(i), grade);
end

while true
    fprintf('\nMenu:\n');
    fprintf('1. Show all marks as a bar chart\n');
    fprintf('2. Show average marks\n');
    fprintf('3. Exit\n');

    choice = input('Select an option (1-3): ');

    switch choice
        case 1
            figure;
            bar(marks);
            title('Marks of Students');
            xlabel('Student');
            ylabel('Marks');
            grid on;
            
        case 2
            avg_marks = mean(marks);
            fprintf('Average Marks: %.2f\n', avg_marks);
            
        case 3
            fprintf('Thank you for using the program. Have a great day!\n');
            break;
            
        otherwise
            fprintf('Invalid selection! Please choose a valid option (1-3).\n');
    end

end