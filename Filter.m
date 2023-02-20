function imf = Filter(im,show)

    img = rgb2gray(im);    
    imr = medfilt2(img,[10 10]);
    imrr = imdiffusefilt(imr);
    imci = Lighting(imrr);
    imf = im2bw(imci,graythresh(imci));
    imf = bwareaopen(imf,300);
    
    if show  == 1
        figure(1)
        imshow(im)
        title("Unfiltered Image")
        hold off
        
        figure(2)
        imshow(img)
        title("Grayscale Image")
        hold off        
        
        figure(3)
        imshow(imrr)
        title("Filtered Noise Image")
        hold off
        
        figure(4)
        imshow(imci)
        title("Lighting-corrected Image")
        hold off
        
        figure(5)
        imshow(imf)
        title("Binary Image")
        hold off
    end

end
