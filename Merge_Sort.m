%合并排序主函数：
%1.将数组分割，直到子数组只有一个元素。
%2.对两个相邻的子数组进行二路归并操作。

function A = Merge_Sort(A,l,r)
if(l<r)
    %左右分割，递归调用合并排序
    mid = floor((l+r)/2);
    A = Merge_Sort(A,l,mid);
    A = Merge_Sort(A,mid+1,r);
    %二路归并
    A = Merge(A,l,r,mid);
end 
