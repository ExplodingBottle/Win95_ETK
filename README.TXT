Tool usage guide

NOTE: You must install Windows ADK and check the Deployment Tools in the installer.

1. You must download the Windows XP SP3 in order to obtain a good copy of makecab.exe (if you already have your Windows XP copy of makecab.exe,
put it in the folder MAKECAB\makecab.exe and skip step 2)
2. You must put your Windows XP SP3 update in the UPDATE folder, such as UPDATE\sp3.exe
3. Edit the SETENV.BAT file to make it point to your oscdimg.exe binary.
4. Copy your source Windows 95 disk image into this directory. Consider naming it SOURCE.ISO so you are not confused with the built modified version. (Optional step)
5. Open it with the file explorer or any file expander that supports ISO images.
6. Extract everything in the EXTRACTED folder. If it contains a WIN95 folder, everything is good.
7. Run the PREPARE.BAT file. This will create a WORKSPACE folder from where you can work.

.. do your modifications to the file ..
.. more details can be found in the TECHDOCS folder ..

8. Once all the modifications you wanted to do are done. Run REBUILD.BAT
9. In order to build your CD image, you can run the provided tool BUILD_CD.BAT. It will generate a W95CUST.ISO file.
NOTE: In SETENV.BAT you can configure the volume name of the CD-ROM as well as the name of the output file.
