echo off
cls
set startDir=%CD%
set python=c:\p31\python
set comfy=%CD%\ComfyUI\
set venv=%CD%\ComfyUI\venv\Scripts\
echo ----------------------------
echo Downloading "ComfyUI"
echo ----------------------------
git clone https://github.com/comfyanonymous/ComfyUI.git
echo ----------------------------
echo Installing VENV for ComfyUI
%python% -m venv %CD%\ComfyUI\venv
echo ----------------------------
echo Updating PIP version
%venv%python -m pip install --upgrade pip
echo ----------------------------
echo Installing ComfyUI python packages
%venv%python -m pip install -r %comfy%requirements.txt
echo ----------------------------
echo Uninstalling CPU python packages
%venv%python -m pip uninstall torch -y
echo ----------------------------
echo Installing GPU-cuda TORCH python packages
%venv%python -m pip install torch==2.1.2 torchvision==0.16.2 torchaudio==2.1.2 --index-url https://download.pytorch.org/whl/cu121
echo ----------------------------
echo Installing GPU-cuda xFormers python packages
%venv%python -m pip install -U xformers==0.0.23.post1 --index-url https://download.pytorch.org/whl/cu121
echo ----------------------------
echo Installing SUPIR ComfyUI custom_node
cd %comfy%custom_nodes
git clone https://github.com/kijai/ComfyUI-SUPIR.git
cd %startDir%
echo ----------------------------
echo Installing SUPIR python packages
%venv%\python -m pip install -r %comfy%custom_nodes\ComfyUI-SUPIR\requirements.txt
echo ----------------------------
echo Installing sucessful
echo ----------------------------

ECHO TO DOWNLOADING MODELS UNCOMMENT NEXT STRINGS !!!!!!!!!!!
ECHO ==================================
ECHO echo Downloading SUPIR models
ECHO cd %comfy%models\checkpoints\
ECHO wget https://huggingface.co/camenduru/SUPIR/resolve/main/SUPIR-v0F.ckpt -P . -q --show-progress
ECHO wget https://huggingface.co/camenduru/SUPIR/resolve/main/SUPIR-v0Q.ckpt -P . -q --show-progress
ECHO wget https://huggingface.co/camenduru/SUPIR/resolve/main/sd_xl_base_1.0_0.9vae.safetensors -P . -q --show-progress
ECHO cd %startDir%
ECHO ==================================
ECHO echo -----------------------------
ECHO echo SUPIR models download finish
ECHO echo -----------------------------

echo ==================================
echo Starting ComfyUI
echo ==================================
echo
%venv%\python %comfy%main.py
pause
