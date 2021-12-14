seconds += time_inc;
minutes = seconds/60;
hours = minutes/60;

darkness = hours/24;

//cycle check
if(hours>= 24) {
	seconds = 0;
	day += 1;
}