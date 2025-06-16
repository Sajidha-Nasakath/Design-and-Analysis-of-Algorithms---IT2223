clc; clear; close all;

% Define edges
s = [1 2 3 4 5 11 11 11 11 11 11 11 11 11 11 8 8 7 7 6 6 10 10 9 9];
t = [2 3 4 5 1  1  2  3  4  5  6  7  8  9 10  4  3  3  2  1  2  1  5  4  5];

% Create and plot graph
G = graph(s, t);
h = plot(G);

% Define edge groups
greenEdges = [1 2; 2 3; 3 4; 4 5; 5 1];
magentaEdges = [1 11; 2 11; 3 11; 4 11; 5 11; 6 11; 7 11; 8 11; 9 11; 10 11];
redEdges = [1 10; 10 5; 5 9; 9 4; 4 8; 8 3; 3 7; 7 2; 2 6; 6 1];

% Highlight green edges
for i = 1:size(greenEdges,1)
    highlight(h, greenEdges(i,1), greenEdges(i,2), 'EdgeColor', 'green');
end

% Highlight magenta edges
for i = 1:size(magentaEdges,1)
    highlight(h, magentaEdges(i,1), magentaEdges(i,2), 'EdgeColor', 'magenta');
end

% Highlight red edges
for i = 1:size(redEdges,1)
    highlight(h, redEdges(i,1), redEdges(i,2), 'EdgeColor', 'red');
end