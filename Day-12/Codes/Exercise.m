% 1. Import the graph using source and destination data
source = [1, 1, 2, 3, 4];
destination = [2, 3, 4, 4, 5];

G = graph(source, destination);

% 2. Draw the graph
figure;
h = plot(G, 'Layout', 'force');
title('Graph');
xlabel('X'); ylabel('Y');

% 3. Find and display the subgraph for the given nodes (with correct labels)
subNodes = [2, 3, 4]; % Nodes to include in the subgraph (from the original graph)
subG = subgraph(G, subNodes);

% Create original node labels for subgraph
originalLabels = string(subNodes); % e.g., ["2", "3", "4"]

% Plot the subgraph
figure;
plot(subG, 'Layout', 'force', 'NodeLabel', originalLabels);
title('Subgraph with Node Numbers [2, 3, 4]');

% 4. Identify and display adjacent vertices for each node
disp('Adjacent vertices for each node:');
for i = 1:numnodes(G)
    adj = neighbors(G, i);
    fprintf('Node %d: ', i);
    disp(adj');
end

% 5. Label the edges of the graph
edgeLabels = strcat('E', string(1:numedges(G)));
labeledge(h, source, destination, edgeLabels);

% 6. Label the nodes of the graph
nodeLabels = strcat('N', string(1:numnodes(G)));
labelnode(h, 1:numnodes(G), nodeLabels);

% 7. Graph coloring using greedy coloring algorithm
n = numnodes(G);
colors = zeros(1, n);

for i = 1:n
    usedColors = colors(neighbors(G, i));
    c = 1;
    while ismember(c, usedColors)
        c = c + 1;
    end
    colors(i) = c;
end

% Display node colors
disp('Node colors (Graph Coloring):');
for i = 1:n
    fprintf('Node %d -> Color %d\n', i, colors(i));
end

% Plot colored graph
figure;
colormap(lines(max(colors))); % Use distinguishable colors
plot(G, 'NodeCData', colors, 'NodeLabel', nodeLabels, 'MarkerSize', 7, 'Layout', 'force');
colorbar;
title('Graph Coloring');

% 8. Find and highlight the shortest path from node 1 to node 5
[pathNodes, pathLength] = shortestpath(G, 1, 5);
fprintf('\nShortest path from Node 1 to Node 5: ');
disp(pathNodes);
fprintf('Total path length: %d\n', pathLength);

% Highlight shortest path
figure;
h2 = plot(G, 'Layout', 'force');
highlight(h2, pathNodes, 'NodeColor', 'r');
highlight(h2, pathNodes, 'EdgeColor', 'r', 'LineWidth', 2);
title('Shortest Path from Node 1 to Node 5');
