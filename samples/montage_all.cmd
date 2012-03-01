REM Requires ImageMagick installed
SET geometry="1x10"
SET all_geometry="1x6"
echo %geometry%

montage pot0001.png pot0002.png pot0003.png pot0004.png pot0005.png pot0006.png pot0007.png pot0008.png pot0009.png pot0010.png -geometry +0+0 -tile %geometry% 1.png
montage pot0011.png pot0012.png pot0013.png pot0014.png pot0015.png pot0016.png pot0017.png pot0018.png pot0019.png pot0020.png -geometry +0+0 -tile %geometry% 2.png
montage pot0021.png pot0022.png pot0023.png pot0024.png pot0025.png pot0026.png pot0027.png pot0028.png pot0029.png pot0030.png -geometry +0+0 -tile %geometry% 3.png
montage pot0031.png pot0032.png pot0033.png pot0034.png pot0035.png pot0036.png pot0037.png pot0038.png pot0039.png pot0040.png -geometry +0+0 -tile %geometry% 4.png
montage pot0041.png pot0042.png pot0043.png pot0044.png pot0045.png pot0046.png pot0047.png pot0048.png pot0049.png pot0050.png -geometry +0+0 -tile %geometry% 5.png
montage pot0051.png pot0052.png pot0053.png pot0054.png pot0055.png pot0056.png pot0057.png pot0058.png pot0059.png pot0060.png -geometry +0+0 -tile %geometry% 6.png

montage 1.png  2.png  3.png  4.png  5.png  6.png -geometry +0+0 -tile %all_geometry% total.png
REM rm 1.png 2.png 3.png 4.png 5.png 6.png

convert2 -scale "208x1920" total.png total-scaled.png
convert2 -resize "208x1920" total.png total-resized.png
