%开关中值滤波
Image=imread('lena.jpg');
NoiseImage=imnoise(Image,'salt & pepper',0.8);
[sizex,sizey]=size(NoiseImage);

for i=2:sizex-1
    for j=2:sizey-1
        Temp=[NoiseImage(i-1,j-1),NoiseImage(i-1,j),NoiseImage(i-1,j+1),NoiseImage(i,j-1),NoiseImage(i,j),NoiseImage(i,j+1),NoiseImage(i+1,j-1),NoiseImage(i+1,j),NoiseImage(i+1,j+1)];
        M=median(Temp);
        if NoiseImage(i,j)==0||NoiseImage(i,j)==255
            NoiseImage(i,j)=M;
        end
    end
end
