tesseract total.png total batch.nochop makebox

REM echo edit total.box
REM pause
REM java -jar jTessBoxEditor-0.6\jTessBoxEditor.jar

rm ttn.*

unicharset_extractor total.box

tesseract total.png total nobatch box.train

echo total 0 0 0 0 0 > font_properties

mftraining -F font_properties -U unicharset total.tr

cntraining -F font_properties -U unicharset total.tr

REM generate_words_list.rb > number
REM wordlist2dawg frequent_words_list freq-dawg unicharset
REM wordlist2dawg words_list word-dawg unicharset
REM wordlist2dawg number number-dawg unicharset
wordlist2dawg punc punc-dawg unicharset

ren config        ttn.config
ren unicharset    ttn.unicharset
ren unicharambigs ttn.unicharambigs
ren inttemp       ttn.inttemp
ren pffmtable     ttn.pffmtable
ren normproto     ttn.normproto
ren punc-dawg     ttn.punc-dawg
ren word-dawg     ttn.word-dawg
ren number-dawg   ttn.number-dawg
ren freq-dawg     ttn.freq-dawg 

combine_tessdata ttn.

cp ttn.* "c:\program files\tesseract-ocr\tessdata"

tesseract ../total.png total-trained -l ttn

