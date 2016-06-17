function clustering=modularity(A,k)
    [row,~]=size(A);
    d=sum(A,2);
    m=nnz(A);   %��Ϊ������ͼ������m=edge*2
    B=A-d*d'/m;
    B=full(B);
    [X,~]=eig(B);
    clustering=kmeans(X(:,row-k+1:row),k);