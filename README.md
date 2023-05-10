# SaveAllTif

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.

If you have images from any of the Leica microscopes, the images must be saved individually first as .tif to ensure any of the following macros work :) Here is a code to do this quickly every time!

Before starting add the `SaveAllImages` java file to the plugins folder on FIJI. Found in the files above or at the below website. For up-to-date versions o fthe plugin use the website below. Credit to the SaveAllImages plugin creators at SpineUp:
https://spineup.jimdofree.com/downloads/


For MAC:
- Left click on FIJI in applications folder
- Open Package contents
- Drag the above 'saveall JAR' folder into the plugins folder
- Restart FIJI (SaveAllImages Will now be in plugins section)
![image](https://github.com/MarnieMaddock/SaveAllTif/assets/120872999/25fc6c0c-6696-4ae7-90ea-76fa247cf41d)

Before using any of the macros I have made/found, all .lif files made with the microscopes have to separated.
I.e. if you have saved photos under a project, each individual picture needs to be saved as its own entity.
![image](https://github.com/MarnieMaddock/SaveAllTif/assets/120872999/dc5e0a01-1021-4205-9a4e-297ab9fadcd6)

To do this:
- Make a folder with all your .lif files (I call this INPUT_Images)
- Make a new empty folder (I call this OUTPUT_Images)
- Open ImageJ
- Drag and drop the 'Openall_INPUTfolderfiles_SAVEALL' into FIJI/ImageJ
- Click Run
- In Input directory select INPUT_images folder
- In output directory select OUTPUT_images folder
- File suffix .lif
- OK
- All files will open individually (if you have many images this may take a few minutes), then a pop-up will show up:
![image](https://github.com/MarnieMaddock/SaveAllTif/assets/120872999/f5fe03ba-6d91-4f80-a2e8-6465b3e8ff51)

- Click No (Yes will save each channel as its own individual photo, for now we don't want this, we want the stack)
- Choose the directory where your OUTPUT_Images folder is.
All your images are now their own file as a TIFF 

Note each image is saved with a unique name using Herbie G., created code in December 2011.
