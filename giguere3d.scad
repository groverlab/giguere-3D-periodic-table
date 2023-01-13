// A 3D periodic table of the chemical elements, based on Paul Giguère's work [1] and implemented
// in OpenSCAD by William Grover, wgrover@engr.ucr.edu, https://groverlab.org
//
// [1] Paul Giguère. "The 'new look' for the periodic system." Chemistry in Canada 18 (12), 36–39 (1966)

width = 16;
height = 16;
depth = 10;
vspace = 2;
hspace = 2;
$fn = 8;
textheight = 1.5;
fontsize = 7;
core = 3;
coreheight = (height+vspace)*7;

module element(x=0, z=0, r=0, front="F", back="B") {
    rotate([0,0,r]) {
        translate([x*(width+hspace) + width/2+hspace/2 + sign(x+0.001)*(core+2.5), 0, z*(height+vspace)]) {
            cube([width, depth, height], center=true);
            translate([0, 0, 0]) {
                cube([width+vspace, depth-4, height+vspace], center=true);
                }
                rotate([90,0,0]) {
                    translate([0, 0, depth/2]) {
                        linear_extrude(textheight) {
                            text(front, fontsize, halign="center", valign="center", font="Liberation Sans:style=Bold");
                            }
                        }
                    }
                    rotate([90,0,180]) {
                        translate([0, 0, depth/2]) {
                            linear_extrude(textheight) {
                                text(back, fontsize, halign="center", valign="center", font="Liberation Sans:style=Bold");
                            }
                        }
                    }
                }
            }
        }
    

// s-block
        
element(-1, 0, 0, "Ra", "Fr");
element(-1, 1, 0, "Ba", "Cs");
element(-1, 2, 0, "Sr", "Rb");
element(-1, 3, 0, "Ca", "K");
element(-1, 4, 0, "Mg", "Na");
element(-1, 5, 0, "Be", "Li");
element(-1, 6, 0, "He", "H");

// d-block
        
element(0, 0, 0, "Lw", "Cn");
element(1, 0, 0, "Rf", "Rg");
element(2, 0, 0, "Db", "Ds");
element(3, 0, 0, "Sg", "Mt");
element(4, 0, 0, "Bh", "Hs");
element(0, 1, 0, "Lu", "Hg");
element(1, 1, 0, "Hf", "Au");
element(2, 1, 0, "Ta", "Pt");
element(3, 1, 0, "W", "Ir");
element(4, 1, 0, "Re", "Os");
element(0, 2, 0, "Y", "Cd");
element(1, 2, 0, "Zr", "Ag");
element(2, 2, 0, "Nb", "Pd");
element(3, 2, 0, "Mo", "Rh");
element(4, 2, 0, "Tc", "Ru");
element(0, 3, 0, "Sc", "Zn");
element(1, 3, 0, "Ti", "Cu");
element(2, 3, 0, "V", "Ni");
element(3, 3, 0, "Cr", "Co");
element(4, 3, 0, "Mn", "Fe");

// p-block

element(0, 0, 90, "Nh", "Og");
element(1, 0, 90, "Fl", "Ts");
element(2, 0, 90, "Mc", "Lv");
element(0, 1, 90, "Tl", "Rn");
element(1, 1, 90, "Pb", "At");
element(2, 1, 90, "Bi", "Po");
element(0, 2, 90, "In", "Xe");
element(1, 2, 90, "Sn", "I");
element(2, 2, 90, "Sb", "Te");
element(0, 3, 90, "Ga", "Kr");
element(1, 3, 90, "Ge", "Br");
element(2, 3, 90, "As", "Se");
element(0, 4, 90, "Al", "Ar");
element(1, 4, 90, "Si", "Cl");
element(2, 4, 90, "P", "S");
element(0, 5, 90, "B", "Ne");
element(1, 5, 90, "C", "F");
element(2, 5, 90, "N", "O");

// f-block

element(-1, 0, 90, "No", "Ac");
element(-2, 0, 90, "Md", "Th");
element(-3, 0, 90, "Fm", "Pr");
element(-4, 0, 90, "Es", "U");
element(-5, 0, 90, "Cf", "Np");
element(-6, 0, 90, "Bk", "Pu");
element(-7, 0, 90, "Cm", "Am");
element(-1, 1, 90, "Yb", "La");
element(-2, 1, 90, "Tm", "Ce");
element(-3, 1, 90, "Er", "Pr");
element(-4, 1, 90, "Ho", "Nd");
element(-5, 1, 90, "Dy", "Pm");
element(-6, 1, 90, "Tb", "Sm");
element(-7, 1, 90, "Gd", "Eu");

// Core

translate([0,0,coreheight/2-(height+vspace)/2]) {
    cube([core*2, core*2, coreheight], center = true);
}

translate([-2.5,0,coreheight/2-(height+vspace)/2]) {
    cube([core*2+2.5, core*2, coreheight], center = true);
}

c2 = (height+vspace)*4;
translate([+2.5,0,c2/2-(height+vspace)/2]) {
    cube([core*2+2.5, core*2, c2], center = true);
}

c3 = (height+vspace)*6;
translate([0,+2.5,c3/2-(height+vspace)/2]) {
    cube([core*2, core*2+2.5, c3], center = true);
}

c4 = (height+vspace)*2;
translate([0,-2.5,c4/2-(height+vspace)/2]) {
    cube([core*2, core*2+2.5, c4], center = true);
}

// Orbital labels

translate([(width+hspace)*-1.3, 0, (height+vspace)*6]) {
    rotate([90, 0, -90]) {
        linear_extrude(1.5) {
            text("s", 10, halign="center", valign="center", font="Liberation Sans:style=Bold");
        }
    }
}

translate([0,(width+hspace)*3.3, (height+vspace)*5]) {
    rotate([90,0,180]) {
        linear_extrude(1.5) {
            text("p", 10, halign="center", valign="center", font="Liberation Sans:style=Bold");
        }
    }
}

translate([(width+hspace)*5.3, 0, (height+vspace)*3]) {
    rotate([90, 0, 90]) {
        linear_extrude(1.5) {
            text("d", 10, halign="center", valign="center", font="Liberation Sans:style=Bold");
        }
    }
}

translate([0,(width+hspace)*-7.3, (height+vspace)*1]) {
    rotate([90,0,0]) {
        linear_extrude(1.5) {
            text("f", 10, halign="center", valign="center", font="Liberation Sans:style=Bold");
        }
    }
}