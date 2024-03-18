# ComfyUI-SUPIR-BAT

This package is designed for automatic installation of "ComfyUI" and the "SUPER" upscale node with its models.

This package is designed for automatic installation of "ComfyUI" and the "SUPER" upscale node with its models. The idea to do something "like this" appeared after many complained that "It was not possible to launch!"...

I use git versions of components, something may change when updating them.

Create an empty directory (for example, "c:\1") and copy all files from the archive there.

Then run the command: c:\1> git clone https://github.com/Nestorchik/ComfyUI-SUPIR-BAT.git

Launching the installation of the "ComfyUI+SUPIR+models" distribution kit with the "install_super.bat" file.

Before starting, change the value of the variable "python=c:\p31\python.exe" for the real location of python 3.10 version you have! GIT-must be registered in the PATH!

To reinstall, completely delete the "ComfyUI" folder (only save the models so as not to download them again)

Installation and assembly takes place automatically with the bat file "super_install.bat", which contains all the commands for downloading and installing everything that is needed for "SUPIR" to work under the control of "ComfyUI". All python packages and modules are downloaded and copied to their place automatically.

The exception is the "SUPER" models, because downloading them takes a long time. The lines for downloading models are commented as "ECHO", if you want to download them together with the installation of the interface itself, just uncomment the lines starting with "ECHO" (all other "echo" commands are written in lowercase).

Attached is a separate file for downloading models - "super_models_download.bat". Place it next to the file "sape_install.bat" and run it separately, because it takes into account the directory structure relative to its location.

If you already have downloaded models:

- SUPER-v0.kt <--- (for testing, you can download only this model + sd_xl_base_1.0_0.9vae.safetensors)
- SUPER-v 0Q.ckpt
- sd_xl_base_1.0_0.9vae.safetensors

... then just put them in the folder "Config\models\checkpoints" because "SUPER_Upscale" will look for them there!

The installation results from this bat file were tested on the attached "example.jpg" and "super_workflow.json" (folder "examples"), the result is represented by the file "result.jpg" (folder "examples") and is the result of interface testing after installation by this installer. The generation time on the NVIDIA GeForce RTX 2080 Ti (TU 102) card and 64Gb system memory (Intel Core i9-9940X processor) was 1396 seconds (scale_by=2).

Try to follow the rules described here: https://t.me/stable_cascade_rus/47/751 , the attached file is "example.jpg" corresponds to the rules described there, and testing was carried out on it. To speed up the generation, you can lower the "scale_by" parameter to "1" if you just need to quickly check the functionality of the assembly, in this case the generation time will be 55 seconds (at least for me).

Launching the browser after the server starts: http://127.0.0.1:8188
Launching the installed interface: "run_webui.bat"

After starting the interface, upload the "super_workflow.json" file to "ComfyUI", and the "example" file to the "Load Image" node (from the "examples" folder) for testing.

Good luck!)
@srigert
https://t.me/stable_cascade_rus

P.S.
I hope no one will "raise their tongue" to say that this is a "bad build", since there is simply no "build" here.
