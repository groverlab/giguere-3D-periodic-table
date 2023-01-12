// Paul Giguère. "The 'new look' for the periodic system." Chemistry in Canada 18 (12), 36–39 (1966)

width = 16;
height = 16;
depth = 10;
vspace = 2;
hspace = 2;
$fn = 8;
textheight = 0.5;
fontsize = 7;

module element(x=0, y=0, z=0, r=0, front="F", back="B") {
    rotate([0,0,r]) {
        translate([depth/2 + x*(width+hspace), y*(width+hspace) - depth/2, z*(height+vspace) + depth/2]) {
            cube([width, depth, height]);
            translate([-vspace/2, depth/4, -hspace/2]) {
                cube([width+vspace, depth-5, height+vspace]);
            }
            rotate([90,0,0]) {
                translate([width/2, height/2, 0]) {
                    linear_extrude(textheight) {
                        text(front, fontsize, halign="center", valign="center", font="Liberation Sans:style=Bold");
                    }
                }
            }
            rotate([90,0,180]) {
                translate([-width/2, height/2, depth]) {
                    linear_extrude(textheight) {
                        text(back, fontsize, halign="center", valign="center", font="Liberation Sans:style=Bold");
                    }
                }
            }
        }
    }
}

// S-block
element(-1, 0, 0, 0, "Ra", "Fr");
element(-1, 0, 1, 0, "Ba", "Cs");
element(-1, 0, 2, 0, "Sr", "Rb");
element(-1, 0, 3, 0, "Ca", "K");
element(-1, 0, 4, 0, "Mg", "Na");
element(-1, 0, 5, 0, "Be", "Li");
element(-1, 0, 6, 0, "He", "H");

// D-block
element(0, 0, 0, 0, "Lw", "Cn");
element(1, 0, 0, 0, "Rf", "Rg");
element(2, 0, 0, 0, "Db", "Ds");
element(3, 0, 0, 0, "Sg", "Mt");
element(4, 0, 0, 0, "Bh", "Hs");
element(0, 0, 1, 0, "Lu", "Hg");
element(1, 0, 1, 0, "Hf", "Au");
element(2, 0, 1, 0, "Ta", "Pt");
element(3, 0, 1, 0, "W", "Ir");
element(4, 0, 1, 0, "Re", "Os");
element(0, 0, 2, 0, "Y", "Cd");
element(1, 0, 2, 0, "Zr", "Ag");
element(2, 0, 2, 0, "Nb", "Pd");
element(3, 0, 2, 0, "Mo", "Rh");
element(4, 0, 2, 0, "Tc", "Ru");
element(0, 0, 3, 0, "Sc", "Zn");
element(1, 0, 3, 0, "Ti", "Cu");
element(2, 0, 3, 0, "V", "Ni");
element(3, 0, 3, 0, "Cr", "Co");
element(4, 0, 3, 0, "Mn", "Fe");

// P-block
element(0, 0, 0, 90, "Nh", "Og");
element(1, 0, 0, 90, "Fl", "Ts");
element(2, 0, 0, 90, "Mc", "Lv");
element(0, 0, 1, 90, "Tl", "Rn");
element(1, 0, 1, 90, "Pb", "At");
element(2, 0, 1, 90, "Bi", "Po");
element(0, 0, 2, 90, "In", "Xe");
element(1, 0, 2, 90, "Sn", "I");
element(2, 0, 2, 90, "Sb", "Te");
element(0, 0, 3, 90, "Ga", "Kr");
element(1, 0, 3, 90, "Ge", "Br");
element(2, 0, 3, 90, "As", "Se");
element(0, 0, 4, 90, "Al", "Ar");
element(1, 0, 4, 90, "Si", "Cl");
element(2, 0, 4, 90, "P", "S");
element(0, 0, 5, 90, "B", "Ne");
element(1, 0, 5, 90, "C", "F");
element(2, 0, 5, 90, "N", "O");

// F-block
element(-1, 0, 0, 90, "No", "Ac");
element(-2, 0, 0, 90, "Md", "Th");
element(-3, 0, 0, 90, "Fm", "Pr");
element(-4, 0, 0, 90, "Es", "U");
element(-5, 0, 0, 90, "Cf", "Np");
element(-6, 0, 0, 90, "Bk", "Pu");
element(-7, 0, 0, 90, "Cm", "Am");
element(-1, 0, 1, 90, "Yb", "La");
element(-2, 0, 1, 90, "Tm", "Ce");
element(-3, 0, 1, 90, "Er", "Pr");
element(-4, 0, 1, 90, "Ho", "Nd");
element(-5, 0, 1, 90, "Dy", "Pm");
element(-6, 0, 1, 90, "Tb", "Sm");
element(-7, 0, 1, 90, "Gd", "Eu");


