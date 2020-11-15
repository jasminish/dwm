//Modify this file to change what commands output to your statusbar, and recompile using the make command.
#define PATH(name)                      "/home/jasmine/.config/suckless/dwm/dwmblocks/blocks/"name

static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	// {"Mem:", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	30,		0},
	{"", PATH("volume.sh"),                    10,    0},
	{"", PATH("battery.sh"),                   30,    0},
	{"", "date '+%a %b %d %I:%M%p'",	  			  5,		0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "  ";
static unsigned int delimLen = 5;
