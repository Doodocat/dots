# oh-my-posh init pwsh --config '1_shell' | Invoke-Expression && NOTE: DEFAULT -OH-MY-POSH, CONFIG NOT USING ANYMORE

Import-Module -Name Terminal-Icons
$omp_config = Join-Path $PSScriptRoot ".\doodocat.omp.json.json"
oh-my-posh init pwsh --config $omp_config | Invoke-Expression

function gs { git status }
function ga { git add . }
function gp { git push }
function gpush { git push }
function gpull { git pull }
function gcl { git clone $args }
function g { __zoxide_z github }
function gcom {
    git add .
    git commit -m "$args"
}
function lazyg {
    git add .
    git commit -m "$args"
    git push
}

function cc { Clear-Host } # = CLEAR & CLS
function xx { exit } # = EXIT

function touch ($File) {
    if (Test-Path $File) {
        (Get-Item $File).LastWriteTime = Get-Date
    } else {
        New-Item $File -ItemType File | Out-Null
    }
}

function mkd ($Path) {
    New-Item -Path $Path -ItemType Directory -Force | Out-Null
    Set-Location -Path $Path
}

function trash ($Path) {
    if (Test-Path $Path -PathType Container) {
        [Microsoft.VisualBasic.FileIO.FileSystem]::DeleteDirectory($Path,'OnlyErrorDialogs','SendToRecycleBin')
    } else {
        [Microsoft.VisualBasic.FileIO.FileSystem]::DeleteFile($Path,'OnlyErrorDialogs','SendToRecycleBin')
    }
}

function ff ($Name) {
    Get-ChildItem -Recurse -Filter $Name -File | Select-Object -ExpandProperty FullName
}

function head ($Path) {
    Get-Content $Path -Head 10
}

function sed ($File, $Find, $Replace) {
    (Get-Content $File).replace("$Find", $Replace) | Set-Content $file
}

function which ($Name) {
    (Get-Command $Name).Source
}

# Listing / Viewing
function la {
    Get-ChildItem | Format-Table -AutoSize
}

function ll {
    Get-ChildItem -Force | Format-Table -AutoSize
}
