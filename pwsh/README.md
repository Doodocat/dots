# My <i>pwsh-profile</i> config

Simple and efficient powershell-profile but before you do anythinng check the `Requierments`, Also don't forget to take look at `Notes` section.

## Requirements

Before you copy this profile in, grab these without them, things will break or look plain:

| Tool                                                            | Why you need it                                                                                                                       |
| --------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| [oh-my-posh](https://ohmyposh.dev)                              | Powers the prompt theme. **No oh-my-posh = no theme** — the prompt just won't render as intended.                                     |
| [Terminal-Icons](https://github.com/devblackops/Terminal-Icons) | Adds file/folder icons to `Get-ChildItem` (`ls`, `la`, `ll`). Install via `Install-Module -Name Terminal-Icons -Repository PSGallery` |
| [zoxide](https://github.com/ajeetdsouza/zoxide)                 | Needed for the `g` shortcut (`__zoxide_z`), a smarter `cd`.                                                                           |

## Setup

1. Install the three tools above.
2. Copy `Microsoft.PowerShell_profile.ps1` to your `$PROFILE` path (check it with `echo $PROFILE`).
3. Restart your terminal.

## What's inside

**Git shortcuts** — `gs`, `ga`, `gp`, `gpush`, `gpull`, `gcl`, `gcom "msg"`, `lazyg "msg"` (add + commit + push in one go)

**File utilities** — `touch`, `mkd` (mkdir + cd), `trash` (safe delete to recycle bin), `ff` (find file by name), `head`, `sed`, `which`

**Listing** — `la`, `ll` (with icons, thanks to Terminal-Icons)

**Misc** — `cc` (clear), `xx` (exit), `g` (jump to your GitHub folder via zoxide)

## Notess

- The `1_shell` config in the oh-my-posh line refers to a custom theme file — make sure it exists and is pointed to correctly, or swap it for a built-in theme.
- `trash` relies on `Microsoft.VisualBasic.FileIO`, which is Windows-only.
