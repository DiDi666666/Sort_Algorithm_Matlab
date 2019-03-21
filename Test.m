%测试函数：
%数组N用于存放数据规模大小及对应的运行时间
%测试将对每个数据规模大小随机产生20组测试样本，计算20组测试样本的平均运行时间。
%20组排好序的数据存放在矩阵M中

N = [10000,20000,30000,40000,50000;];   %本测试有5个数据规模大小
for n = 1:5                             
M = randi([1,N(1,n)],20,N(1,n));        %随机产生20组测试样本
for i = 1:20
    M1 = M(i,:);
    n1 = N(1,n);
    tic 
    M1 = Bubble_Sort(M1,n1);
    %M1 = Insertion_Sort(M1,n1);
    %M1 = Selection_Sort(M1,n1);
    %M1 = Merge_Sort( M1,1,n1);
    %M1 = Quick_Sort( M1,1,n1); 
    Time(1,i) = toc;                     %获得运行时间
    M(i,:) = M1;
end
disp(['数据规模为',num2str(N(1,n)),'时,平均运行时间为：',num2str(mean(Time)),'s']);  %输出平均运行时间
N(2,n) = mean(Time);
end       
