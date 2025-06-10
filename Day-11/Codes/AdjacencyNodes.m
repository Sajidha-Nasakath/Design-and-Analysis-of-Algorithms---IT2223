s = [1 1 2 3 4];  % Source nodes
t = [2 3 4 4 5];  % Target nodes

G = graph(s, t);  % Create an undirected graph from edge list

for node = 1:numnodes(G)
    adj = neighbors(G, node);  % Get neighbors of current node
    fprintf('Node %d is connected to : ', node);
    fprintf('%d ', adj);       % Print neighbors
    fprintf('\n');
end