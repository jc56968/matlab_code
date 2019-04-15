function [ out ] = shang( in,i,name)
%SHANG 此处显示有关此函数的摘要 2维熵
%   此处显示详细说明
[m,n]=size(in);
  
    num=0;
for cc=1:m
     if in(cc,i)==name
        num=num+1;
     end
end
cout=zeros(num,1);
t=1;
for cc=1:m
    if in(cc,i)==name
        cout(t,1)=in(cc,n);
        t=t+1;
    end
end
out=dim_num(cout);
[m,n]=size(out);
temp=0;
for cc=1:m
    temp=temp+out(cc,2)/num*(log2(out(cc,2)/num));
end
out= temp;

