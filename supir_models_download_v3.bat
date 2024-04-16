echo off
cls
cd %CD%\ComfyUI\models\checkpoints\
echo =============================
echo Downloading SUPIR models
echo =============================
wget https://huggingface.co/Kijai/SUPIR_pruned/resolve/main/SUPIR-v0F_fp16.safetensors -P . -q --show-progress
wget https://huggingface.co/Kijai/SUPIR_pruned/resolve/main/SUPIR-v0Q_fp16.safetensors -P . -q --show-progress
wget https://huggingface.co/camenduru/SUPIR/resolve/main/sd_xl_base_1.0_0.9vae.safetensors  -P . -q --show-progress
echo =============================
echo Downloading FINISH
echo =============================
pause
