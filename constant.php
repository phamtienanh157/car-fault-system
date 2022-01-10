<?php
function calSimilarityWith2Selection($currentValue, $caseValue){
    if($currentValue == $caseValue) return 1;
    return 0;
}

function calSimilarityWith3Selection($currentValue, $caseValue){
    if($currentValue == $caseValue) return 1;
    if(abs($currentValue - $caseValue) == 1) return 0.5;
    return 0;
}

function calSimilarityCarBranch($currentValue, $caseValue){
    if($currentValue == $caseValue) return 1;
    if(($currentValue <= 5 && $caseValue <= 5) || ($currentValue > 5 && $caseValue > 5)) return 0.5;
    return 0;
}
?>