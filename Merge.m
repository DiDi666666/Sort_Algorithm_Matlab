%��·�鲢������
%1.����һ����СΪ���������������С֮�͵�����ռ�
%2.�趨����ָ�룬�ֱ�ָ�������������������ʼλ��
%3.�Ƚ�����ָ����ָԪ�أ���С��Ԫ�ط���ϲ��ռ䣬������ƶ�СԪ�ص�ָ��һ��λ�á�
%  �ظ�����3��ֱ��ĳһָ�볬��������β������һ������ʣ�µ�����Ԫ�ظ��Ƶ��ϲ�����β��

function A = Merge(A,l,r,mid)
i = l;
j = mid+1;  
k = 1;
while i<=mid && j<=r        %��i,j��û�г���������βʱ
        if A(i)<A(j)         %�Ƚ�i,j��ָԪ�صĴ�С����С������A��
            B(k) = A(i);
            i = i+1;
            k = k+1;
        else  
            B(k) = A(j);
            j = j+1;
            k = k+1;
        end   
end
while i<=mid             %��j����������β����i��ָ������ʣ��Ԫ�ظ��Ƶ�B��
    B(k) = A(i);
    i = i+1;
    k = k+1;
end
while j<=r              %��i����������β����j��ָ������ʣ��Ԫ�ظ��Ƶ�B
    B(k) = A(j);
    j = j+1;
    k = k+1;
end
A(l:r) = B(1:k-1);
