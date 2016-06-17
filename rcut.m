function clustering=rcut(A,k)
    D=diag(sum(A,2));                 % 求得D
    L=D-A;                            % 求得L
    L=full(L);
    [X,~]=eig(L);
    clustering=kmeans(X(:,1:k),k);