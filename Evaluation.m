function Evaluation(trueLabels, predLabels)
    % Compute Adjusted Rand Index (ARI)
    ARI = rand_index(trueLabels, predLabels, 'adjusted');
    fprintf('Adjusted Rand Index (ARI): %.4f\n', ARI);

    % Compute Normalized Mutual Information (NMI)
    NMI = mutual_information(trueLabels, predLabels, 'normalized');
    fprintf('Normalized Mutual Information (NMI): %.4f\n', NMI);
end