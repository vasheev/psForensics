$keyword = Get-Content "C:\e\s4\keywords.txt"
$keyword
foreach($fold in $keyword){
    $folder = "C:\e\s4\�������\�������� �����\" + $fold
    New-Item -Path $folder -ItemType 'Directory'
}
