# Halloween-countdown-no-desktop
A Halloween countdown (or any event) over looping videos played to the frame buffer - no desktop needed

My first public project. I wanted to create a Halloween countdown on a little netbook running Archlinux32. I wanted to loop some videos while having a countdown to Halloween.

The script disables screen blanking and works out the days to the entered date. It then loops through all the .mp4 videos in the selected folder and plays them to the frame buffer using ffmpeg, scaled to the screen size entered. It overlays the countdown according to the text settings. On each loop, the hight of the text on the screen is randomised to prevent screen burn when this is left running for some time. 

Not the most elegant code so happy for input.

