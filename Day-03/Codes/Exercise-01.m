%get a marks from the user and print the grade 

%marks>= 90 A+
%marks>= 80 A
%marks>= 70 B
%marks>= 60 C
%marks>= 50 D
%else fail

marks=input('Enter the marks : ')
if marks<=100
if marks >= 90
  disp('A+')
elseif marks >=80
   disp('A')
elseif marks >=70
    disp('B')
elseif marks >=60
    disp('C')
elseif marks >=50
    disp('D')
else 
    disp('F')
end
else 
    disp('Invalid')
end