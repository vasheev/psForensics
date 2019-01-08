$dir = Get-ChildItem -Path "C:\e\s4\íîóòáóê\êëş÷åâûå ñëîâà" -Directory
$allCount = 0 #Âñåãî ôàéëîâ
$rep = "C:\e\s4\êîëÊëş÷Íîóò.txt"

foreach($d in $dir){
    $numFiles = Get-ChildItem -Path $d.FullName -File -Recurse
    ($d.Name + ";" + $numFiles.Count) >> $rep
    $allCount = $allCount + $numFiles.Count
}

("Âñåãî ôàéëîâ, ñîäåğæàùèõ ñîâïàäåíèÿ - " + $allCount) >> $rep