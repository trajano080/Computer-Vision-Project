function imci = Lighting(im)

    [Y,X,c] = size(im);
    
    if X<Y
        t = round(X/2);
    else
        t = round(Y/2);
    end
    
    c = strel('square',t);
    
    ime = imerode(im,c);
    
    imed = imdilate(ime,c);
    
    imci = imsubtract(im,imed);

end