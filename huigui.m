%load('sortdata.mat');
n=80000;
for k=1:5
    as=data1_sorted_80000(:,:,:,20+k);
    for i=1:n
        x1(10*i-9:10*i)=as(:,1,i);
        x2(10*i-9:10*i)=as(:,2,i);
        x3(10*i-9:10*i)=as(:,3,i);
        x4(10*i-9:10*i)=as(:,4,i);
        y(10*i-9:10*i)=1:10;
    end
    X=[ones(n*10,1),x1',x2',x3',x4'];
    [b,bint,r,rint,s]=regress(y',X,0.05);

    ratiore(k)=ceshi(as1,b);
end
