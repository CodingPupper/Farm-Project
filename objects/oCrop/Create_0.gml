frameW = 19;
frameH = 19;

cropType = 0;	//which crop?
daysOld = 0;	//how long has it been there?
growStage = 0;	//which frame is it on?
growStgDur = 3;	//how long does it take to grow to the next stage?
maxGrowthStg = (sprite_get_width(scrops)/frameW) - 1;

fullyGrown = false;	

xx = x-(frameW/2)+2;
yy = y-frameH+6;