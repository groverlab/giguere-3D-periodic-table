width = 10;
height = 10;
depth = 2;
pitch = 12;

module element(x=0, z=0, r=0) {
    rotate([0,0,r]) {
        translate([depth/2 + x*pitch, -depth/2, z*pitch + depth/2]) {
            cube([width, depth, height]);
        }
    }
}

element(-1,0);
element(0,0);
element(1,0);

element(0,1);

element(0,0,90);