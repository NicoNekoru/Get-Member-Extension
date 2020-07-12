Function Global:Get-Properties
{
    [CmdletBinding()] 
    param(
        [Parameter(Mandatory = $true, 
            ValueFromPipeline = $true,
            Position = 0
        )]$InputObject
    )
    $stuff = $InputObject | Get-Member -MemberType Property
    $stuff = $stuff.Name
    $stuff | ForEach-Object {Write-Host $_`: $InputObject.$_}
}

Function Global:Get-Method
{
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, 
            ValueFromPipeline = $true,
            Position = 0
        )]$InputObject     
    )
    $stuff = $InputObject | Get-Member -MemberType Method
    $stuff = $stuff.Name
    $stuff | ForEach-Object {Write-Host $_`: $InputObject.$_}
}

Function Global:Get-EventMember
{
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, 
            ValueFromPipeline = $true,
            Position = 0
        )]$InputObject     
    )
    $stuff = $InputObject | Get-Member -MemberType Event
    $stuff = $stuff.Name
    $stuff | ForEach-Object {Write-Host $_`: $InputObject.$_}
}