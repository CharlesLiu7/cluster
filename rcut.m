function clustering=rcut(A,k)
    D=diag(sum(A,2));                 % ���D
    L=D-A;                            % ���L
    L=full(L);
    [X,~]=eig(L);
    clustering=kmeans(X(:,1:k),k);