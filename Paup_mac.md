# Add Paup to path

## Source
Paup download site: https://phylosolutions.com/paup-test/  
Latest version for Mac: https://phylosolutions.com/paup-test/paup4a168_osx.gz  

## Unzip
We assume that the zip archive is saved in your Downloads folder.    
If your system is setup to save files to Desktop, either move the file to the Downloads  
folder or replace ```~/Downloads``` with ```~/Desktop``` in the next section.  

Unzip ```paup4a168_osx.gz``` (just double-click on it).

## Move, change permissions and add to path
Open a terminal window, move Paup to your apps folder
and make it executable:
<pre><code>cd ~/Downloads
mv paup4a168_osx ~/Applications
chmod a+x ~/Applications/paup4a168_osx</code></pre>

Create a symlink to /usr/local/bin for global access:  
<pre><code>sudo ln -s $(readlink -f ~/Applications/paup4a168_osx) /usr/local/bin</code></pre>

## Test it
Start paup4a168_osx by typing the following in a new terminal window:  
```paup``` - _tab_ - _enter_    

Show paup commands  
<pre><code>help</code></pre>  
exit paup  
<pre><code>quit</code></pre>  
