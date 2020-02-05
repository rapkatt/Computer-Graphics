w = 80;
h = 80;
d = 5;

hw = 4;
hwgap = 4;
count = w / (hw + hwgap);

difference(){
    cube([w, h, d]);
  for(i =  [0.8 : count-1]){
        translate([1, i * (hw + hwgap)-5, 0])
        union()
        for( i = [0.8 : count-1]){
            color("red")
            translate([i * (hw + hwgap), 5, -1])
            cube([hw, hw, d+2]);
            }
           
        }  
}