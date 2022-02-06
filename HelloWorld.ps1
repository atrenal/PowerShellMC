    New-PSDrive -PSProvider Registry -Name HKU -Root HKEY_USERS
    # Get-PSDrive -Name "HKU"
    # Get-ChildItem HKU:\ | Format-Table
    # Get-ChildItem HKU:\ | Where-Object {$_.Name} | Format-Table
    Get-ChildItem HKU:\ | Where-Object {$_.Name -match "\d{4}$"} | Format-Table

    Remove-PSDrive HKU