function showShapeSet(shapeSet)
    figure;
    scatter(shapeSet(:, 1), shapeSet(:, 2), 50, 'filled');
    title('Shape Set');
    xlabel('X-axis');
    ylabel('Y-axis');
    grid on;
end