echo off
cls
cd %CD%\ComfyUI\models\checkpoints\
echo -----------------------------
echo Downloading SUPIR models
echo -----------------------------
wget https://huggingface.co/camenduru/SUPIR/resolve/main/SUPIR-v0F.ckpt -P . -q --show-progress
wget https://huggingface.co/camenduru/SUPIR/resolve/main/SUPIR-v0Q.ckpt -P . -q --show-progress
wget https://huggingface.co/camenduru/SUPIR/resolve/main/sd_xl_base_1.0_0.9vae.safetensors  -P . -q --show-progress
echo -----------------------------
echo Downloading FINISH
echo -----------------------------
