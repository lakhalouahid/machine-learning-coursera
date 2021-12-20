function monitor(@gd, X, y, theta0, alpha, max_iterations, update)
  figure 1;
  for i=0:(max_iterations/update)
    [theta0, loss_history] = gd(X, y, theta0, alpha, update);
  end
end
