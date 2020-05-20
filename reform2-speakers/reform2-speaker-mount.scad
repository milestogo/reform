
translate([0,20,0])
union() {
    difference() {
        translate([-1,0,0]) cube([22,13.5,1]);
        translate([1.5,1.75,-0.5]) cube([15,10,2]);
    }

    translate([-5.5,0,0]) 
    union() {
        difference() {
            translate([0,0,-1]) cube([5,13.5,2]);
            translate([2.5,4.25,0.5]) cylinder(h = 4, r1 = 1.5, r2 = 1, 
                $fn = 20, center = true);
            translate([2.5,9.5,0.5]) cylinder(h = 4, r1 = 1.5, r2 = 1, 
                $fn = 20, center = true);
        }
    }
    
    translate([19,0,-1.5])
    cube([2,13.5,1.5]);
}
