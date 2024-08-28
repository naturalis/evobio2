# EvoBio2
Instructions for setting up your computer for Evolution Biology 2 course of UL

## Text editor
For some exercises you need to edit and save plain text-files. In contrast to, e.g., Word (which creates/edits rich text documents), a text editor reads and writes files that contain no hidden codes related to layout, formatting etc. For Windows-users we recommend [Notepad++.](https://notepad-plus-plus.org/) Download and install from notepad-plus-plus.org. For Mac: [Textmate](https://macromates.com/)

## File compression
A dedicated archive utility may be better than default Windows-functionality for (de)compressing files/folders. For Windows we recommend: [7Zip.](https://7-zip.org/) For Mac: no need to install (de)compression software (zip is present by default).

## Homebrew - Mac only
[Homebrew.](https://brew.sh/) is a package manager for mac. It will aid in installing (or removing) software in a structured way. To install Homebrew, open a terminal window and run:
<details>
  <summary>Click to expand the code block</summary>
``` /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" ```
</details>

## Java
Some of the programs we use (Mesquite in particular) require Java. Often Java will be installed already. Check if this is the case for your system (open a command prompt on Windows, or a terminal session on Mac, and type: ```java -version```). If missing, Windows users can install java from [java.com](https://www.java.com/en/).

For Mac users - if you are on 10.14 (Mojave) or earlier, install java-jre (open a terminal window and run): <pre> brew install java-jre </pre> If you are on 10.15 (Catalina) or later, install java-jdk (open a terminal window and run): <pre> brew install openjdk </pre> and to add java-jdk to your PATH (10.15 Catalina or later):
<pre>echo 'export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"' >> ~/.bash_profile \
echo 'export JAVA_HOME=$(/usr/libexec/java_home)' >> ~/.bash_profile \
source ~/.bash_profile```</pre>


## Paup
The acronym stands for 'Phylogenetic Analysis Using Parsimony', but nowadays this program does a lot more than just parsimony. Paup was written nearly 4 decades ago by David Swofford, but infrequent updates are still released. Please [download the latest version](https://phylosolutions.com/paup-test/) for your OS (4.0a168 as of this writing). Install following the instructions. Note for Mac users: there is no graphical user interface (GUI) version for current operating systems (i.e. any system younger than 10.14, roughly the end of 2019). But don't worry, the command line is always faster than the GUI! [Add Paup to your path for easy access](Paup_mac.sh) (Mac).

## Mesquite
A free and open-source program for manipulating datasets and trees (not for phylogeny reconstruction!). Download from [MesquiteProject](https://github.com/MesquiteProject/MesquiteCore/releases). The downloaded file will be either a zip-file (Windows) or a dmg-file (Mac), open it and extract the Mesquite-folder to a location where you can easily find and access (e.g Program Files on Windows or the Applications folder on Mac). The course instructions are tested for version 3.81.

## MrBayes
[MrBayes](https://nbisweden.github.io/MrBayes/index.html) is a program for Bayesian inference and model choice across a wide range of phylogenetic and evolutionary models. MrBayes uses Markov chain Monte Carlo (MCMC) methods to estimate the posterior distribution of model parameters. The datasets analysed during this practical are small, so there is no need to install an MPI version of MrBayes (which takes longer to install/configure); please install a serial version. Windows users can download [MrBayes version 3.2.7.](https://github.com/NBISweden/MrBayes/releases/download/v3.2.7/MrBayes-3.2.7-WIN.zip) The 32 and 64 bit executables are in bin (e.g. C:\Program Files\MrBayes-3.2.7-WIN\bin\). Mac users are advised to install MrBayes using [Homebrew.](https://brew.sh/) Here's a [short instruction](MrBayes_mac.sh) (Mac)

## Geneious
[Geneious](https://www.geneious.com/features/prime) is a commercial program to visually inspect chromatograms and manipulate sequence-data. For this course, dowload the fully functional [free trial-version](https://www.geneious.com/free-trial) (Geneious Prime 2024 as of this writing). This version expires in 30 days. Therefore, do not install too far in advance of the course! Sign up with your email address, download a version compatible with your OS, install and optionally add plug-ins (e.g. Clustal, NCBI, Paup).

