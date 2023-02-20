function Image_Recognition

    clc,clear
    close all;

    DB = Database;
    
    im = imread(input("Enter the filename of the image to be classified: ",'s'));
    imf = Filter(im,1);

    M = Moments(imf);
    
    KnnClassification = Knn(DB,M,3);
    
    disp(" ")
    disp("Knn:")
    if KnnClassification == 1
        disp('The object is a screw.')
    elseif KnnClassification == 2
        disp('The object is a nail.')
    elseif KnnClassification == 3
        disp('The object is a washer.')
    elseif KnnClassification == 4
        disp('The object is a nut.')
    end

    KmeansClassification = Kmeans(DB,M);
    
    disp(" ")
    disp("Kmeans:")
    if KmeansClassification == 1
        disp('The object is a screw.')
    elseif KmeansClassification == 2
        disp('The object is a nail.')
    elseif KmeansClassification == 3
        disp('The object is a washer.')
    elseif KmeansClassification == 4
        disp('The object is a nut.')
    end
    
    if(KnnClassification == 1 | KnnClassification == 2)
        L = Length(imf,KnnClassification);

        disp(" ")
        disp(['Length: ', num2str(L),' mm']);
    end
end