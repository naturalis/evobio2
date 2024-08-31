# EvoBio2
Instructions for setting up your computer for Evolutionary Biology 2 course of UL

## Text editor
Text editors and word processors are two distinct types of software. Word processors (like MS Word or Textedit on Mac) are used for creating and editing _formatted_ text documents. Text editors however, can only create and edit plain text-files and are therefore ideal for coding. Basically scripts and configuration files are plain text-files. Often text-editors also have features like syntax highlighting, line number and indentation assistance. Anytime you need to create or modify input files for analyses during this course, **do not** use a word processor, but please use a __text editor!__
- Windows users are recommended to use [Notepad++](https://notepad-plus-plus.org/)
- Mac users are recommended to use [Textmate](https://macromates.com/)
..probably the unidentified developer message will show up here as well.

## File compression
Software packages or files are often distributed in a compressed format. Reasons for compressing files can be to reducee file size (less disk space, faster transfers), bundling mutliple files while preserving structure, or to warrant data intergrity. A commonly used format is .zip (Windows, Mac), whereas other formats can be OS specific: .rar, .7z (Windows) and .dmg, .tar.gz (Mac). In particular for (de)compressing .zip files dedicated software is useful.
- Windows users are recommended to use [7Zip](https://7-zip.org/)
- Mac users can use the archive utility (present by default)

## Homebrew -->  *Mac only*
[Homebrew](https://brew.sh/) is a package manager for Mac. It simplifies the process of installing, managing (updating) and removing software on macOS.

***Installing Homebrew is optional and might cause issues on outdated systems like OSX.***  
All applications used during this course can be installed **without** Homebrew.

If you are in the possession of a more recent system (tested on 12.7.1 with Intel and 14.6.1 with ARM) using a package manager is definitely advisable, because it is robust and secure way to manage and update packages, while handling the complexities of dependency resolution is done automatically. Even thought the available Homebrew formulae for this course are limited to Java and MrBayes we consider the usage of a package manager as a best practice. Therefore, when available, we will provide the Homebrew command first and alternative ways of installation thereafter.

To install Homebrew, open a terminal window and run:
<pre><code>/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"</code></pre>

***Note:***  Xcode-select (git in particular) is required for installing Homebrew.
If you are prompted that xcode-select is missing, accept, install and continue.

Short list of [useful Homebrew commands](homebrew_command.md)

## Java
Some of the programs we use (Mesquite in particular) require Java. To check if Java is already installed on your system: open a command prompt on Windows, or a terminal session on Mac, and type: ```java -version```. When installed, you will see something like 'java version x' or 'OpenJDK version y'. In case you see 'unable to locate' or 'no java runtime present' then Java is missing and should be installed:  
- Windows users can download java from [java.com](https://www.java.com/en/).
---
- Mac users **with** Homebrew can execute (in a terminal window):
<pre><code>brew install java</code></pre>
---
- Mac users **without** Homebrew can download the [standalone java installer](https://www.java.com/en/download/).  
Open the disk image (double-click the .dmg file). You will likely get a warning that says it is from an unidentified developer. Allow the install via System Preferences -> Privacy & Security -> Open anyway. Run the installer.

## Paup
The acronym stands for 'Phylogenetic Analysis Using Parsimony', but nowadays this program does a lot more than just parsimony (i.e. distance, likelihood, model-testing). Paup was written nearly 4 decades ago by David Swofford, but infrequent updates are still released. The latest release information and download instructions are on [phylosulotions](https://phylosolutions.com/paup-test/). Please install the latest version (4.0a168 as of this writing) for your OS:
- Windows users can download [the Paup executable](https://phylosolutions.com/paup-test/paup4-setup.msi)
---
- Mac users can download the [command line binary](https://phylosolutions.com/paup-test/paup4a168_osx.gz)  
Open the zip archive (double-click the .gz file). Move ```paup4a168_osx``` to your ~/Applications folder. Open a terminal and run:
<pre><code>chmod a+x ~/Applications/paup4a168_osx</code></pre>
For easy access you might add Paup to your path:  
<pre><code>sudo ln -s $(readlink -f ~/Applications/paup4a168_osx) /usr/local/bin</code></pre>

***Note:***  There is no graphical interface (GU) for current Mac operating systems (i.e. any system younger than 10.14, roughly the end of 2019). But don't worry, the command line is always faster than the GUI!

## Mesquite
A free and open-source program for manipulating datasets and trees (not for phylogeny reconstruction!). Download from [MesquiteProject](https://github.com/MesquiteProject/MesquiteCore/releases). The downloaded file will be either a zip-file (Windows) or a dmg-file (Mac), open it and extract the Mesquite-folder to a location where you can easily find and access (e.g Program Files on Windows or the Applications folder on Mac). The course instructions are tested for version 3.81.
- Windows users can download [Mesquite.3.81-Windows.zip](https://github.com/MesquiteProject/MesquiteCore/releases/download/v3.81-build955/Mesquite.3.81-Windows.zip)
- Mac users can download [Mesquite.3.81_macOS_10.15_and_later.dmg](https://github.com/MesquiteProject/MesquiteCore/releases/download/v3.81-build955/Mesquite.3.81_macOS_10.15_and_later.dmg)  
Open the disk image (double-click te .dmg file). Move ```Mesquite_Folder``` to your ~/Applications folder. When starting the application, probably another warning message will be shown to indicate that this application is from an unidentified developer. Again allow the install (see #java).

## MrBayes
[MrBayes](https://nbisweden.github.io/MrBayes/index.html) is a program for Bayesian inference and model choice across a wide range of phylogenetic and evolutionary models. MrBayes uses Markov chain Monte Carlo (MCMC) methods to estimate the posterior distribution of model parameters. The datasets analysed during this practical are small, so there is no need to install an MPI version of MrBayes (which takes longer to install/configure); please install a serial version. The releases below are obtained from the [MrBayes repository](https://github.com/NBISweden/MrBayes/releases).
- Windows users can download [MrBayes version 3.2.7.](https://github.com/NBISweden/MrBayes/releases/download/v3.2.7/MrBayes-3.2.7-WIN.zip)  
The 32 and 64 bit executables are in bin (e.g. ```C:\Program Files\MrBayes-3.2.7-WIN\bin\```).
---
- Mac users **with** Homebrew can execute (in a terminal window):  
<pre><code>brew install mrbayes</code></pre>
---
- Mac users **without** Homebrew can download [MrBayes version 3.2.7.](https://github.com/NBISweden/MrBayes/releases/download/v3.2.7/mrbayes-3.2.7.tar.gz)  
Open the zip archive (double-click the .gz file). Move ```mrbayes-3.2.7``` to your ~/Applications folder. Open a terminal window and run:
<pre><code>cd ~/Applications/mrbayes-3.2.7
./configure
make && sudo make install
</code></pre>

## Geneious
[Geneious](https://www.geneious.com/features/prime) is a commercial program to visually inspect chromatograms and manipulate sequence-data. For this course, dowload a fully functional [free trial-version](https://www.geneious.com/free-trial) (Geneious Prime 2024 as of this writing). This version expires in 30 days. Therefore, do not install too far in advance of the course! Sign up with your email address, download a version compatible with your OS, install and optionally add plug-ins (e.g. Clustal, NCBI, Paup).

