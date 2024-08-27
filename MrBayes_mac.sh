# If Homebrew is not yet installed on your system
# open a terminal window and execute:
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install MrBayes
brew install mrbayes

# Start MrBayes
mb
# Possibly you will encounter a shmem/mmap error - just ignore (it doesn't affect execution)
# Show Help
help
# Quit MrBayes
quit
