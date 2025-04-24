balance = 1000;

while true
    disp('ATM Menu');
    disp('1.Deposit');
    disp('2.Withdraw');
    disp('3.Balance Inquiry');
    disp('4.Exit');

    choice = input('Select an option 1-4: ');

    switch choice
        case 1
            deposit_ammount = input('Enter the amount: ');
            if deposit_ammount > 0
                balance = balance + deposit_ammount;
                fprintf('Amount deposited successfully!\n');
                fprintf('New Balance: %.2f\n', balance);
            else
                fprintf('Invalid amount! Please enter a positive value.\n');
            end

        case 2
            withdraw_ammount = input('Enter amount to withdraw: ');
            if withdraw_ammount > 0
                if withdraw_ammount <= balance
                    balance = balance - withdraw_ammount;
                fprintf('Amount withdrawn successfully!\n');
                    fprintf('New Balance: %.2f\n', balance);
                else
                    fprintf('Insufficient funds! Transaction declined.\n');
                end
            else
                fprintf('Invalid amount! Please enter a positive value.\n');
            end

        case 3
            fprintf('Current Balance: %.2f\n', balance);
            
        case 4
            fprintf('Thank you for using the ATM. Have a great day!\n');
            break;
            
        otherwise
            fprintf('Invalid selection! Please choose a valid option (1-4).\n');
    end
end

