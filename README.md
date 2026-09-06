
Currently includes configuration for:
* pwsh (PowerShell profile)
* vscode
* zed
* flowlauncher

and:

* wallpapers I use

`pwsh_bak.ps1` is a legacy/backup PowerShell profile kept around for reference — it sets up the `oh-my-posh` prompt and `Terminal-Icons`, plus a handful of git shortcuts (`gs`, `ga`, `gp`, `gpull`, `gcl`, `gcom`, `lazyg`) and file utilities (`touch`, `mkd`, `trash`, `ff`, `head`, `sed`, `which`, `la`, `ll`).

## Usage

Clone the repo, then symlink or copy the folder you want into place:

```powershell
git clone https://github.com/Doodocat/dots.git
```

* **pwsh** → `$PROFILE` location (e.g. `~\Documents\PowerShell\`)
* **vscode** → VS Code user settings folder
* **zed** → `~\.config\zed\` (or the Windows equivalent)
* **flowlauncher** → Flow Launcher's `Themes` folder
