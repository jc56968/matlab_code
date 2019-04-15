function [ ] = m_pca( X ,dim)
%pca输入X为矩阵 dim为欲降得维数
%X行为个数，列为维数
%X为正规阵时用U矩阵？ U矩阵得到得特征值相同 故即为正交相似矩阵

for i=1:2
    
M(i,1)=mean(X(i,:));
end
for j=1:2
    
X(j,:)=X(j,:)-M(j,1);
end
X
[w,h]=size(X)

C=X*X'/h;
[x,y]=eig(C)
[w,h]=size(x)
for i=1:dim
    Tr(:,i)=x(:,h-i+1);


end
Tr=Tr'
Ya=Tr*X
end



