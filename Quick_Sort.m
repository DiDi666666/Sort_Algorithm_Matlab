%快速排序主函数：
%利用递归划分数组，对子数组调用快速排序：
%1.先从数列中取出一个数作为基准数；
%2.换位：将比这个数大的数全放到它的右边，小于或等于它的数全放到它的左边；
%3.再对左右区间重复第二步，直到各区间只有一个数。

function [A] = Quick_Sort(A,l,r)
if l<r
    [A,q] = Quick(A,l,r);
    A = Quick_Sort(A,l,q-1);
    A = Quick_Sort(A,q+1,r);
end
end

