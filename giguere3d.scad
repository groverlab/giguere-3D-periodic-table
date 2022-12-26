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

element(-1,0,0, 0, "Ra", "Fr");
element(0,0,0, 0, "Ac", "Hg");
element(1,0,0, 0);

element(0,0,1, 0);

element(0,0,0,90);

element(-1, -1, 0, 90, "Lr", "Th");
element(-2, -1, 0, 90, "No", "Pa");
element(-3, -1, 0, 90, "Md", "U");
element(-4, -1, 0, 90, "Fm", "Np");
element(-5, -1, 0, 90, "Es", "Pu");
element(-6, -1, 0, 90, "Cf", "Am");
element(-7, -1, 0, 90, "Bk", "Cm");