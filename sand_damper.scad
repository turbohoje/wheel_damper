$fn=50;

$mmInch=25.4;

$innerCirDim = 1 * $mmInch / 2;
$outerCirDim = $innerCirDim + 3;

translate( [7.5*$mmInch,0,0] ){
    difference(){
    circle($outerCirDim);
    circle($innerCirDim);
    }
}

