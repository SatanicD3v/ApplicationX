<#
    This is a script that automates certain downloads
    from the internet with deployments

#>

<#
    This section of code contains global variables for differnet uses
#>
<# The TYPE  variable contains the Windows System libraries
to be used within the script and are exeucted within a try and catch statement
at the beginning of the program

Check LINE 17 for which libraries are being used

#>
$TYPE = @(
    Add-Type -AssemblyName System.Windows.Forms 

)

<# This section of code adds the types and external libraries to be used
    Within this powershell script
#>
try {   
    $TYPE
}
catch {
    <#Do this if a terminating exception happens#>
    while(i -le 3) {
        $TYPE
        if ($TYPE -eq $false) {
            Write-Host "There was an issue with loading your system libraires ERROR 356"
        }   
    }
}

function main {

    
}


try {
    main
}
catch {
    if (main -eq $false) {
        for (i -eq 0; i -le 3;++) {
            main
        }           
    }
    else {
        <# Action when all if and elseif conditions are false #>
        exit
    }

}