function EPROJ = effproj(A)

% EFFPROJ takes a matrix A and creates a matrix EPROJ which is the matrix 
% that encodes the projection onto the "effective space" of A, i.e., the 
% orthogonal complement of the nullspace of A.  

N = null(A);
n = size(A,2);

EPROJ = eye(n) - N*N';

end

