string functions

%strcat() = concatinating two strings
str1 = 'apple';
str2 = 'banana';

result=strcat(str1,str2);
disp(result)

marks = {'hello', 'world', 'sri'};
result2 = strcat(marks{:});

result3 = strjoin(marks,':');
disp(result3)

%string comparison
wstr1='age';
wstr2='age';

strcmp(wstr1,wstr2)

stril = 'the cat sat on the mat';
indic=strfind(stril, 'cat');

%replace the word
old = 'cat';
new = 'dog';
strrep(stril, old, new)

%splitting the string
inputstring='apple,banana,orange,grapes';
substring=strsplit(inputstring,',');

%uppercase and lower case
st1 ='appLE';
lower(st1)
%upper(st1)

strtrim('hello world') %remove the unwanted white space

