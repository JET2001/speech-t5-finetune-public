# speech-t5-singlish-finetuning

## Updates (09/12/2023)
Trained model twice:

Model v1: Finetuned on 50 speakers
Model v2: Finetuned on 120 speakers
See model testing in `Testing-Finetuned-Models.ipynb`, and huggingface repository: https://huggingface.co/JET2001/speecht5_tts_imda_nsc_p1

Datasets:
Embeddings for Dataset 1: https://huggingface.co/datasets/JET2001/hf-imda-dataset-with-embeddings
Embeddings for Dataset 2: https://huggingface.co/datasets/JET2001/hf-imda-dataset-with-embeddings-150-speakers
Processed Data for Speech T5: https://huggingface.co/datasets/JET2001/imda-nsc-processed

# Storing Secrets
Create a file `config.py` with the following information:
- Huggingface token with key `HF_TOKEN`
- 
Other notes:
- Model training is done in `TTSR-Models.ipynb`
- Model testing is done in `Testing-Finetuned-Models.ipynb`
- Docker image is published at registry "jet2001/speech-t5-finetune-v2", can pull from there
- Use start-container.bat and stop-container.bat to run and stop the container locally
- Use gpu-start-container.sh and gpu-stop-container.sh to start and stop the container on the ec2 instance.
- Refer to documentation directory for notes to set up EC2 instance