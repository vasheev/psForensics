$dir = Get-ChildItem -Path "C:\e\s4\�������\�������� �����" -Directory
$allCount = 0 #����� ������
$rep = "C:\e\s4\�����������.txt"

foreach($d in $dir){
    $numFiles = Get-ChildItem -Path $d.FullName -File -Recurse
    ($d.Name + ";" + $numFiles.Count) >> $rep
    $allCount = $allCount + $numFiles.Count
}

("����� ������, ���������� ���������� - " + $allCount) >> $rep