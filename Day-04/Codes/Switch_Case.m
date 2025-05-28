day = input('Enter the day (1-5) : ')
disp(['you entered ', num2str(day)])


switch day
    case 1
        disp('Monday!');
    case 2
        disp('Tuesday!');
    case 3
        disp('Wednesday!');
    case 4
        disp('Thursday!');
    case 5
        disp('Friday!');
    otherwise
        disp('Invalid day!');
end