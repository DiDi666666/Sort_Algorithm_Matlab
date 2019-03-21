%插入排序：
%将指针所指元素顺序插入左侧有序元素中，指针后移一位，重复上述过程。

function A = Merge(A,n)
for j = 2: n
     t = A(j);
     k = j-1;
     while k>0 && A(k)>=t
         A(k+1) = A(k);
         k = k - 1;
     end
     A(k+1) = t;
end
end      
                