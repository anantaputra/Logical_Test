<?php 
 echo "<form method='post'>";
 echo "Masukkan nilai ";
 echo "<input type='text' name='angka'> <br>";
 echo "Akan dibagi dengan ";
 echo "<input type='text' name='pembagi'> <br>";
 echo "<button type='submit' name='kirim'>Kirim</button>";
 echo "</form>";

if(isset($_POST['kirim'])){
    $angka = $_POST['angka'];
    $bagi = $_POST['pembagi'];

    $x = 1;
    while($x * $bagi < $_POST['angka']){
        $angka = $angka - $x * $bagi;
        $x++;
    }

    echo "hasil dari ".$_POST['angka']." dibagi ".$bagi." = ".$x;

}