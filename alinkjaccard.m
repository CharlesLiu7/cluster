[function clustering=alinkjaccard(A,k)
    Y=pdist2(A,A,'jaccard'); % ���� Jaccard ����
    Z=linkage(Y,'average');  % ��ƽ������ linkage
    clustering=cluster(Z,k); % �������
    %H=dendrogram(Z);        % ����ͼ�񣬿��ӻ�������