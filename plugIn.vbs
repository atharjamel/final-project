Dim cam ' "The" Camera object
Set cam = CreateObject("MaxIm.CCDCamera")
cam.LinkEnabled = True
cam.ShowWindow(true)

if Not cam.LinkEnabled Then
   wscript.echo "Failed to start camera."
   Quit
End If

wscript.echo "Camera is ready, start autosave sequence."


Dim fullpath
fullpath = "C:\Users\user\Pictures\auto1\plugin.seq"

wscript.echo fullpath

cam.StartSequence(fullpath)

Wscript.Sleep 15000

wscript.echo "Done."

