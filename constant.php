<?php
function calSimilarityWith2Selection($currentValue, $caseValue){
    if((int)$currentValue == (int)$caseValue) return 1;
    return 0;
}

function calSimilarityWithMore3Selection($currentValue, $caseValue){
    if((int)$currentValue == (int)$caseValue) return 1;
    if(abs((int)$currentValue - (int)$caseValue) == 1) return 0.5;
    return 0;
}

function calSimilarityCarBranch($currentValue, $caseValue){
    if((int)$currentValue == (int)$caseValue) return 1;
    if(((int)$currentValue <= 5 && (int)$caseValue <= 5) || ((int)$currentValue > 5 && (int)$caseValue > 5)) return 0.5;
    return 0;
}
?>