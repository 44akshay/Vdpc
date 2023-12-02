function drawgraph(cluster, data)
    unique_clusters = unique(cluster);
    colors = lines(length(unique_clusters));

    figure;
    hold on;

    for i = 1:length(unique_clusters)
        cluster_points = data(cluster == unique_clusters(i), :);
        scatter(cluster_points(:, 1), cluster_points(:, 2), 50, colors(i, :), 'filled');
    end

    title('DPC Clustering Results');
    xlabel('X-axis');
    ylabel('Y-axis');
    legend(arrayfun(@(x) sprintf('Cluster %d', x), unique_clusters, 'UniformOutput', false));

    hold off;
end