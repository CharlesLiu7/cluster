function main()
%     disp('polbooks');
%     mat=load('polbooks.mat');
%     [row,~]=size(mat.A);
%     fid1=fopen('polbooks_alinkjaccard.txt','wt');
%     fid2=fopen('polbooks_alinkjaccard_node.csv','wt');
%     fid3=fopen('polbooks_alinkjaccard_edge.csv','wt');
%     fprintf(fid3,'source,target,type\n');
%     for i=1:row-1
%         for j=i+1:row
%             if mat.A(i,j)
%                 fprintf(fid3,'%d,%d,undirected\n',i,j);
%             end
%         end
%     end
%     clustering=alinkjaccard(mat.A,mat.k);
%     fprintf(fid2,'id,nodecolor\n');
%     for i=1:row
%         fprintf(fid1,'%d\n',clustering(i,1));
%         fprintf(fid2,'%d,%d\n',i,clustering(i,1));
%     end
%     fclose(fid1);
%     fclose(fid2);
%     fclose(fid3);
%     fid1=fopen('polbooks_rcut.txt','wt');
%     fid2=fopen('polbooks_rcut_node.csv','wt');
%     fid3=fopen('polbooks_rcut_edge.csv','wt');
%     fprintf(fid3,'source,target,type\n');
%     for i=1:row-1
%         for j=i+1:row
%             if mat.A(i,j)
%                 fprintf(fid3,'%d,%d,undirected\n',i,j);
%             end
%         end
%     end
%     clustering=rcut(mat.A,mat.k);
%     fprintf(fid2,'id,nodecolor\n');
%     for i=1:row
%         fprintf(fid1,'%d\n',clustering(i,1));
%         fprintf(fid2,'%d,%d\n',i,clustering(i,1));
%     end
%     fclose(fid1);
%     fclose(fid2);
%     fclose(fid3);
%     fid1=fopen('polbooks_ncut.txt','wt');
%     fid2=fopen('polbooks_ncut_node.csv','wt');
%     fid3=fopen('polbooks_ncut_edge.csv','wt');
%     fprintf(fid3,'source,target,type\n');
%     for i=1:row-1
%         for j=i+1:row
%             if mat.A(i,j)
%                 fprintf(fid3,'%d,%d,undirected\n',i,j);
%             end
%         end
%     end
%     clustering=ncut(mat.A,mat.k);
%     fprintf(fid2,'id,nodecolor\n');
%     for i=1:row
%         fprintf(fid1,'%d\n',clustering(i,1));
%         fprintf(fid2,'%d,%d\n',i,clustering(i,1));
%     end
%     fclose(fid1);
%     fclose(fid2);
%     fclose(fid3);
%     fid1=fopen('polbooks_modularity.txt','wt');
%     fid2=fopen('polbooks_modularity_node.csv','wt');
%     fid3=fopen('polbooks_modularity_edge.csv','wt');
%     fprintf(fid3,'source,target,type\n');
%     for i=1:row-1
%         for j=i+1:row
%             if mat.A(i,j)
%                 fprintf(fid3,'%d,%d,undirected\n',i,j);
%             end
%         end
%     end
%     clustering=modularity(mat.A,mat.k);
%     fprintf(fid2,'id,nodecolor\n');
%     for i=1:row
%         fprintf(fid1,'%d\n',clustering(i,1));
%         fprintf(fid2,'%d,%d\n',i,clustering(i,1));
%     end
%     fclose(fid1);
%     fclose(fid2);
%     fclose(fid3);
%     fid1=fopen('polbooks_girvannewman.txt','wt');
%     fid2=fopen('polbooks_girvannewman_node.csv','wt');
%     fid3=fopen('polbooks_girvannewman_edge.csv','wt');
%     fprintf(fid3,'source,target,type\n');
%     for i=1:row-1
%         for j=i+1:row
%             if mat.A(i,j)
%                 fprintf(fid3,'%d,%d,undirected\n',i,j);
%             end
%         end
%     end
%     clustering=girvannewman(mat.A,mat.k);
%     fprintf(fid2,'id,nodecolor\n');
%     for i=1:row
%         fprintf(fid1,'%d\n',clustering(1,i));
%         fprintf(fid2,'%d,%d\n',i,clustering(1,i));
%     end
%     fclose(fid1);
%     fclose(fid2);
%     fclose(fid3);    
% %------------------------------------------------------------------------
%     disp('football');
%     mat=load('football.mat');
%     [row,~]=size(mat.A);
%     fid1=fopen('football_alinkjaccard.txt','wt');
%     fid2=fopen('football_alinkjaccard_node.csv','wt');
%     fid3=fopen('football_alinkjaccard_edge.csv','wt');
%     fprintf(fid3,'source,target,type\n');
%     for i=1:row-1
%         for j=i+1:row
%             if mat.A(i,j)
%                 fprintf(fid3,'%d,%d,undirected\n',i,j);
%             end
%         end
%     end
%     clustering=alinkjaccard(mat.A,mat.k);
%     fprintf(fid2,'id,nodecolor\n');
%     for i=1:row
%         fprintf(fid1,'%d\n',clustering(i,1));
%         fprintf(fid2,'%d,%d\n',i,clustering(i,1));
%     end
%     fclose(fid1);
%     fclose(fid2);
%     fclose(fid3);
%     fid1=fopen('football_rcut.txt','wt');
%     fid2=fopen('football_rcut_node.csv','wt');
%     fid3=fopen('football_rcut_edge.csv','wt');
%     fprintf(fid3,'source,target,type\n');
%     for i=1:row-1
%         for j=i+1:row
%             if mat.A(i,j)
%                 fprintf(fid3,'%d,%d,undirected\n',i,j);
%             end
%         end
%     end
%     clustering=rcut(mat.A,mat.k);
%     fprintf(fid2,'id,nodecolor\n');
%     for i=1:row
%         fprintf(fid1,'%d\n',clustering(i,1));
%         fprintf(fid2,'%d,%d\n',i,clustering(i,1));
%     end
%     fclose(fid1);
%     fclose(fid2);
%     fclose(fid3);
%     fid1=fopen('football_ncut.txt','wt');
%     fid2=fopen('football_ncut_node.csv','wt');
%     fid3=fopen('football_ncut_edge.csv','wt');
%     fprintf(fid3,'source,target,type\n');
%     for i=1:row-1
%         for j=i+1:row
%             if mat.A(i,j)
%                 fprintf(fid3,'%d,%d,undirected\n',i,j);
%             end
%         end
%     end
%     clustering=ncut(mat.A,mat.k);
%     fprintf(fid2,'id,nodecolor\n');
%     for i=1:row
%         fprintf(fid1,'%d\n',clustering(i,1));
%         fprintf(fid2,'%d,%d\n',i,clustering(i,1));
%     end
%     fclose(fid1);
%     fclose(fid2);
%     fclose(fid3);
%     fid1=fopen('football_modularity.txt','wt');
%     fid2=fopen('football_modularity_node.csv','wt');
%     fid3=fopen('football_modularity_edge.csv','wt');
%     fprintf(fid3,'source,target,type\n');
%     for i=1:row-1
%         for j=i+1:row
%             if mat.A(i,j)
%                 fprintf(fid3,'%d,%d,undirected\n',i,j);
%             end
%         end
%     end
%     clustering=modularity(mat.A,mat.k);
%     fprintf(fid2,'id,nodecolor\n');
%     for i=1:row
%         fprintf(fid1,'%d\n',clustering(i,1));
%         fprintf(fid2,'%d,%d\n',i,clustering(i,1));
%     end
%     fclose(fid1);
%     fclose(fid2);
%     fclose(fid3);
%     fid1=fopen('football_girvannewman.txt','wt');
%     fid2=fopen('football_girvannewman_node.csv','wt');
%     fid3=fopen('football_girvannewman_edge.csv','wt');
%     fprintf(fid3,'source,target,type\n');
%     for i=1:row-1
%         for j=i+1:row
%             if mat.A(i,j)
%                 fprintf(fid3,'%d,%d,undirected\n',i,j);
%             end
%         end
%     end
%     clustering=girvannewman(mat.A,mat.k);
%     fprintf(fid2,'id,nodecolor\n');
%     for i=1:row
%         fprintf(fid1,'%d\n',clustering(1,i));
%         fprintf(fid2,'%d,%d\n',i,clustering(1,i));
%     end
%     fclose(fid1);
%     fclose(fid2);
%     fclose(fid3);
% %------------------------------------------------------------------------
%     disp('DBLP');
%     mat=load('DBLP.mat');
%     [row,~]=size(mat.A);
%     fid1=fopen('DBLP_alinkjaccard.txt','wt');
%     fid2=fopen('DBLP_alinkjaccard_node.csv','wt');
%     fid3=fopen('DBLP_alinkjaccard_edge.csv','wt');
%     fprintf(fid3,'source,target,type\n');
%     for i=1:row-1
%         for j=i+1:row
%             if mat.A(i,j)
%                 fprintf(fid3,'%d,%d,undirected\n',i,j);
%             end
%         end
%     end
%     clustering=alinkjaccard(mat.A,mat.k);
%     fprintf(fid2,'id,nodecolor\n');
%     for i=1:row
%         fprintf(fid1,'%d\n',clustering(i,1));
%         fprintf(fid2,'%d,%d\n',i,clustering(i,1));
%     end
%     fclose(fid1);
%     fclose(fid2);
%     fclose(fid3);
%     fid1=fopen('DBLP_rcut.txt','wt');
%     fid2=fopen('DBLP_rcut_node.csv','wt');
%     fid3=fopen('DBLP_rcut_edge.csv','wt');
%     fprintf(fid3,'source,target,type\n');
%     for i=1:row-1
%         for j=i+1:row
%             if mat.A(i,j)
%                 fprintf(fid3,'%d,%d,undirected\n',i,j);
%             end
%         end
%     end
%     clustering=rcut(mat.A,mat.k);
%     fprintf(fid2,'id,nodecolor\n');
%     for i=1:row
%         fprintf(fid1,'%d\n',clustering(i,1));
%         fprintf(fid2,'%d,%d\n',i,clustering(i,1));
%     end
%     fclose(fid1);
%     fclose(fid2);
%     fclose(fid3);
%     fid1=fopen('DBLP_ncut.txt','wt');
%     fid2=fopen('DBLP_ncut_node.csv','wt');
%     fid3=fopen('DBLP_ncut_edge.csv','wt');
%     fprintf(fid3,'source,target,type\n');
%     for i=1:row-1
%         for j=i+1:row
%             if mat.A(i,j)
%                 fprintf(fid3,'%d,%d,undirected\n',i,j);
%             end
%         end
%     end
%     clustering=ncut(mat.A,mat.k);
%     fprintf(fid2,'id,nodecolor\n');
%     for i=1:row
%         fprintf(fid1,'%d\n',clustering(i,1));
%         fprintf(fid2,'%d,%d\n',i,clustering(i,1));
%     end
%     fclose(fid1);
%     fclose(fid2);
%     fclose(fid3);
%     fid1=fopen('DBLP_modularity.txt','wt');
%     fid2=fopen('DBLP_modularity_node.csv','wt');
%     fid3=fopen('DBLP_modularity_edge.csv','wt');
%     fprintf(fid3,'source,target,type\n');
%     for i=1:row-1
%         for j=i+1:row
%             if mat.A(i,j)
%                 fprintf(fid3,'%d,%d,undirected\n',i,j);
%             end
%         end
%     end
%     clustering=modularity(mat.A,mat.k);
%     fprintf(fid2,'id,nodecolor\n');
%     for i=1:row
%         fprintf(fid1,'%d\n',clustering(i,1));
%         fprintf(fid2,'%d,%d\n',i,clustering(i,1));
%     end
%     fclose(fid1);
%     fclose(fid2);
%     fclose(fid3);
%     fid1=fopen('DBLP_girvannewman.txt','wt');
%     fid2=fopen('DBLP_girvannewman_node.csv','wt');
%     fid3=fopen('DBLP_girvannewman_edge.csv','wt');
%     fprintf(fid3,'source,target,type\n');
%     for i=1:row-1
%         for j=i+1:row
%             if mat.A(i,j)
%                 fprintf(fid3,'%d,%d,undirected\n',i,j);
%             end
%         end
%     end
%     clustering=girvannewman(mat.A,mat.k);
%     fprintf(fid2,'id,nodecolor\n');
%     for i=1:row
%         fprintf(fid1,'%d\n',clustering(1,i));
%         fprintf(fid2,'%d,%d\n',i,clustering(1,i));
%     end
%     fclose(fid1);
%     fclose(fid2);
%     fclose(fid3);
% %------------------------------------------------------------------------
    disp('Egonet');
    mat=load('egonet.mat');
    [row,~]=size(mat.x);
%     fid1=fopen('egonet_alinkjaccard.txt','wt');
%     fid2=fopen('egonet_alinkjaccard_node.csv','wt');
%     fid3=fopen('egonet_alinkjaccard_edge.csv','wt');
%     fprintf(fid3,'source,target,type\n');
%     for i=1:row-1
%         for j=i+1:row
%             if mat.x(i,j)
%                 fprintf(fid3,'%d,%d,undirected\n',i,j);
%             end
%         end
%     end
%     clustering=alinkjaccard(mat.x,18);
%     fprintf(fid2,'id,nodecolor\n');
%     for i=1:row
%         fprintf(fid1,'%d\n',clustering(i,1));
%         fprintf(fid2,'%d,%d\n',i,clustering(i,1));
%     end
%     fclose(fid1);
%     fclose(fid2);
%     fclose(fid3);
%     fid1=fopen('egonet_rcut.txt','wt');
%     fid2=fopen('egonet_rcut_node.csv','wt');
%     fid3=fopen('egonet_rcut_edge.csv','wt');
%     fprintf(fid3,'source,target,type\n');
%     for i=1:row-1
%         for j=i+1:row
%             if mat.x(i,j)
%                 fprintf(fid3,'%d,%d,undirected\n',i,j);
%             end
%         end
%     end
%     clustering=rcut(mat.x,18);
%     fprintf(fid2,'id,nodecolor\n');
%     for i=1:row
%         fprintf(fid1,'%d\n',clustering(i,1));
%         fprintf(fid2,'%d,%d\n',i,clustering(i,1));
%     end
%     fclose(fid1);
%     fclose(fid2);
%     fclose(fid3);
%     fid1=fopen('egonet_ncut.txt','wt');
%     fid2=fopen('egonet_ncut_node.csv','wt');
%     fid3=fopen('egonet_ncut_edge.csv','wt');
%     fprintf(fid3,'source,target,type\n');
%     for i=1:row-1
%         for j=i+1:row
%             if mat.x(i,j)
%                 fprintf(fid3,'%d,%d,undirected\n',i,j);
%             end
%         end
%     end
%     clustering=ncut(mat.x,18);
%     fprintf(fid2,'id,nodecolor\n');
%     for i=1:row
%         fprintf(fid1,'%d\n',clustering(i,1));
%         fprintf(fid2,'%d,%d\n',i,clustering(i,1));
%     end
%     fclose(fid1);
%     fclose(fid2);
%     fclose(fid3);
%     fid1=fopen('egonet_modularity.txt','wt');
%     fid2=fopen('egonet_modularity_node.csv','wt');
%     fid3=fopen('egonet_modularity_edge.csv','wt');
%     fprintf(fid3,'source,target,type\n');
%     for i=1:row-1
%         for j=i+1:row
%             if mat.x(i,j)
%                 fprintf(fid3,'%d,%d,undirected\n',i,j);
%             end
%         end
%     end
%     clustering=modularity(mat.x,18);
%     fprintf(fid2,'id,nodecolor\n');
%     for i=1:row
%         fprintf(fid1,'%d\n',clustering(i,1));
%         fprintf(fid2,'%d,%d\n',i,clustering(i,1));
%     end
%     fclose(fid1);
%     fclose(fid2);
%     fclose(fid3);
    fid1=fopen('egonet_girvannewman.txt','wt');
    fid2=fopen('egonet_girvannewman_node.csv','wt');
    fid3=fopen('egonet_girvannewman_edge.csv','wt');
    fprintf(fid3,'source,target,type\n');
    for i=1:row-1
        for j=i+1:row
            if mat.x(i,j)
                fprintf(fid3,'%d,%d,undirected\n',i,j);
            end
        end
    end
    disp('start cluster');
    clustering=girvannewman(mat.x,18);
    fprintf(fid2,'id,nodecolor\n');
    for i=1:row
        fprintf(fid1,'%d\n',clustering(1,i));
        fprintf(fid2,'%d,%d\n',i,clustering(1,i));
    end
    fclose(fid1);
    fclose(fid2);
    fclose(fid3);