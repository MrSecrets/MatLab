function [A,b] = Matrix(N,v,k,C0)

A=zeros(N+1);
b=zeros(N+1,1);

global dz 

A(2,2)=-1*k;
A(3,2)=(-1*v)/(2*dz);

for i=3:N
    A(i,i)=-1*k;
    A(i+1,i)=(-1*v)/(2*dz);
    A(i-1,i)=v/(2*dz);
end

A(N+1,N+1)=(-1*k-(v/dz));
A(N,N+1)=v/(dz);

b(2)=(v*C0)/(2*dz);


A(1,:)=[];
A(:,1)=[];

b(1,:)=[];
