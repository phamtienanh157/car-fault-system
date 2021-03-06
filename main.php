<?php
include("./config.php");
include("./constant.php");
?>
<head>
  <title>Car fault diagnosis system</title>
  <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
  <link rel="stylesheet" href="style.css" />
</head>
<body>
  
<?php
if (isset($_POST['submit'])) {

  // get answers
  $answers = array();

  foreach ($_POST as $key => $value) {
    array_push($answers, $value);
  }
  // props
  $props = array();

  // sum weights & array weights
  $query = "SELECT * from props";
  $result_get_props = mysqli_query($db, $query);
  $weights = array();
  $sum_weights = 0;

  if (mysqli_num_rows($result_get_props) > 0) {
    while ($row = mysqli_fetch_assoc($result_get_props)) {
      $sum_weights += $row['weight'];
      array_push($weights, $row['weight']);
      $props[$row['name']] = (int)$row['id'];
    }
  }

  // get cases from db
  $query = "SELECT * from cases";
  $result = mysqli_query($db, $query);

  // convert to array
  $rows = array();
  while($row = mysqli_fetch_array($result))
      $rows[] = $row;

  // handle S
  $S = array();

  foreach ($rows as $i => $row) {
    $temp = 0;
    foreach ($row as $j => $value) {
      if($j > 0 && $j <= 13){
        if($j == $props['warning_light'] || $j == $props['shakes'] || $j == $props['noise'] || $j == $props['smell'] || $j == $props['oil'] || $j == $props['brake']){
          $temp += $weights[$j-1] * calSimilarityWith2Selection($answers[$j-1], $value);
        }
        else if($j == $props['company']){ 
          $temp += $weights[$j-1] * calSimilarityCarBranch($answers[$j-1], $value);
        }
        else{
          $temp += $weights[$j-1] * calSimilarityWithMore3Selection($answers[$j-1], $value); 
        } 
      }
    }
    array_push($S, $temp/$sum_weights);
  }

  // find key of result
  $key = array_search(max($S), $S);

  // show result
  foreach ($rows as $i => $row) {
    if($i == $key){
        echo '
          <div class="m-2">
            <h2 class="text-center mb-4">K???t qu??? chu???n ??o??n l???i xe ?? t??</h2>
            <h5>H??? th???ng chu???n ??o??n: ' .$row['output']. '</h5>
            <h5>Nguy??n nh??n:</h5>
            <h5>' .$row['reason']. '</h5>
            <h5>Bi???n ph??p:</h5>
            <h5>' .$row['solution']. '</h5>
          </div>
        ';
    }
  }
}
?>
<a class="btn btn-primary mt-4 ms-2" href="index.php" role="button">Ki???m tra l???i</a>
</body>
</html>