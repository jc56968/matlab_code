function [ output_args ] = dim_num( input_args )
%DIM_NUM 此处显示有关此函数的摘要
%   此处显示详细说明
data = input_args;
data=data(:);
uniquedata=unique(data);
out=zeros(length(uniquedata),2);
for ni=1:length(uniquedata)
out(ni,1)=uniquedata(ni);
out(ni,2)=sum(data==uniquedata(ni));
end

output_args=out;
end

