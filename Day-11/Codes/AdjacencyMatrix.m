A = [0 1 0;
     1 0 1;
     0 1 0];  % Define the adjacency matrix
G = graph(A); % Create an undirected graph from the adjacency matrix
plot(G);      % Plot the graph
title("Adjacency Matrix Representation"); % Add a title to the plot