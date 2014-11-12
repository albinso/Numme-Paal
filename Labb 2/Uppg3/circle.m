function c = circle(x, y, r)

imageSizeX = 640;
imageSizeY = 480;
[columnsInImage rowsInImage] = meshgrid(1:imageSizeX, 1:imageSizeY);
% Next create the circle in the image.
centerX = x;
centerY = y;
radius = r;
c = (rowsInImage - centerY).^2 ...
    + (columnsInImage - centerX).^2 <= radius.^2;