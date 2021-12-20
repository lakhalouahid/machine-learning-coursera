function [X, mean, std] = normalize(X, dim)
  mean = mean(X);
  std = std(X);
  X = (X .- mean)./std;
end
