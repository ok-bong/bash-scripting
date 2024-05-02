# Check if all required positional parameters are provided 
# the script currently relies on positional parameters for providing the necessary information (such as username, password, and mount point). However, it suggests that the script can be modified to hardcode the drive letters instead of using positional parameters.
if ($args.Count -ne 3) {
    Write-Host "Usage: $([System.IO.Path]::GetFileNameWithoutExtension($MyInvocation.MyCommand.Path)) USERNAME PASSWORD DRIVE_LETTER"
    exit 1
}

$Username = $args[0]
$Password = $args[1] | ConvertTo-SecureString -AsPlainText -Force
$DriveLetter = $args[2] # Z:

# Replace "NETWORK_PATH" with the path of the network folder you want to map
$NetworkPath = "\\server\share"

# Create a credential object
$Credential = New-Object System.Management.Automation.PSCredential($Username, $Password)

# Map the network drive
New-PSDrive -Name $DriveLetter -PSProvider FileSystem -Root $NetworkPath -Credential $Credential -Persist