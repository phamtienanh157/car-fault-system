<?php
include("./config.php");
include("./constant.php");

define('engine_status', '1');
define('sudden_shutdown', '2');
define('warning_light', '3');
define('gasoline', '4');
define('battery', '5');
define('shakes', '6');
define('noise', '7');
define('smell', '8');
define('oil', '9');
define('headlight', '10');
define('company', '11');
define('tire', '12');
define('brake', '13');


if (isset($_POST['submit'])) {

  // get answers
  $answers = array();

  foreach ($_POST as $key => $value) {
    array_push($answers, $value);
  }

  // sum weights
  $query = "SELECT * from props";
  $result_get_props = mysqli_query($db, $query);
  $weights = array();
  $sum_weights = 0;

  if (mysqli_num_rows($result_get_props) > 0) {
    while ($row = mysqli_fetch_assoc($result_get_props)) {
      $sum_weights += $row['weight'];
      array_push($weights, $row['weight']);
    }
  }

  // get cases from db
  $query = "SELECT * from cases";
  $result = mysqli_query($db, $query);

  $rows = array();
  while($row = mysqli_fetch_array($result, MYSQLI_NUM))
      $rows[] = $row;

  // handle
  $S = array();

  foreach ($rows as $i => $row) {
    $temp = 0;
    foreach ($row as $j => $value) {
      if($j > 0 && $j <= 13){
        if($j == warning_light || $j == shakes || $j == noise || $j == smell || $j == oil || $j == brake){
          $temp += $weights[$j-1] * calSimilarityWith2Selection($answers[$j-1], $value);
        }
        else if($j == company){
          $temp += $weights[$j-1] * calSimilarityCarBranch($answers[$j-1], $value);
        }
        else{
          $temp += $weights[$j-1] * calSimilarityWith3Selection($answers[$j-1], $value); 
        } 
      }
    }
    array_push($S, $temp/$sum_weights);
  }

  $key = array_search(max($S), $S);

  foreach ($rows as $i => $row) {
    if($i == $key){
      echo "ket qua: $row[14], bien phap: $row[15]";
    }
  }
}
?>