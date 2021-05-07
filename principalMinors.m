function [delta] = principalMinors(A,n)
    delta = zeros(2^n-1,1);
    d = zeros(n,1);
    for i = 1:n
        d(i) = A(i,i);
    end
    for i = 1:(2^n-1)
        t = de2bi(i,n);
        s = 1;
        for j = 1:n
            if t(j) == 1
                s = s * d(j);
            end
        end
        delta(i) = s;
    end
end

