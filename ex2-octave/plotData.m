function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
[yp_idxs, _] = find(y>0);
[yn_idxs, _]= find(y==0);
plot(X(yp_idxs, 1), X(yp_idxs, 2), 'k+', 'MarkerSize', 10 , X(yn_idxs, 1), X(yn_idxs, 2), 'ko', 'MarkerSize', 10);
xlabel('Exam 1 score');
ylabel('Exam 2 score');
legend('Admitted', 'Not Admitted');
% =========================================================================



hold off;

end
