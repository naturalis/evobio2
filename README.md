# EvoBio2
Instructions for setting up your computer for Evolutionary Biology 2 course of UL

## Disclaimer
Please note that while the software and provided links in this instruction have been tested and shown to work as intended, we cannot assume any responsibility for any issues that may arise during installation or any potential damage to your system. Use at your own risk.
None of the software used in this course is available through official channels like the Microsoft Store or Mac App Store. Consequently you will encounter security warnings along the lines of 'the downloaded software is from an unidentified developer', or the operating system 'prevented an unrecognized app from starting'. To continue installation:
- Windows --> select "More info" --> Run anyway
- Mac --> System Preferences -> Privacy & Security -> Open anyway.

## Text editor
Text editors and word processors are two distinct types of software. Word processors (like MS Word on Windows or Textedit on Mac) are used for creating and editing _formatted_ text documents. Text editors however, can only create and edit plain text-files and are therefore ideal for coding. Basically scripts and configuration files are plain text-files. Often text-editors also have features like syntax highlighting, line number and indentation assistance. Anytime you need to create or modify input files for analyses during this course, **do not** use a word processor, but please use a __text editor!__
- Windows users are recommended to use [Notepad++](https://notepad-plus-plus.org/)
- Mac users are recommended to use [Textmate](https://macromates.com/)

## File compression
Software packages or files archives are often distributed in a compressed format. Reasons for compression can be to reducee file size (less disk space, faster transfers), bundling mutliple files while preserving structure, or to warrant data intergrity. A commonly used format is .zip (Windows, Mac), whereas other formats tend to be OS specific: .rar, .7z (Windows) and .dmg, .tar.gz (Mac). In particular for (de)compressing .zip files dedicated software is useful.
- Windows users are recommended to use [7Zip](https://7-zip.org/)
- Mac users can use the built-in Archive Utility

## Java
Some of the programs we use (Mesquite in particular) require Java. To check if Java is already installed on your system: open a command prompt on Windows, or a terminal session on Mac, and type: ```java -version```. When installed, you should see something like 'java version x' or 'OpenJDK version y'. In case you see 'unable to locate' or 'no java runtime present' then Java is missing and should be installed:  
- Windows users can download java from [java.com](https://www.java.com/en/)
- For Mac users, which version of java to download depends on your OS version and sytem architecture (x64 or ARM):

  users on 10.14 or earlier (tested 10.13.6) can download the standalone [java installer](https://www.java.com/en/download/)  
  users on 10.15 or later with x64 can download [java jdk-22_macos-x64_bin.dmg](https://download.oracle.com/java/22/latest/jdk-22_macos-x64_bin.dmg)  
  users on ARM systems a.k.a. M1/M2/M3 (tested on 14.6.1) can dowload [java jdk-22_macos-aarch64_bin.dmg](https://download.oracle.com/java/22/latest/jdk-22_macos-aarch64_bin.dmg)  
  
  Open the disk image (double-click the .dmg file). Allow installation as described under [disclaimer](#disclaimer)

For archival purposes and troubleshooting, the above links are obtained from the Oracle download pages:
[https://www.oracle.com/java/technologies/downloads/#jdk22-windows](https://www.oracle.com/java/technologies/downloads/#jdk22-windows)  
[https://www.oracle.com/java/technologies/downloads/#jdk22-mac](https://www.oracle.com/java/technologies/downloads/#jdk22-mac)  

## Paup
The acronym stands for 'Phylogenetic Analysis Using Parsimony', but nowadays this program does a lot more than just parsimony (i.e. distance, likelihood, model-testing). Paup was written nearly 4 decades ago by David Swofford, but infrequent updates are still released. The latest release information and download instructions are on [phylosulotions](https://phylosolutions.com/paup-test/). Please install the latest version (4.0a168 as of this writing) for your OS:
- Windows users can download the [Paup executable](https://phylosolutions.com/paup-test/paup4-setup.msi)
- Mac users can download the [paup4a168_osx.gz](https://phylosolutions.com/paup-test/paup4a168_osx.gz)  
  Open the zip archive (double-click the .gz file). Move ```paup4a168_osx``` to your ~/Applications folder. Open a terminal and run:
  <pre><code>chmod a+x ~/Applications/paup4a168_osx</code></pre>
  For easy access you might add Paup to your path:  
  <pre><code>sudo ln -s $(readlink -f ~/Applications/paup4a168_osx) /usr/local/bin</code></pre>

***Note:***  There is no graphical interface (GU) for current Mac operating systems (i.e. any system more recent than 10.14, roughly the end of 2019). But don't worry, the command line is always faster than the GUI!

## Mesquite
[Mesquite](https://www.mesquiteproject.org/home.html) is a free and open-source program for manipulating datasets and trees (not for phylogeny reconstruction!). The latest release information and download instructions are on [MesquiteProject](https://github.com/MesquiteProject/MesquiteCore/releases). For this course we will be using version 3.81. Please install or add the Mesquite-folder to a proper location (i.e. Program Files on Windows or Applications folder on Mac). 
- Windows users can download [Mesquite.3.81-Windows.zip](https://github.com/MesquiteProject/MesquiteCore/releases/download/v3.81-build955/Mesquite.3.81-Windows.zip)
- Mac users can download [Mesquite.3.81_macOS_10.15_and_later.dmg](https://github.com/MesquiteProject/MesquiteCore/releases/download/v3.81-build955/Mesquite.3.81_macOS_10.15_and_later.dmg)  
  Open the disk image (double-click te .dmg file).  
  Move the ```Mesquite_Folder``` to your ~/Applications folder (do not run the starter app from the mounted disk image).  
  Allow installation as described under [disclaimer](#disclaimer)  

## MrBayes
[MrBayes](https://nbisweden.github.io/MrBayes/index.html) is a program for Bayesian inference and model choice across a wide range of phylogenetic and evolutionary models. MrBayes uses Markov chain Monte Carlo (MCMC) methods to estimate the posterior distribution of model parameters. The datasets analysed during this practical are small, so there is no need to install an MPI version of MrBayes (which takes longer to install/configure); please install a serial version. The releases below are obtained from the [MrBayes repository](https://github.com/NBISweden/MrBayes/releases).
- Windows users can download [MrBayes version 3.2.7.](https://github.com/NBISweden/MrBayes/releases/download/v3.2.7/MrBayes-3.2.7-WIN.zip)  
The 32 and 64 bit executables are in bin (e.g. ```C:\Program Files\MrBayes-3.2.7-WIN\bin\```).
- Mac users **without** Homebrew can download [MrBayes version 3.2.7.](https://github.com/NBISweden/MrBayes/releases/download/v3.2.7/mrbayes-3.2.7.tar.gz)  
  Open the zip archive (double-click the .gz file).  
  Move ```mrbayes-3.2.7``` to your ~/Applications folder.  
  Open a terminal window and run:  
  <pre><code>cd ~/Applications/mrbayes-3.2.7
  ./configure
  make && sudo make install
  </code></pre>

## Geneious
[Geneious](https://www.geneious.com/features/prime) is a commercial program to visually inspect chromatograms and manipulate sequence-data. For this course, dowload a fully functional [free trial-version](https://www.geneious.com/free-trial) (Geneious Prime 2024 as of this writing). This version expires in 30 days. Therefore, do not install too far in advance of the course! Sign up with your email address, download a version compatible with your OS, install and optionally add plug-ins (e.g. Clustal, NCBI, Paup).

