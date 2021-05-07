format shortg;
m = 10;
time_1 = zeros(m,1);
time_2 = zeros(m,1);
for i = 2:m
    n = i;
    A = triPosDef(n);
    B = A;
    start = clock;
    A = improvedGE(A,n);
    delta = principalMinors(A,n);
    finish = clock;
    time_1(i) = finish(6) - start(6);
    start = clock;
    B = modifiedGE(B,n);
    delta = principalMinors(B,n);
    finish = clock;
    time_2(i) = finish(6) - start(6);
end
x = zeros(length(time_1),1);
for i = 2:length(time_1)
    x(i)= x(i-1)+1;
end
plot(x,time_1,x,time_2);