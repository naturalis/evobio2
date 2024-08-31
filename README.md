# EvoBio2
Instructions for setting up your computer for Evolutionary Biology 2 course of UL

## Text editor
Text editors and word processors are two distinct types of software. Word processors (like MS Word or Textedit on Mac) are used for creating and editing _formatted_ text documents. Text editors however, can only create and edit plain text-files and are therefore ideal for coding. Basically scripts and configuration files are plain text-files. Often text-editors also have features like syntax highlighting, line number and indentation assistance. Anytime you need to create or modify input files for analyses during this course, **do not** use a word processor, but please use a __text editor!__
- Windows users are recommended to use [Notepad++](https://notepad-plus-plus.org/)
- Mac users are recommended to use [Textmate](https://macromates.com/)

## File compression
Software packages or files are often distributed in a compressed format. Reasons for compressing files can be to reducee file size (less disk space, faster transfers), bundling mutliple files while preserving structure, or to warrant data intergrity. A commonly used format is .zip (Windows, Mac), whereas other formats can be OS specific: .rar, .7z (Windows) and .dmg, .tar.gz (Mac). In particular for (de)compressing .zip files dedicated software is useful.
- Windows users are recommended to use [7Zip](https://7-zip.org/)
- Mac users can use the archive utility (present by default)

## Homebrew -->  *Mac only*
[Homebrew](https://brew.sh/) is a package manager for Mac. It simplifies the process of installing, managing (updating) and removing software on macOS.

***Installing Homebrew is optional and might cause issues on outdated systems like OSX.***  
All applications usded during this course can be installed **without** Homebrew.

If you are in the possession of a more recent system (tested on 12.7.1 with Intel and 14.6.1 with ARM) using a package manager is definitely advisable, because it is robust and secure way to manage and update packages, while automatically handling the complexities of dependency resolution for you. Even thought the available Homebrew formulae for this course are limited to Java and MrBayes we consider the usage of a package manager as a best practice. Therefore, when available, we will provide the Homebrew command first and alternative ways of installation thereafter.

To install Homebrew, open a terminal window and run:
<pre><code>/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"</code></pre>

***Note:***  Xcode-select (git in particular) is required for installing Homebrew.
If you are prompted that xcode-select is missing, accept, install and continue.

**Short list of useful Homebrew commands (run in the terminal):**
|                                  |                                            |
| -------------------------------- | ------------------------------------------ |
| `brew commands`                  | Show all available commands                |
| `brew list`                      | Show all installed packages                |
| `brew search "packagename"`      | Search if package is on Homebrew           |
| `brew info "packagename"`        | Show info like version number and dependencies |
| `brew install "packagename"`     | Install the package on your system         |
| `brew uninstall "packagename"`   | Remove the package from your system        |


## Java
Some of the programs we use (Mesquite in particular) require Java. To check if Java is already installed on your system: open a command prompt on Windows, or a terminal session on Mac, and type: ```java -version```. When installed, you will see something like 'java version x' or 'OpenJDK version y'. In case you see 'unable to locate' or 'no java runtime present' then Java is missing and should be installed:
- Windows users can download java from [java.com](https://www.java.com/en/).  
- Mac users can execute (in a terminal window):
<pre><code>brew install java</code></pre>
On more recent systems (see remark under [Homebrew](#homebrew-----mac-only)) this should install Java. If you get an error message that openjdk is not supported on your system or when you decided not to use Homebrew, you can download the [standalone java installer](https://www.java.com/en/download/). Open the .dmg file. You will likely get a warning that says it is from an unidentified developer. Allow the install via System Preferences -> Privacy & Security -> Open anyway. Run the installer.

## Paup
The acronym stands for 'Phylogenetic Analysis Using Parsimony', but nowadays this program does a lot more than just parsimony. Paup was written nearly 4 decades ago by David Swofford, but infrequent updates are still released. Please [download the latest version](https://phylosolutions.com/paup-test/) for your OS (4.0a168 as of this writing). Install following the instructions.  
***Note***  for Mac users: there is no graphical user interface (GUI) version for current operating systems (i.e. any system younger than 10.14, roughly the end of 2019). But don't worry, the command line is always faster than the GUI! [Add Paup to your path for easy access](Paup_mac.sh) (Mac).

## Mesquite
A free and open-source program for manipulating datasets and trees (not for phylogeny reconstruction!). Download from [MesquiteProject](https://github.com/MesquiteProject/MesquiteCore/releases). The downloaded file will be either a zip-file (Windows) or a dmg-file (Mac), open it and extract the Mesquite-folder to a location where you can easily find and access (e.g Program Files on Windows or the Applications folder on Mac). The course instructions are tested for version 3.81.

## MrBayes
[MrBayes](https://nbisweden.github.io/MrBayes/index.html) is a program for Bayesian inference and model choice across a wide range of phylogenetic and evolutionary models. MrBayes uses Markov chain Monte Carlo (MCMC) methods to estimate the posterior distribution of model parameters. The datasets analysed during this practical are small, so there is no need to install an MPI version of MrBayes (which takes longer to install/configure); please install a serial version.
- Windows users can download [MrBayes version 3.2.7.](https://github.com/NBISweden/MrBayes/releases/download/v3.2.7/MrBayes-3.2.7-WIN.zip) The 32 and 64 bit executables are in bin (e.g. C:\Program Files\MrBayes-3.2.7-WIN\bin\).
- Mac users are advised to install MrBayes using Homebrew. Here's a [short instruction](MrBayes_mac.sh) (Mac)
<pre><code>brew install mrbayes</code></pre>
***Note*** due to a vast number of dependencies it can take a while to install MrBayes with Homebrew. In case it takes too long (or doesn't install at all) on older operating systems (like OSX) you might consider installing [MrBayes version 3.2.6](link_here)


## Geneious
[Geneious](https://www.geneious.com/features/prime) is a commercial program to visually inspect chromatograms and manipulate sequence-data. For this course, dowload the fully functional [free trial-version](https://www.geneious.com/free-trial) (Geneious Prime 2024 as of this writing). This version expires in 30 days. Therefore, do not install too far in advance of the course! Sign up with your email address, download a version compatible with your OS, install and optionally add plug-ins (e.g. Clustal, NCBI, Paup).

