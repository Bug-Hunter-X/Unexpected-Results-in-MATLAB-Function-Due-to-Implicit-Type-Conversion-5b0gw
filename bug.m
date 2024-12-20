function result = myFunction(input)
  % This function demonstrates a potential issue with implicit type conversion in MATLAB.
  %
  % The problem arises when comparing a double precision number (input) with an integer (1).
  % If the input is very close to 1 but not exactly 1, the comparison might fail.

  if input == 1
    result = 1;
  else
    result = 0;
  end
end

% Example usage:
input1 = 1;              % This works as expected
input2 = 1.000000000000001; % This might produce unexpected results due to floating point precision

result1 = myFunction(input1);
result2 = myFunction(input2); 

disp(['Result 1: ', num2str(result1)]);
disp(['Result 2: ', num2str(result2)]);