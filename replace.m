% Define the weighted adjacency matrix
adjMatrix = [
    0 2 0 1 0
    2 0 4 3 0
    0 4 0 0 6
    1 3 0 0 5
    0 0 6 5 0
];

%Replace 0s with Infinity (except digonal)
n = size(adjMatrix, 1);
for i = 1:n
    for j = 1:n
        if i ~= j && adjMatrix(i, j) ==0
        adjMatrix(i, j) =Inf;
        end
    end
end

G = graph(adjMatrix);

figure;
plot(G, 'EdgeLabel', G.Edges.Weight);
title('Weighted Graph');
