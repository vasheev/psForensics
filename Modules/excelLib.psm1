<#
.SYNOPSIS
Модуль содержит функции по работе с Excel
.DESRIPTON
Функции:
1. openXL - открывает файл Excel
#>


#Функция открыть Excel
function openXL
{
[CmdletBinding()]
PARAM (
    [Parameter(Mandatory=$True, Position=1, HelpMessage="Полный путь к файлу Excel", ParameterSetName='Path')]$Path
    )

$Excel = New-Object -ComObject Excel.Application #Создали объект
$Excel.Visible = $true
$WB1 = $Excel.Workbooks.Open($Path) #Для новой - $WB1 = $Excel1.Workbooks.Add() или Sheets.Add() для листа
$WS1 = $WB1.worksheets.Item(1)

#Возвращаем объект - лист Excel






return $WS1 #Возв



}







