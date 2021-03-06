# Numbers from screenshots with Tesseract OCR sandbox 

* http://github.com/Zloy/tesseract-training
* http://habrahabr.ru/blogs/image_processing/138401 



## DESCRIPTION

This repo contains all necessary bits to OCR number images grabbed from the screen like that 
![image to OCR example](https://github.com/Zloy/tesseract-training/raw/master/samples/pot0007.png "image to OCR example]")

If you got a bunch of number images and wish to convert them into plain text that is what you need



## ON WINDOWS


### HOW TO USE

1. Clone that repository
2. Install [tesseract-3.01](http://code.google.com/p/tesseract-ocr/downloads/detail?name=tesseract-ocr-setup-3.01-1.exe). If it's gone than install tesseract from distros subfolder.

So, you got subfolders:


#### Samples

It is full of sample number images. It is convenient to OCR them all together. That is why I created <b>total.png</b> file:

![total.png](https://github.com/Zloy/tesseract-training/raw/master/total.png "total.png")


#### exp1 - as is

<tt>cd exp1 - as is</tt>

That folder contais <b>run.cmd</b> which ocrs total.png. The result text is in total.txt. You can see the errors:

![02a.gif](https://github.com/Zloy/tesseract-training/raw/master/images/02a.gif "02a.gif")

Tesseract recognizes 6 and 8 as 5 and misses decimal dot .


#### exp2 - trained

<tt>cd exp2 - trained</tt>

That folder contais <b>train.cmd</b> which automatically trains tesseract for such images. See it and read [userguide](http://code.google.com/p/tesseract-ocr/wiki/TrainingTesseract3) to learn how to train tesseract. 

To train tesseract automatically just launch <b>train.cmd</b>

Launch run.cmd to ocr total.png with trained tesseract. The result text is in total.txt. You can see the errors:

![03a.gif](https://github.com/Zloy/tesseract-training/raw/master/images/03a.gif "03a.gif")

You can see that tesseract learned how to distinct 6 and 8 from 5, but still misses decimal dots .


#### exp3 - scaled

As soon as thare are errors try to scale total.png. To do that <tt>cd exp3 - scaled</tt>

It contains <b>total-scaled.png</b> the fragment of which you can see below:

![scaled-part.png](https://github.com/Zloy/tesseract-training/raw/master/images/scaled-part.png "scaled-part.png")

To ocr total-scaled launch run.cmd. The result text is in total.txt. You can see the errors:

![04a.gif](https://github.com/Zloy/tesseract-training/raw/master/images/04a.gif "04a.gif")

It mixes 7 with 2 and adds 3 redundant spaces between digits


#### exp4 - resized

You can scale total.png different way: <tt>cd exp4 - resized</tt>. It contains <b>total-resized.png</b> the fragment of which you can see below:

![resized-part.png](https://github.com/Zloy/tesseract-training/raw/master/images/resized-part.png "resized-part.png")

To ocr total-resized launch run.cmd. The result text is in total.txt. You can see the errors:

![05a.gif](https://github.com/Zloy/tesseract-training/raw/master/images/05a.gif "05a.gif")


#### exp5 - one by one

What will happen if you wish ocr number images on by one?

<tt>cd exp5 - one by one</tt>

It contains 10 sample images and corresponding txt files which are the results of recognition

To ocr them launch run.cmd. See text files to find errors. Some 2 and 3 digit numbers are not recognized at all!


#### exp6 - ten in line

What will happen if you wish to ocr 10 images all together?

<tt>cd exp5 - ten in line</tt>

It contains <b>teninline.png</b> and corresponding txt file with the result of recognition

![teninline.png](https://github.com/Zloy/tesseract-training/blob/master/exp6%20-%20ten%20in%20line/teninline.png "teninline.png")

To ocr it launch run.cmd. See text file - it contains no errors!


## ON LINUX

It takes little efforts to port all those <b>cmd</b> oneliners to bash ones. Write them, test them and submit pull request if you wish to contribute.
