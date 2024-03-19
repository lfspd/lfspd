##  How to run precompiled LFSPD distro on a local computer   

### For Linux users


The method is based on [chroot jail](https://en.wikipedia.org/wiki/Chroot)

After building <code>Linux For SPD</code> described in [BuildFromScratch.md](BuildFromScratch.md)

directory [Distros](Distros) contains tarball <code>lfspd.10.tar.gz</code> with distro image.

- one needs to have sudo privelege 

  Add the line <code>"your_username ALL=(ALL) NOPASSWD:ALL" to /etc/sudoers </code>

- run the script:

  <code>[./run_distro.sh](run_distro.sh)</code>

  That will untar distro in the <b>$HOME/tmp/lfspd</b>

  or <code>[./run_distro.sh](run_distro.sh) <b>'your prefered location'</b> </code>

  ... then <code>chroot</code> is automatically called and <code>Linux For SPD</code> system is activated

You can call <code>[run_distro.sh](run_distro.sh)</code> on different terminals to have several <code>Linux For SPD</code> sessions 

You can edit your C++, python projects in <code>Linux For SPD</code> located in <b>$HOME/tmp/lfspd</b> from the "host system"

### For Windows users. Run in PowerShell

- Activate [Windows Subsystem for Linux (WSL2)](https://en.wikipedia.org/wiki/Windows_Subsystem_for_Linux)  <code>PS>[WSL_Install.ps1](WSL_Install.ps1)</code>

- Import <i>Linux For SPD</i> distribution <code>PS>wsl --import lfspd 'InstallLocation' 'path to lfspd.10.tar.gz'</code>

In my case:

<code>PS>wsl --import <b>lfspd</b>  D:\x2v0  D:\x2v0\wrk\lfspd\Distros\lfspd.10.tar.gz</code>

<b>lfspd</b> distribution is created

- Check it <code>PS>wsl --list</code>

In my case:

<p>
PS>wsl --list
<code>
Windows Subsystem for Linux Distributions:
docker-desktop (Default)
CentOS7
Ubuntu
<b>lfspd</b>
</code>
</p>

- Run <b>lfspd</b> <i>Linux For SPD</i> distribution 

<code>PS>wsl -d lfspd </code>

<b>The great advantage</b> of this approach that all Windows programs, disks (<code>/mnt/c, /mnt/d ...</code>) are availabe from inside <i>Linux For SPD</i>

For example, being inside LFSPD system you can edit C++ projects with <code>VS Code editor</code> or Python projects with <code>PyCharm IDE</code> 
