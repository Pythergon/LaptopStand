
// 35mm High
// 221mm Long
// 82mm Deep

// Constants
offsetHeight = 10;

// Main Bar Variables
mainBarOffsetX = 0;
mainBarOffsetY = 80;
mainBarOffsetZ = 35 + offsetHeight;
mainBarOffsetC = [mainBarOffsetX,mainBarOffsetY,mainBarOffsetZ];
mainBarX = 221;
mainBarY = 25;
mainBarZ = 10;

// Leg 1 Varibles
leg1X = 10;
leg1Y = mainBarY;
leg1Z = mainBarOffsetZ;
leg1OffsetX = mainBarOffsetX;
leg1OffsetY = mainBarOffsetY;
leg1OffsetZ = 0 + offsetHeight;
leg1OffsetC = [leg1OffsetX,leg1OffsetY,leg1OffsetZ];

// Leg 2 Varibles
leg2X = 10;
leg2Y = mainBarY;
leg2Z = mainBarOffsetZ;
leg2OffsetX = mainBarOffsetX + mainBarX - leg2X;
leg2OffsetY = mainBarOffsetY;
leg2OffsetZ = 0 + offsetHeight;
leg2OffsetC = [leg2OffsetX,leg2OffsetY,leg2OffsetZ];

// Foot 1 Varibles
foot1X = 20+leg1X;
foot1Y = 20+leg1Y;
foot1Z = 10;
foot1OffsetX = leg1OffsetX-10;
foot1OffsetY = leg1OffsetY-10;
foot1OffsetZ = 0;
foot1OffsetC = [foot1OffsetX,foot1OffsetY,foot1OffsetZ];

// Foot 2 Varibles
foot2X = 20+leg2X;
foot2Y = 20+leg2Y;
foot2Z = 10;
foot2OffsetX = leg2OffsetX-10;
foot2OffsetY = leg2OffsetY-10;
foot2OffsetZ = 0;
foot2OffsetC = [foot2OffsetX,foot2OffsetY,foot2OffsetZ];


module mainBar() {
    mainBarC = [mainBarX,mainBarY,mainBarZ];
    cube(mainBarC); 
}

module leg1() {
    leg1C = [leg1X,leg1Y,leg1Z];
    cube(leg1C);
}

module leg2() {
    leg2C = [leg2X,leg2Y,leg2Z];
    cube(leg2C);
}

module foot1() {
    foot1C = [foot1X,foot1Y,foot1Z];
    cube(foot1C);
}

module foot2() {
    foot2C = [foot2X,foot2Y,foot2Z];
    cube(foot2C);
}

translate(foot2OffsetC) foot2();
translate(foot1OffsetC) foot1();
translate(leg2OffsetC) leg2();
translate(leg1OffsetC) leg1();
translate(mainBarOffsetC) mainBar();
