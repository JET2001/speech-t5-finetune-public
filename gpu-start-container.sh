CURRENTDIR=$(pwd)
docker run -itd --rm --gpus all --name speech-t5-finetune-container-v2 -p 8888:8888 -v $CURRENTDIR:/home jet2001/speech-t5-finetune-v2:latest
