function test(A)
  [row,col] = size(A);
  if row~=col     % Checking the size of A
      error('A must be square matrix!')
  endif
  Diag = diag(A); % Extracting the main diagonal of A
  A_mod = A - Diag.*eye(row); % A_mod is A without the main diagonal
  for i=1:row
      A_sum_row(i) = sum(abs(A_mod(i,:)));    % Calculating the sum of each row and
      A_sum_col(i) = sum(abs(A_mod(:,i)));    % column
  endfor
  % Checking if A is already diagonal dominant
  if (all(A_sum_row(:)<abs(Diag(:)))==true && all((A_sum_col(:))<abs(Diag(:)))==true)
      fprintf('A is diagonal dominant by rows and column \n')
  elseif A_sum_row(:)<abs(Diag(:))
      fprintf('A is diagonal dominant by rows \n')
  elseif A_sum_col(:)<abs(Diag(:))
      fprintf('A is diagonal dominant by column \n')
  else
      result = false;
  endif
  % Try to convert A in a diagonal dominant matrix
  if exist('result','var')
    disp("result")
    disp(result)

  endif
  if exist('result','var')
     [max_val_row,max_pos_row]=max(abs(A));

     if length(unique(max_pos_row))~=length(max_pos_row)
         fprintf('A isn''t diagonal dominant by rows or column \n')
     else
         for i = 1:row
             A_diag_dom(i,:) = A(max_pos_row(i),:);
             B(i) = b(max_pos_row(i));
         endfor
     endif
  endif
endfunction
