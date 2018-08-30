# xadb
 Android Debug Bridge (ADB) time saver for multiple devices.


------

# Why should I use **xadb**?
xadb is intended to save you time when working with multiple devices over adb.
Have you ever felt the pain of having to execute *adb devices* and copy-pasting the device id everytime you need to access the device, in order to execute *adb -s $device_id ...*? And then having to do it multiple times when switching between devices.

# How does it work?
xadb makes the access really simple. You just have to know/insert a bit of the device id and it will search for it.
For instance, if a device ID is 123abc456, you can use it just by executing `xadb 56 shell`. The substring you insert is up to you.

# How can I install it?
**Unix**
+ Copy the script into `~/bin/`
+ Change the script's permissions: `chmod +x ~/bin/xadb.sh`
+ (Opcional) Copy the alias `alias xadb="~/bin/xadb.sh"` into your `*~/.bashrc*` (or your alias file)
+ Enjoy :)

# Contributions
Feel free to contribute to this project and improve it! :)
