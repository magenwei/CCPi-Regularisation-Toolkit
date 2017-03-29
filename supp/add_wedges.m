% create a wedge mask to simulate the missing wedge

[rows, columns] = size(sino_zing_rings);
grayImage = ones(rows, columns, 'uint8');
xCoords = [0 360 0];
yCoords = [35 7 7];
mask = poly2mask(xCoords, yCoords, rows, columns);
grayImage(mask) = 0; 

xCoords = [727 360 727];
yCoords = [35 7 7];
mask = poly2mask(xCoords, yCoords, rows, columns);
grayImage(mask) = 0; 

xCoords = [0 360 0];
yCoords = [145 173 173];
mask = poly2mask(xCoords, yCoords, rows, columns);
grayImage(mask) = 0; 

xCoords = [727 360 727];
yCoords = [145 173 173];
mask = poly2mask(xCoords, yCoords, rows, columns);
grayImage(mask) = 0; 

grayImage(1:7,:) = 0;
grayImage(173:end,:) = 0;

%figure; imshow(grayImage, [0 1]);
MW_sino_artifacts = sino_zing_rings.*double(grayImage);
%Dweights = Dweights.*double(grayImage);