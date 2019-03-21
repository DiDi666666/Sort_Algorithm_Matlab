%选择排序:
%每一趟从待排序的记录中选出最小的元素，
%放在已排好序的序列最后，直到全部记录排序完毕。

function A = Merge(A,n)
for j = 1: n-1          
     min = j;
     for k = j+1 : n
         if A(k) <= A(min)  %查找最小元素
             min = k;
         end
     end
     t = A(j);              %将最小元素放到有序序列后
     A(j) = A(min);
     A(min) = t;
end
end