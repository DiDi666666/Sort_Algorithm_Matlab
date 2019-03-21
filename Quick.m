%换位函数：
%1.设置两个变量left = 1;right = N 
%2.从left一直向后走，直到找到一个大于key的值，right从后至前，直至找到一个小于key的值，然后交换这两个数。
%  重复步骤2，一直往后找，直到left和right相遇，这时交换key和left的数即可。

function [A,q] = Quick(A,l,r)
key = A(r);
i = r;
while l<r
    while l<r && A(l)<= key     %找到大于key的数
        l = l+1;
    end
    while l<r && A(r) >= key    %找到小于key的数
        r = r-1;
    end
    t = A(l);                   %交换小数和大数
    A(l) = A(r);
    A(r) = t;
end                             %将key放到小数和大数中间
temp = A(l);
A(l) = A(i);
A(i) = temp;
q = l;
end

