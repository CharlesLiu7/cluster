function clustering=girvannewman(A,k)
    n=1;
    while n<k
        betweenn = betweenness(A);
        [~, I] = max(betweenn(:));
        [row, column] = ind2sub(size(betweenn), I);
        A(row, column) = 0;
        A(column, row) = 0;
        [n, clustering] = graphconncomp(A, 'Weak', 1);
        disp(n);
    end

function [X, path, Y, index] = bfs(A,u, adj_index, n_size)
    n=size(A, 1);
    s=0;
    h=0;
    path = zeros(n, 1);
    path(u) = 1;
    d=-1*ones(n,1); 
    sq=zeros(n,1);
    % BFS
    s=s+1; sq(s)=u; 
    d(u)=0; 
    Y = zeros(n, n);
    index = ones(n, 1);
    i = 1; X = zeros(n, 1);
    while s-h>0
        h=h+1; v=sq(h);
        X(i) = v;
        i = i + 1;
        i_dex = adj_index(v, 1:n_size(v));
        for ri=1:n_size(v)
            w = i_dex(ri);
            if d(w)<0
                s=s+1; sq(s)=w; 
                d(w)=d(v)+1; 
            end
            if d(w) == d(v) + 1
                path(w) = path(w) + path(v);
                Y(w, index(w)) = v;
                index(w) = index(w) + 1;
            end
        end
    end

function calcutBT = betweenness(A)
    calcutBT = zeros(size(A));
    [row,~] = size(A);
    adj_index = zeros(row, row);
    for i = 1:row
        temp = find(A(i, :));
        adj_index(i, 1:size(temp, 2)) = temp;
    end
    n_size = sum(full(A) ~= 0, 2);
    for i = 1:row
        [X, path, Y, n] = bfs(A, i, adj_index, n_size);
        j = row - sum(X == 0);

        deleteBT = zeros(row, 1);
        n = n -1;
        while j > 0
            w = X(j);
            tempe = (1 + deleteBT(w)) / path(w);
            while n(w) > 0
                v = Y(w, n(w));
                c = path(v) * tempe;
                calcutBT(w, v) = calcutBT(w, v) + c;
                calcutBT(v, w) = calcutBT(v, w) + c;
                n(w) = n(w) - 1;
                deleteBT(v) = deleteBT(v) + c;
            end
            j = j - 1;
        end
    end