%Dijkstra's Algorithm
startNode = 1;
visited = false(1, n);
distance = Inf(1, n);
distance(startNode) = 0;

for i = 1:n
    minDist = Inf;
    u = -1;
    for j = 1:n
        if ~visited(j) && distance(j) < minDist
            minDist = distance(j);
            u=j;
        end
    end

    if u == -1
        break;
    end

    visited(u) = true;

    for v = 1:n
        if ~visited(v) && adjMatrix(u, v) ~= Inf
            if distance(u) + adjMatrix(u, v) < distance(v)
                distance(v) = distance(u) + adjMatrix(u, v);
            end
        end
    end
end

    %Display results
    fprintf('Shortest distances from the source:\n');
    for i = 1:n
        fprintf('Vertex %d: %d\n', i, distance(i));
    end