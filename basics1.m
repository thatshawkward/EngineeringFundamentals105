%% EF 105 Matlab Basics
% Fall, 2007
%
% Use the debugger to step through this program
% click on a line number to set a "breakpoint"
% click on the run icon to run to that breakpoint
% use the F10 key to step through the commands one line at a time

%% Initialization
% The "%" sign is Matlab's comment symbol
% Everything from % to the end of the line is ignored
clear all   % remove all variables, function from the global workspace
clc         % clear command window
close all   % close all open figure windows
format compact   % set output to have fewer blank lines
format long g   % set output to show more sig dig and avoid scientific notation

%% Variable Assignment
% The "=" sign is Matlab's assignment operator
s = 0.5    % a scalar (single) value
s = s + 1  % equal sign means assignment, not equality
s = s + 2; % a semi-colon on the end of a line suppresss output
s=s+3;     % spacing doesn't matter (except for readability)
s          % a variable without a semi-colon shows it current value

%% Variable names
% Variable names consist of a letter, followed by any number of letters, digits, or underscores.
% MATLAB uses only the first 31 characters of a variable name.
% MATLAB is case sensitive; A and a are not the same variable.
% To view the matrix assigned to any variable, simply enter the variable name.
a = 5
A = 2
B = a + A
% the following line will fail because "b" is not defined
% you'll need to comment it out to continue on
% read the error message in the command window
% click on the underlined error message to jump to the error
b  %%% this will cause an error

%% Variable Names
% use meaningful names, but avoid very long names
m = 4;
mass = 4;
force_in_lbs = 5;

% avoid names that are also matlab commands
% you can use the "which" command to check for commands
which tan
tan(0)
tan = 2;   % this works, but disables the tan function
which tan
tan(0)     % this will cause an error because we redefined the tan command

%% Everyone's favorite Matlab command - try it some more in the command window
why

%% Matrix Definition
% The square brackes - [ ] - define a matrix of numbers
% a scalar value is really a one element matrix
s2 = 5
s3 = [ 5 ]

%% Row Vector
% A vector is a another name for a list of numbers
% A row vector is a matrix with one row and many columns
% Values are separated by blanks or commas
rv = [1 2 3]
rv = [1,2,3]

%% Column Vector
% A column vector is a matrix one column and many rows
% Values are separated by semi-colons or new lines
cv = [4;5;6]
cv = [4
    5
    6]

%% 2D Matrices
% A 2D Matrix is like a table of rows and columns
% You can mix the techniques from above to enter the data
% Must have same number of elements in each row
m23 = [1 2 3
    4 5 6]          % a 2x3 (2 row by 3 column) matrix
m23 = [1,2,3;4,5,6] % the same matrix
m32 = [1 2; 3 4; 5 6] % a 3x2 matrix
mbad = [1,2,3;4,5]  %%% this doesn't work, fix it to continue


%% Evenly Spaced Vectors - colon operator 
% The colon operator creates a vector of evenly spaced values
small_nums = 1:9    % defaults to an increment of 1
oddnums = 1:2:9     % start:increment:end
evennums = 2:2:9    % end value is just a limit

%% Evenly Spaced Vectors - linspace
% The linspace function is another way of generating a vector with evenly values
% Use it if you know how many values you want but don't care about the increment
theta = linspace(0,2*pi)     %defaults to 100 elements
theta = linspace(0,2*pi,50)  % specify 50 elements

%%
% the length function is used to determine the number of values in a list
% the size function is used to determine the dimensions of a matrix
n = length(oddnums)
n = size(oddnums)
n = size(m23)

% Accessing array elements (indexing)
% third value of the oddnums vector
oddnums(3)
% value in 2nd row, 3rd column of the m23 matrix
m23(2,3)
% last value in oddnums
oddnums(end)  % end is a special keyword
% entire 1st column of m23 matrix
c1 = m23(:,1)  % ':' is shorthand for ALL

%% Multiplication, Division, Exponentiation
% These operations have two forms
% Use .*   ./  and .^  for the scalar (or element-by-element) form
rv = rv .* 9.81   % list .* scalar : multiplies EVERY element of rv by 9.81
junk = [1 2 3] .* [4 5 6]   % list .* list : element by element - both lists must be same size

%% Statistical functions
% usually used on lists (i.e. 1D matrices, also called row or column vectors)
% see help file (Data Analysis)
total = sum([1 2 3 4])
avg = mean(oddnums)

%% Trig functions
% require arguments in radians
% no built-in conversion functions
% see help file (Elementary Math)
pie = pi % pi is a predefined constant
ratio = sin(30.*pi./180)  % convert degrees to radians
angle2 = atan(1).*180./pi  % convert radians to degrees

%% Example calculation - emphasize the use of .*, ./, .^, and parens
a = -10
b = 20
c = 100
x = (-b + sqrt(b.^2 - 4 .* a .* c)) ./ (2 .* a)

% this example computes the quadratic equation for three sets of numbers
% a, b, anc c must have the same number of values
% you will get three answers
a = [-10 -15 -20]
b = [20 30 40]
c = [100 200 300]
x = (-b + sqrt(b.^2 - 4 .* a .* c)) ./ (2 .* a)  % this is right
