<html>
 <head>
  <meta charset="utf-8">
  <title>Dodaj nowy obiekt</title>
 </head>
 <body>
  <h1>Dodawanie do bazy</h1>
  <form method="get" action="insert.php">
   <table border="0">
      <tr><td>ID_MARKI</td><td><select name="id_marki">
          
          
          
          <?php
include "polacz.php";
          
if ($sql =  $baza->prepare("SELECT id_marki FROM marka"))
{
        $sql->execute();
        $sql->bind_result($id_marki);
        while ($sql->fetch())
        {
                echo "<option>$id_marki</option>";
        }
        $sql->close();
}
else die( "Błąd w zapytaniu SQL! Sprawdź kod SQL w PhpMyAdmin: ". $baza->error );


?>
          
          
          
          
          
          </select></td></tr>
      <tr><td>NAZWA_MODELU</td><td><input name="nazwa_modelu"></td></tr>
      <tr><td>ROCZNIK</td><td><input name="rocznik"></td></tr>
      <tr><td colspan="2"><input type="submit" value="wstaw"></td></tr>
   </table>
  </form>
  <br />
  <br />
  <br />
  <br />
  1 - Opel<br />
  2 - BMW<br />
  3 - Mercedes<br />
 </body>
</html>