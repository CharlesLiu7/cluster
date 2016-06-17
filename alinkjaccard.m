[function clustering=alinkjaccard(A,k)
    Y=pdist2(A,A,'jaccard'); % 生成 Jaccard 距离
    Z=linkage(Y,'average');  % 按平均距离 linkage
    clustering=cluster(Z,k); % 聚类计算
    %H=dendrogram(Z);        % 生成图像，可视化聚类树