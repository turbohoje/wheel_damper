$fn=50;

$mmInch=25.4;

$innerCirDim = 1.5 * $mmInch / 2;
$outerCirDim = $innerCirDim + 3;
$radius = 3.5;


rotate_extrude(){
    union(){
        translate( [$radius * $mmInch,0,0] ){
            difference(){
            circle($outerCirDim);
            circle($innerCirDim);
            }
        }
        translate([28,0])
            square([40,5]);
    }
}
