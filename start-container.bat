SET CURRENTDIR="%cd%"
docker run -itd --name speech-t5-finetune-container -v %CURRENTDIR%:/home speech-t5-finetune:image