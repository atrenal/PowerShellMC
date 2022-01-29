    New-PSDrive -PSProvider Registry -Name HKU -Root HKEY_USERS
    Get-ChildItem -Path HKU:
    #Get-PSDrive -Name "HKU"
    Get-ChildItem HKU:\ | Where-Object {$_.Name -match "\d{5}$"}
    Remove-PSDrive HKU