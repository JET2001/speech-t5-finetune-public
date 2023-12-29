# speech-t5-singlish-finetuning

## Summary
Trained model twice:

Model v1: Finetuned on 50 speakers
Model v2: Finetuned on 120 speakers
Similar Spectrogram loss of 0.39

See model training in `TTSR_Models.ipynb` and testing in `Testing-Finetuned-Models.ipynb`.
Huggingface repository: https://huggingface.co/JET2001/speecht5_tts_imda_nsc_p1

Other notes:
- Model training is done in `TTSR-Models.ipynb`
- Model testing is done in `Testing-Finetuned-Models.ipynb`
- Docker image is published at registry "jet2001/speech-t5-finetune-v2", can pull from there
- Use start-container.bat and stop-container.bat to run and stop the container locally
- Use gpu-start-container.sh and gpu-stop-container.sh to start and stop the container on the ec2 instance.
- Refer to documentation directory for notes to set up EC2 instance

### Storing Secrets
```
# config.py
HF_TOKEN = "YOUR_TOKEN"
```
