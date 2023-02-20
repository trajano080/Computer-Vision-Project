# Computer Vision Project
This image recognition system classifies objects into nails, screws, washers or nuts, and if the object is a nail or a screw, it measures the length. The system was programmed on Matlab and uses Knn and K-means for the classification.
## How it Works
Before classifying an image, it goes through filtering. First, it's turned into a grayscale image, then noise is filtered, lighting is corrected and finally it is turned into a binary image. Then, Hu's 7 invariant moments are calculated for the image, and through the Knn and Kmeans methods, it is classified using a database of the invariant moments of sample images. The length is calculated using a pixel-to-mm conversion.
## Installation and Usage
Download the files and place the image you want to clasify into the same directory. Run the file "Image_recognition.m" on Matlab. The program will ask you to enter the filename of your image. Then, it will show the image after each filtering stage, the result of the classification, and in the cases of screws and nails, the length.
To get an accurate classification, a black background and dim lighting for the image should be used. The length measurement has proved to be accureate when taking pictures of objects from a distance of about 12 cm, with a 48 MP camera, resulting in a 4000x3000 resolution image.
