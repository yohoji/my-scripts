# Import decryption key and decrypt password
gpg --import D:/keys/private.key
password=$(gpg --decrypt ./encrypted-passowrd.gpg)

# Wait for 1 hour (3600 seconds)
sleep 3600

# open screen
adb shell input keyevent 26

# swipe to get password screen
adb shell input swipe 500 1000 500 500

# Enter my password to unlock
adb shell input text $password

# Press enter / submit password
adb shell input keyevent 66

# Tap on X Y coordiantes (i.e hangup signal)
adb shell input tap 562 1335