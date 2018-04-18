function corratio=ceshi(as1,b)
n=800;
% a=generatedata(n);
for k=1:n
%     as1(:,:,k)=sortby2173(a(:,:,k));
    x11=as1(:,1,k);
    x21=as1(:,2,k);
    x31=as1(:,3,k);
    x41=as1(:,4,k);
    %y(10*k-9:10*k)=1:10;
    y1(:,k)=b(1)+b(2)*x11+b(3)*x21+b(4)*x31+b(5)*x41;
end

l=0;
for i=1:n
    data_tongji(:,1,i)=1:10;
    data_tongji(:,2,i)=y1(:,i);
    sorted=sortrows(data_tongji(:,:,i),2);
    for j=1:10
        if(sorted(j,1)==j)
            l=l+1;
        end
    end
end
corratio=l/(n*10);
