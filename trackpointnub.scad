$fn=60;
bottom_r= 4.5;
socket_area= 4.5;
//1.5 mm high nub
nub_r= 9.5/2;
nub_h_cut= 9.5-1.5/2;
grip_h= .25;
difference(){
translate([2,2,0])
cube([5.5,5.5,5]);
translate([nub_r-socket_area/2,nub_r-socket_area/2,0])
cube([4.5,4.5,5]);
        translate([5.5/2+.5,1.5,0])
rotate([0,45,0])
cube([2,7,2]);

translate([1.5,2+4.5/2+.5,-1.41])
rotate([45,0,0])
cube([7,2,2]);
}
difference(){
translate([nub_r, nub_r,nub_r])
sphere(9.5/2);
cube([bottom_r*2+1,bottom_r*2+1,5]);
translate([0,0,5+1.5])
cube(nub_r*2);
translate([nub_r,nub_r,5+1.5-.25])
cylinder(.25,bottom_r*.85,bottom_r*.85);
}
//grip at .25mm height,ensure that the grip is within the height of the nub
