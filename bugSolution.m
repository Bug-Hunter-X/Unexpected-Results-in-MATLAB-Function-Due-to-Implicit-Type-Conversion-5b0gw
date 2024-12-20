function result = myFunctionSolution(input, tolerance)
  % This improved function uses a tolerance-based comparison to handle floating-point precision issues.
  %
  % The tolerance parameter defines the acceptable difference between the input and 1.

  if abs(input - 1) < tolerance
    result = 1;
  else
    result = 0;
  end
end

% Example usage:
input1 = 1;
input2 = 1.000000000000001;
tolerance = 1e-10; % Set an appropriate tolerance value

result1 = myFunctionSolution(input1, tolerance);
result2 = myFunctionSolution(input2, tolerance);

disp(['Result 1: ', num2str(result1)]);
disp(['Result 2: ', num2str(result2)]);