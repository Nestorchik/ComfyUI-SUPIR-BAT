echo off
set startDir=%CD%
set comfy=%CD%\ComfyUI\
set venv=%CD%\ComfyUI\venv\Scripts\
%venv%\python %comfy%main.py
cd %startDir%