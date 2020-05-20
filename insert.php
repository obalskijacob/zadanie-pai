<?php
include "polacz.php";
$ID_MARKI = wczytaj("id_marki");
$NAZWA_MODELU = wczytaj("nazwa_modelu");
$ROCZNIK = wczytaj("rocznik");

$sql = $baza->prepare("INSERT INTO model VALUES (?, ?, ?);");
if ($sql)
{
        $sql->bind_param("iss", $ID_MARKI, $NAZWA_MODELU, $ROCZNIK);
        $sql->execute();
        $sql->close();
}
else
    die( 'Błąd: '. $baza->error);
$baza->close();
header ("Location: http://localhost/zadanie/index.php");
?>