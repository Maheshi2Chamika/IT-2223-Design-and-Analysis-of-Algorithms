num_voters = input('Enter the total number of voters: ');


votes = zeros(1, 4); 

for i = 1:num_voters
    fprintf('\nVoting Menu:\n');
    fprintf('1. Candidate A\n');
    fprintf('2. Candidate B\n');
    fprintf('3. Candidate C\n');
    fprintf('4. Candidate D\n');
    
    choice = input(sprintf('Voter %d, enter your choice (1-4): ', i));
    
    switch choice
        case {1, 2, 3, 4}
            votes(choice) = votes(choice) + 1;
        otherwise
            fprintf('Invalid vote! This vote will not be counted.\n');
    end
end

fprintf('\nVoting Results:\n');
fprintf('Candidate A: %d votes\n', votes(1));
fprintf('Candidate B: %d votes\n', votes(2));
fprintf('Candidate C: %d votes\n', votes(3));
fprintf('Candidate D: %d votes\n', votes(4));


[max_votes, winner_index] = max(votes);
if sum(votes == max_votes) > 1
    fprintf('It is a tie between multiple candidates!\n');
else
    fprintf('The winner is Candidate %c with %d votes!\n', char(winner_index + 64), max_votes);
end


while true
    fprintf('\nVisualization Menu:\n');
    fprintf('1. Show Bar Chart of Votes\n');
    fprintf('2. Show Pie Chart of Votes\n');
    fprintf('3. Show Scatter Plot\n');
    fprintf('4. Exit\n');
    
    vis_choice = input('Select an option (1-4): ');
    
    switch vis_choice
        case 1
            figure;
            bar(votes);
            title('Votes for Each Candidate');
            xlabel('Candidates');
            ylabel('Number of Votes');
            set(gca, 'XTickLabel', {'A', 'B', 'C', 'D'});
            grid on;
            
        case 2
            figure;
            pie(votes, {'Candidate A', 'Candidate B', 'Candidate C', 'Candidate D'});
            title('Vote Distribution');
            
        case 3
            figure;
            scatter(1:4, votes, 100, 'filled');
            title('Scatter Plot of Votes');
            xlabel('Candidates');
            ylabel('Votes');
            set(gca, 'XTickLabel', {'A', 'B', 'C', 'D'});
            grid on;
            
        case 4
            fprintf('Thank you for participating in the election. Have a great day!\n');
            break;
            
        otherwise
            fprintf('Invalid selection! Please choose a valid option (1-4).\n');
    end
end
