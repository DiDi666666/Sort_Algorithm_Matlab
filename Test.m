%���Ժ�����
%����N���ڴ�����ݹ�ģ��С����Ӧ������ʱ��
%���Խ���ÿ�����ݹ�ģ��С�������20���������������20�����������ƽ������ʱ�䡣
%20���ź�������ݴ���ھ���M��

N = [10000,20000,30000,40000,50000;]; 
for n = 1:1
M = randi([1,N(1,n)],20,N(1,n));        %�������20���������
for i = 1:20
    M1 = M(i,:);
    n1 = N(1,n);
    tic 
    M1 = Bubble_Sort(M1,n1);
    %M1 = Insertion_Sort(M1,n1);
    %M1 = Selection_Sort(M1,n1);
    %M1 = Merge_Sort( M1,1,n1);
    %M1 = Quick_Sort( M1,1,n1); 
    Time(1,i) = toc;                     %�������ʱ��
    M(i,:) = M1;
end
disp(['���ݹ�ģΪ',num2str(N(1,n)),'ʱ,ƽ������ʱ��Ϊ��',num2str(mean(Time)),'s']);  %���ƽ������ʱ��
N(2,n) = mean(Time);
end       