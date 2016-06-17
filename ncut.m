function clustering=ncut(A,k)
    D=diag(sum(A,2));
    L=D-A;
    D=full(D);
    L=full(L);
    LL=D^(-1/2)*L*D^(-1/2);
    [X,~]=eig(LL);
    clustering=kmeans(X(:,1:k),k);