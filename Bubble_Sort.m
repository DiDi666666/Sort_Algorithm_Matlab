%冒泡排序：
%比较两个相邻的元素，将值大的元素交换至右端。

function A = Merge(A,n)
for j = 1: n-1         
    for k = 1 : n-j
        if A(k) >= A(k+1)
            t = A(k);
            A(k) = A(k+1);
            A(k+1) = t;
        end
    end
end  
end