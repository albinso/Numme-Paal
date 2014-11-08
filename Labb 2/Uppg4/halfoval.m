function res = halfoval(x, xstart, ystart, height, width)
    res = ystart + sqrt(height.^2 - ((x+xstart)/width).^2)
end