cd C:\Users\Edward\Desktop\DCF
del .\Result\CA\CA_Node.txt
#-----------------------------------------------------                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           7--------------------------------
cd CA
del SimMain.o
del SimNode.o
del CA.exe
make
$node_num_path  = 1..30
$Pd             = 1
$Per            = 0
foreach($node in $node_num_path)
{
    $save_path = "../Result/CA/" + "CA_Node" + ".txt"
    ./CA.exe $node $Pd $Per >> $save_path
}
