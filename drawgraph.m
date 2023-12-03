function drawgraph(cluster, data)
    unique_clusters = unique(cluster);
    colors = lines(length(unique_clusters));

    % Create a new figure
    figure;

    % Use gca to get the current axes
    ax = gca;

    hold(ax, 'on');

    for i = 1:length(unique_clusters)
        cluster_points = data(cluster == unique_clusters(i), :);
        scatter(ax, cluster_points(:, 1), cluster_points(:, 2), 50, colors(i, :), 'filled');
    end

    title(ax, 'DPC Clustering Results');
    xlabel(ax, 'X-axis');
    ylabel(ax, 'Y-axis');
    legend(ax, arrayfun(@(x) sprintf('Cluster %d', x), unique_clusters, 'UniformOutput', false));

    hold(ax, 'off');
end
