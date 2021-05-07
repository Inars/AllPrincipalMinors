function [B] = improvedGE(A, n)
    for i = 2:n
    	A(i,i) = A(i,i) - (A(i-1,i)/A(i-1,i-1)) * A(i-1,i);
    	A(i,i-1) = 0;
    end
    B = A;
end
