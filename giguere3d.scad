width = 10;
height = 10;
depth = 2;
pitch = width+depth;

module element(x=0, y=0, z=0, r=0, front="H", back="F") {
    rotate([0,0,r]) {
        translate([depth/2 + x*pitch, y*pitch - depth/2, z*pitch + depth/2]) {
            cube([width, depth, height]);
            rotate([90,0,0]) {
                translate([width/2,height/2,0]) {
                    text(front, 5, halign="center", valign="center");
                }
            }
            rotate([90,0,180]) {
                translate([-width/2, height/2, depth]) {
                    text(back, 5, halign="center", valign="center");
                }
            }
        }
    }
}

element(-1,0,0);
element(0,0,0);
element(1,0,0);

element(0,0,1);

element(0,0,0,90);

element(-1, -1, 0, 90);