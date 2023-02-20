function KnnClassification = Knn(DB,Mim,K)

    for i=1:80  
        distance(i,1) = ((Mim(1)-DB(i,1))^2 + (Mim(2)-DB(i,2))^2 + (Mim(3)-DB(i,3))^2 + (Mim(4)-DB(i,4))^2 + (Mim(5)-DB(i,5))^2 + (Mim(6)-DB(i,6))^2 + (Mim(7)-DB(i,7))^2)^0.5;
        distance(i,2) = DB(i,8);  
    end

    distance = sortrows(distance);
    
    a = zeros(1,4);
    
    for i=1:K
        if distance(i,2) == 1
            a(1) = a(1) + 1;
        elseif distance(i,2) == 2
            a(2) = a(2) + 1;
        elseif distance(i,2) == 3
            a(3) = a(3) + 1;
        elseif distance(i,2) == 4
            a(4) = a(4) + 1;
        end
    end
    
    [MAX,KnnClassification] = max(a);
    
end