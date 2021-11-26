# PowerShell Script Module
#
# VTStylizer
#
# Microsoft.PowerShell.VTStylizer.Tokens.ControlModifier.TextFormatting.Styles

$VTStyle | Add-Member -NotePropertyName 'R' -NotePropertyValue "`e[0m"
$VTStyle | Add-Member -NotePropertyName 'Flash' -NotePropertyValue "`e[5m"
$VTStyle | Add-Member -NotePropertyName 'FlashOff' -NotePropertyValue "`e[25m"
$VTStyle | Add-Member -NotePropertyName 'Invert' -NotePropertyValue "`e[7m"
$VTStyle | Add-Member -NotePropertyName 'InvertOff' -NotePropertyValue "`e[27m"
$VTStyle | Add-Member -NotePropertyName 'Bold' -NotePropertyValue "`e[1m"
$VTStyle | Add-Member -NotePropertyName 'BoldOff' -NotePropertyValue "`e[22m"
$VTStyle | Add-Member -NotePropertyName 'Italic' -NotePropertyValue "`e[3m"
$VTStyle | Add-Member -NotePropertyName 'ItalicOff' -NotePropertyValue "`e[23m"
$VTStyle | Add-Member -NotePropertyName 'Underline' -NotePropertyValue "`e[4m"
$VTStyle | Add-Member -NotePropertyName 'UnderlineOff' -NotePropertyValue "`e[24m"
$VTStyle | Add-Member -NotePropertyName 'Strikethrough' -NotePropertyValue "`e[9m"
$VTStyle | Add-Member -NotePropertyName 'StrikethroughOff' -NotePropertyValue "`e[29m"
$VTStyle | Add-Member -NotePropertyName 'Hidden' -NotePropertyValue "`e[8m"
$VTStyle | Add-Member -NotePropertyName 'HiddenOff' -NotePropertyValue "`e[28m"
