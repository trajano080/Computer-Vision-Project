function KmeansClassification = Kmeans(DB,Mim)

    DB(:,9) = zeros(80,1);
    
    r1 = randi(20);
    r2 = 20+randi(20);
    r3 = 40+randi(20);
    r4 = 60+randi(20);
    
    k1 = DB(r1,1:7);
    k2 = DB(r2,1:7);
    k3 = DB(r3,1:7);
    k4 = DB(r4,1:7);
    
    reasignations = 1;
    while reasignations > 0;
        
        reasignations = 0;
        for i=1:80
            distance(1) = ((k1(1)-DB(i,1))^2 + (k1(2)-DB(i,2))^2 + (k1(3)-DB(i,3))^2 + (k1(4)-DB(i,4))^2 + (k1(5)-DB(i,5))^2 + (k1(6)-DB(i,6))^2 + (k1(7)-DB(i,7))^2)^0.5;
            distance(2) = ((k2(1)-DB(i,1))^2 + (k2(2)-DB(i,2))^2 + (k2(3)-DB(i,3))^2 + (k2(4)-DB(i,4))^2 + (k2(5)-DB(i,5))^2 + (k2(6)-DB(i,6))^2 + (k2(7)-DB(i,7))^2)^0.5;
            distance(3) = ((k3(1)-DB(i,1))^2 + (k3(2)-DB(i,2))^2 + (k3(3)-DB(i,3))^2 + (k3(4)-DB(i,4))^2 + (k3(5)-DB(i,5))^2 + (k3(6)-DB(i,6))^2 + (k3(7)-DB(i,7))^2)^0.5;
            distance(4) = ((k4(1)-DB(i,1))^2 + (k4(2)-DB(i,2))^2 + (k4(3)-DB(i,3))^2 + (k4(4)-DB(i,4))^2 + (k4(5)-DB(i,5))^2 + (k4(6)-DB(i,6))^2 + (k4(7)-DB(i,7))^2)^0.5;
            [m,j] = min(distance);
            if DB(i,9) ~= j
                reasignations = reasignations + 1;
            end
            DB(i,9) = j;
        end

        amountOf1 = 0;
        amountOf2 = 0;
        amountOf3 = 0;
        amountOf4 = 0;
        k1 = [0 0 0 0 0 0 0];
        k2 = [0 0 0 0 0 0 0];
        k3 = [0 0 0 0 0 0 0];
        k4 = [0 0 0 0 0 0 0];
        for i=1:80
            if DB(i,9) == 1
                amountOf1 = amountOf1 + 1;
                k1 = k1 + DB(i,1:7);
            elseif DB(i,9) == 2
                amountOf2 = amountOf2 + 1;
                k2 = k2 + DB(i,1:7);
            elseif DB(i,9) == 3
                amountOf3 = amountOf3 + 1;
                k3 = k3 + DB(i,1:7);
            elseif DB(i,9) == 4
                amountOf4 = amountOf4 + 1;
                k4 = k4 + DB(i,1:7);
            end
        end
        k1 = k1/amountOf1;
        k2 = k2/amountOf2;
        k3 = k3/amountOf3;
        k4 = k4/amountOf4;
        
    end
    
    distance(1) = ((k1(1)-Mim(1))^2 + (k1(2)-Mim(2))^2 + (k1(3)-Mim(3))^2 + (k1(4)-Mim(4))^2 + (k1(5)-Mim(5))^2 + (k1(6)-Mim(6))^2 + (k1(7)-Mim(7))^2)^0.5;
    distance(2) = ((k2(1)-Mim(1))^2 + (k2(2)-Mim(2))^2 + (k2(3)-Mim(3))^2 + (k2(4)-Mim(4))^2 + (k2(5)-Mim(5))^2 + (k2(6)-Mim(6))^2 + (k2(7)-Mim(7))^2)^0.5;
    distance(3) = ((k3(1)-Mim(1))^2 + (k3(2)-Mim(2))^2 + (k3(3)-Mim(3))^2 + (k3(4)-Mim(4))^2 + (k3(5)-Mim(5))^2 + (k3(6)-Mim(6))^2 + (k3(7)-Mim(7))^2)^0.5;
    distance(4) = ((k4(1)-Mim(1))^2 + (k4(2)-Mim(2))^2 + (k4(3)-Mim(3))^2 + (k4(4)-Mim(4))^2 + (k4(5)-Mim(5))^2 + (k4(6)-Mim(6))^2 + (k4(7)-Mim(7))^2)^0.5;
    [m,KmeansClassification] = min(distance);

end