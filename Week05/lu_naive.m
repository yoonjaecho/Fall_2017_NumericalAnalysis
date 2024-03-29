function [L, U] = lu_naive(A)
    [m, n] = size(A);
    if m ~= n
       erorr('Matirx must be square(NxN)');
    end
    L = eye(n);
    U = A;
    for k = 1:n-1
        for i = k+1:n
            L(i, k) = U(i, k) / U(k, k);
            U(i, k) = 0;
            U(i, k+1:n) = U(i, k+1:n) - L(i, k) * U(k, k+1:n);
        end
    end
end