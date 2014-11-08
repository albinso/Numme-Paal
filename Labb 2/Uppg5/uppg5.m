hold on;
%p = @(x)x + 1;
%xs = [1:3];


n = newton([1 2 3; 1 2 4]')
n;
%p(n);
%f([xs; p(xs)])
plot([1:3], n');
