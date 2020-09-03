difference() {
    union() {
        hull() {
            translate([80, 0, 34.2]) rotate([0, 45, 0]) cylinder(d=31.9, h=0.001, $fn=96);
            difference() {
                translate([80-26, 0, 8.2]) rotate([0, 45, 0]) cylinder(d=31.9, h=20, $fn=96);
                translate([0, -100, -20]) cube([200, 200, 20]);
            }
            difference() {
                translate([27, 0, 22.47/2]) cube([1, 72.5, 22.47], center=true);
                for(i=[-1, 1]) {
                    translate([35, i*36.25, 22.47]) rotate([45, 0, 0]) cube([20, 5.62, 5.62], center=true);
                }
            }
        }
        difference() {
            union() {
                cylinder(d=91.5, h=18.5, $fn=128);
                translate([0, 0, 6]) cylinder(d=91.5+1, h=2, $fn=128);
                translate([0, 0, 18.5]) cylinder(d1=91.5, d2=91.5-8, h=22.47-18.5, $fn=128);
            }
            translate([0, 0, -1]) cylinder(d=91.5-6, h=18.001, $fn=128);
            translate([0, 0, 17]) cylinder(d1=91.5-6, d2=91.5-6-8, h=3, $fn=128);
            cylinder(d=40, h=50, $fn=64);
        }
    }
    difference() {
        hull() {
            translate([80.1, 0, 34.21]) rotate([0, 45, 0]) cylinder(d=31.9-5, h=0.001, $fn=96);
            translate([80-26, 0, 8.2]) rotate([0, 45, 0]) cylinder(d=31.9-5, h=0.001, $fn=96);
            difference() {
                translate([26.2, 0, 20/2-5]) cube([0.001, 67.5, 20+10], center=true);
                for(i=[-1, 1]) {
                    translate([35, i*36.25, 22.47]) rotate([45, 0, 0]) cube([20, 11, 11], center=true);
                }
            }
        }
        translate([75, 0, -2+6+5.3]) cube([40, 56, 10], center=true);
    }
    difference() {
        translate([0, 0, -1]) cylinder(d=200, h=7, $fn=128);
        translate([0, 0, -2]) cylinder(d=91.5, h=9, $fn=128);
    }
    difference() {
        translate([0, 0, -1]) cylinder(d=200, h=7+5.5, $fn=128);
        translate([0, 0, -2]) cylinder(d=91.5+1+7.6*2, h=9+5.5, $fn=128);
    }
}
translate([80, 0, 34.2]) rotate([0, 45, 0]) difference() {
    cylinder(d=31.9, h=21, $fn=96);
    translate([0, 0, -1]) cylinder(d=31.9-5, h=23, $fn=96);
}

module stuetze_innen() {
    difference() {
        union() {
            cylinder(d=91.5-6-8, h=19.75, $fn=128);
            difference() {
                hull() {
                    translate([79.8, 0, 34.18]) rotate([0, 45, 0]) cylinder(d=31.9-5, h=0.001, $fn=96);
                    translate([80-26, 0, 8.2]) rotate([0, 45, 0]) cylinder(d=31.9-5, h=0.001, $fn=96);
                    difference() {
                        translate([26.2, 0, 19.75/2]) cube([0.001, 66.4, 19.75], center=true);
                        for(i=[-1, 1]) {
                            translate([35, i*36, 22]) rotate([i*60, 0, 0]) cube([20, 11.3, 11.3], center=true);
                        }
                    }
                }
                translate([80-0.3-10, 0, 37]) cube([50, 56, 100], center=true);
                translate([0, -100, -30]) cube([200, 200, 30]);
            }
        }
        translate([0, 0, -1]) cylinder(d=40, h=50, $fn=64);
    }
}
module stuetze_aussen() {
    difference() {
        union() {
            cylinder(d=91.5+1, h=5.75, $fn=128);
            translate([57.5, 0, 1.725-0.25]) cube([58, 73, 20-0.25], center=true);
        }
        translate([0, 0, -1]) cylinder(d=91.5+0.6, h=18, $fn=128);
        translate([0, 0, 5.75]) cylinder(d=91.5+1+7.6*2+0.5, h=18, $fn=128);
        for(i=[-1, 1]) {
            translate([70, i*41, 19]) rotate([0, 0, i*-22]) cube([60, 40, 40], center=true);
        }
        translate([57.5, 0, -10]) cube([58.2, 73.2, 20], center=true);
    }
}
color("grey") stuetze_innen();
color("grey") stuetze_aussen();