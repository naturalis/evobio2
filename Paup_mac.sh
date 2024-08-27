# Paup download site:
https://phylosolutions.com/paup-test/

# Select a version for your OS:
https://phylosolutions.com/paup-test/paup4a168_osx.gz

# Files are put in the Downloads folder (default): 
# unzip the downloaded file (just click on it)

# Open a terminal window, move Paup to your apps folder
# and make it executable:
cd ~/Downloads
mv paup4a168_osx ~/Applications
chmod a+x ~/Applications/paup4a168_osx

# Create a symlink to /usr/local/bin for global access:
sudo ln -s $(readlink -f ~/Applications/paup4a168_osx) /usr/local/bin

# Start the app by typing: "paup" - tab (completion) - enter
paup4a168_osx
# show paup commands
help
# exit paup
quit
