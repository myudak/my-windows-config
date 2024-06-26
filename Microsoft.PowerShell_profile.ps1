# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git 
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'


# Oh my Posh : Change the config file path to your own

# oh-my-posh init pwsh --config 'R:\Project\ohMyPosh\1_shell.omp.json' | Invoke-Expression
# oh-my-posh init pwsh --config 'R:\Project\ohMyPosh\atomicBit.omp.json' | Invoke-Expression
oh-my-posh init pwsh --config 'R:\Project\ohMyPosh\kushal.omp.json' | Invoke-Expression

function touch {if((Test-Path -Path ($args[0])) -eq $false) {Set-Content -Path ($args[0]) -Value ($null)} else {(Get-Item ($args[0])).LastWriteTime = Get-Date } }

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# Terminal Icons
Import-Module -Name Terminal-Icons
Import-Module posh-git


# Utilities Onefetch 
function Set-Location {
    param(
        [Parameter(Mandatory=$true, Position=0)]
        [string]$Path
    )

    # Call the original Set-Location (aliased as 'cd')
    Microsoft.PowerShell.Management\Set-Location $Path

    # Check if the new location is a Git repository
    if ((Test-Path .git) -or ((Get-Command git -ErrorAction SilentlyContinue) -and (git rev-parse --is-inside-work-tree 2>$null))) {
        # If it is, run your command here
            Write-Host "Running Onefetc"
            onefetch
    }
}

# Utilities Where 
function which ($command) {
 Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
