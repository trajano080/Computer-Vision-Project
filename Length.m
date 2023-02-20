function L = Length(imf,typeOfObject)

    imf2 = bwareaopen(imf,10000);
    Size = regionprops(imf2,'BoundingBox');
    width = Size.BoundingBox(3);
    height = Size.BoundingBox(4);
    if typeOfObject == 1
        if 0.6*width > height
            Lp = width;
        elseif 0.6*height > width
            Lp = height;
        else
            Lp = (width^2 + height^2)^0.5;
        end
    elseif typeOfObject == 2
        if 0.25*width > height
            Lp = width;
        elseif 0.25*height > width
            Lp = height;
        else
            Lp = (width^2 + height^2)^0.5;
        end
    end
    
    L = Lp/42.69;

end