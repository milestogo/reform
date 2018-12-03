
screws_ay=19.5;
screws_by=196.7;
frame_width=290;
frame_depth=205;
frame_height=4;
screw_head_h=1.5;
border_gap=0;
border_slope=19;
border_thickness=3;

module screw_hole(x,y) {
  shh=screw_head_h*2;
  translate([x,y,shh+1]) cylinder(h=shh, r=6.4/2, center = true, $fn=40);
  translate([x,y,0]) cylinder(h=frame_height*2, r=3.4/2, center = true, $fn=20);
}

module border(border_h,length) {
  rotate([90,0,0]) linear_extrude(height = length, center = true, convexity = 10) polygon(points=[[0,0],[border_h,0],[border_h/2,border_h],[0,border_h]]);

}

difference() {
  cube([frame_width,frame_depth,frame_height]);
  // hinge cutouts
  translate([29,-0.2,-0.1]) cube([28,8.2,4.2]);
  translate([frame_width-29-28,-0.2,-0.1]) cube([28,8.2,4.2]);
  
  // screen cutouts
  translate([13,36,-0.1]) cube([261,150.5,4.2]);
  translate([3,29,-0.1]) cube([283,163,2.2]);
  
  // screws bottom
  screw_hole(8,19.9);
  screw_hole(144.9,19.9);
  screw_hole(281.9,19.9);
  
  // screws top
  screw_hole(8,screws_by);
  screw_hole(144.9,screws_by);
  screw_hole(281.9,screws_by);

  // cutout for strap
  translate([139.25,188,-0.1]) cube([11,18,1.1]);
  
  // cutout for magnet
  translate([51,14,1.4]) cylinder(h=4, r=11/2, center = true, $fn=20);
  
  // hinge cutout back
  translate([2, 0.8,-0.1]) cube([28,  16.2,3]);
  translate([14,0.8,-0.1]) cube([16.1,26.2,3]);
  
  translate([frame_width-28-2,   0.8,-0.1]) cube([28,  16.2,3]);
  translate([frame_width-16.1-14,0.8,-0.1]) cube([16.1,26.2,3]);
}

// border
difference() {
  translate([0,frame_depth/2+border_gap/2,frame_height]) border(border_thickness,frame_depth-border_gap);

  translate([0,border_gap+border_slope-0.1,4+border_thickness+0.1]) rotate([270,0,270]) linear_extrude(height=10,center=true,convexity=10) polygon(points=[[0,0],[border_slope,0],[border_slope,border_thickness]]);
}
difference() {
  translate([frame_width,frame_depth/2+border_gap/2,frame_height]) rotate([0,0,180]) border(border_thickness,frame_depth-border_gap);
  
  translate([frame_width-2.5,border_gap+border_slope-0.1,4+border_thickness+0.1]) rotate([270,0,270]) linear_extrude(height=10,center=true,convexity=10) polygon(points=[[0,0],[border_slope,0],[border_slope,border_thickness]]);
}


translate([frame_width/2,frame_depth,frame_height]) rotate([0,0,270]) border(border_thickness,frame_width);
