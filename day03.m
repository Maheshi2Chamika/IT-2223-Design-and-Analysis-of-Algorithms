%string function
str1='apple'
str2='banana'
result=strcat(str1,str2)   %strcat for concat
disp(result)

x={'hello','world','sri'}
result2=strcat(x{:})   %   :this mark is representing "All"
disp(result2)

result3=strjoin(x,':')
disp(result3)

%strcmp
str3='age'
str4='age'
strcmp(str3,str4)  %strcmp means string compare ,it will output true or false

%strfind
str5='the cat sat on the mat'
indic=strfind(str5,'cat')   %strfind means it will search whether the given string is have or not

%strrep
str5='the cat sat on the mat'
old='cat'
new='dog'
strrep(str5,old,new) %strrep means replace with a new word

%split the string using comma
inputstring='apple,banana,orange,grapes'
substring=strsplit(inputstring,',')

%lowercase & uppercase
st1='apPLE'
lower(st1)
upper(st1)

%strtrim
strtrim(' hello world ') %strtrim means it will romove spaces infrnot of and behind the string

%Get a marks from the user and print the grade
    %marks>=90 A+
    %marks>=80 A
    %marks>=70 B
    %marks>=60 C
    %marks>=50 D
    %else F
mark=input("Enter the mark: ")
if(mark>100)
    disp("It is not a mark")
elseif(mark>=90)
    disp('A+')
elseif(mark>=80)
        disp('A')
elseif(mark>=70)
        disp('B')
elseif(mark>=60)
        disp('C')
elseif(mark>=50)
        disp('D')
else
    disp('F')
end

%Get three numbers from user and find the largest number among those
num1=input("Enter number 1: ")
num2=input("Enter number 2: ")
num3=input("Enter number 3: ")

if(num1>num2 && num1>num3)
    disp("The largest number is "+num1)
elseif(num2>num1 && num2>num3)
    disp("The largest number is "+num2)
elseif(num3>num1 && num3>num2)
    disp("The largest number is "+num3)
end

%Get a character from user and chech whether it is a vowel or consonant
character = input('Enter a character: ', 's');
character = lower(character);

if any(character == ['a', 'e', 'i', 'o', 'u'])
    disp('The entered character is a vowel.');
elseif isletter(character)
    disp('The entered character is a consonant.');
else
    disp('Invalid input. Please enter an alphabetic character.');
end
