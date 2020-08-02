$fn=100;

$mmInch=25.4;

$innerCirDim = 1.5 * $mmInch / 2;
$outerCirDim = $innerCirDim + 3;
$radius = 5.5;


difference(){
    rotate_extrude(){
        union(){
            translate( [$radius * $mmInch,-10,0] ){
                difference(){
                //circle($outerCirDim);
                //circle($innerCirDim);
                
                square([$outerCirDim*3, $outerCirDim],false);
                translate([1.5,1.5,0])
                square([$innerCirDim*3+3, $innerCirDim],false);
                }
            }
            translate([28,0])
                square([($radius*$mmInch)-$outerCirDim-5,1.5]);
        }
    }
    translate([-250, -250, -50]){
    cube([250,500,100]);
    }
    rotate([0,0,45+90])
    translate([-250, -250, -50]){
    cube([250,500,100]);
    }
}