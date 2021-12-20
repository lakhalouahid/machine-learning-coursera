function [theta, J_history] = gradientDescentRMS(X, y, theta, alpha, num_iters, eta, gamma)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
S = [0; 0];
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    Delta_J = ((X*theta - y)' * X)';
    S = gamma * S + (1-gamma) * Delta_J.^2;
    alpha = eta ./ sqrt( S + 1e-8);
    theta = theta - ( alpha / m ) .* Delta_J;
    % ============================================================
    % Save the cost J in every iteration
    J_history(iter) = computeCost(X, y, theta);

end

end
