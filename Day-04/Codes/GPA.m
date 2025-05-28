%Finding the GPA 

gpa = zeros(1,5);
marks = zeros(1,5);

for i = 1:5
    marks(i)=input(['Enter marks for subject: ']);

if (marks(i)>100 || marks(i)<0)
    disp ('Invalid Marks')
elseif marks(i)>=90
    disp('Grade A');
    gpa(i)=4.0;
elseif marks(i)>=80
    disp('Grade B');
    gpa(i)=3.0;
elseif marks(i)>=70
    disp('Grade C');
    gpa(i)=2.0;
elseif marks(i)>=60
    disp('Grade D');
    gpa(i)=1.0;
else
    disp('Grade F');
    gpa(i)=0.0;
end
end

Gpa=mean(gpa);
fprintf('\nYour GPA is : %.2f\n',Gpa);